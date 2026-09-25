#!/usr/bin/env python3
"""Static protocol extractor for the sgscq (三国杀传奇) client reconstruction.

Every emitted field carries the file:line that proves it, so the generated
documents never need to invent anything: a claim without a source line simply
does not exist in the inventory.

Reads ReconstructedJS/src_jsc and emits ServerProject/docs/protocol-inventory.json
with, per action:

  * url_keys / path            <- Cfg/Url.js
  * net_functions              <- Tools/Net.js wrapper names + forced params
  * call_sites                 <- every call site with its enclosing function
  * request_fields(+evidence)  <- object literals and traced <param>.<f> writes
  * response_fields(+evidence) <- dotted paths read off the response variable
  * model_hops                 <- models the response root is handed to
  * error_codes                <- error_code literals compared at call sites
  * cmn descriptors + model field tables
"""
import json, os, re
from collections import OrderedDict, defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SRC = os.path.join(ROOT, "ReconstructedJS", "src_jsc")
OUT_DIR = os.path.join(ROOT, "ServerProject", "docs")
DOCS_REL = "ReconstructedJS/src_jsc"


def read(path):
    with open(path, "r", encoding="utf-8", errors="replace") as fh:
        return fh.read()


def walk_js(base):
    for dirpath, dirnames, filenames in os.walk(base):
        dirnames[:] = [d for d in dirnames if d != "__pycache__"]
        for name in sorted(filenames):
            if name.endswith(".js"):
                yield os.path.join(dirpath, name)


DEF_PATTERNS = [
    re.compile(r'^\(xs\.[A-Za-z0-9_.]*?([A-Za-z0-9_]+)\s*=\s*function\s*\(', re.M),
    re.compile(r'^\s{4}([A-Za-z0-9_]+)\s*:\s*function\s*\(', re.M),
    re.compile(r'^\(xs\.([A-Za-z0-9_.]+)\s*=\s*\{', re.M),
]
IDENT_RE = re.compile(r'^[A-Za-z_][A-Za-z0-9_]*$')
OBJ_KEY_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)\s*:')
CHAIN_RE = re.compile(r'\b([A-Za-z_][A-Za-z0-9_]*)((?:\s*\.\s*[A-Za-z_][A-Za-z0-9_]*)+)')


def lines_of(src, pos):
    return src.count("\n", 0, pos) + 1


# --------------------------------------------------------------------------
# 1. action registry
# --------------------------------------------------------------------------
def parse_url_registry():
    src = read(os.path.join(SRC, "Cfg", "Url.js"))
    keys = OrderedDict()
    for m in re.finditer(r'^\s{4}([A-Za-z_][A-Za-z0-9_]*)\s*:\s*"([^"]*)"', src, re.M):
        value = m.group(2)
        if "do=" not in value:
            continue
        action = value.split("do=", 1)[1].split("&", 1)[0]
        keys[m.group(1)] = {"url_key": m.group(1), "path": value, "action": action,
                            "evidence": "%s/Cfg/Url.js:%d" % (DOCS_REL, lines_of(src, m.start()))}
    hosts = {}
    for m in re.finditer(r'(NormalServer|PublicTip|Clock|WanPu|GeTui)\s*:\s*\{\s*domain:\s*"([^"]+)"', src):
        hosts.setdefault(m.group(1), []).append(m.group(2))
    return keys, hosts


# --------------------------------------------------------------------------
# 2. xs.Tools.Net.<fn> wrappers
# --------------------------------------------------------------------------
FN_RE = re.compile(r'^\(xs\.Tools\.Net\.([A-Za-z0-9_]+)\s*=\s*function\s*\(([^)]*)\)\s*\{', re.M)
ASSIGN_PARAM_RE = re.compile(r'^\s*\(?(_?param|param)\.([A-Za-z0-9_]+)\s*=\s*(.+?)\)?;\s*$', re.M)


def parse_net_functions():
    path = os.path.join(SRC, "Tools", "Net.js")
    src = read(path)
    starts = [(m.start(), m.group(1), m.group(2)) for m in FN_RE.finditer(src)]
    out = OrderedDict()
    for idx, (pos, name, args) in enumerate(starts):
        end = starts[idx + 1][0] if idx + 1 < len(starts) else len(src)
        body = src[pos:end]
        url_hits = re.findall(r'xs\.Cfg\.Url\.([A-Za-z0-9_]+)', body)
        forced = OrderedDict()
        for m in ASSIGN_PARAM_RE.finditer(body):
            field, value = m.group(2), m.group(3).strip()
            if re.match(r'^(true|false|null|\d+|"[^"]*")$', value):
                forced[field] = {"value": value, "source": "wrapper-literal"}
            elif value.startswith("param.") or field == "server_id":
                forced[field] = {"value": value, "source": "wrapper-injected"}
        out[name] = {
            "name": name, "line": lines_of(src, pos),
            "evidence": "%s/Tools/Net.js:%d" % (DOCS_REL, lines_of(src, pos)),
            "params": [a.strip() for a in args.split(",") if a.strip()],
            "url_keys": list(dict.fromkeys(url_hits)),
            "forced_params": forced,
        }
    return out


# --------------------------------------------------------------------------
# 3. call sites
# --------------------------------------------------------------------------
CALL_RE = re.compile(r'(?:xs\.)?Tools\.Net\.([A-Za-z0-9_]+)\s*\(')
FILE_CACHE = {}
FIELD_ASSIGN_RE = re.compile(r'^\s*\(?\s*([A-Za-z_][A-Za-z0-9_]*)\s*\.\s*([A-Za-z_][A-Za-z0-9_]*)\s*=', re.M)
OBJ_ASSIGN_RE = re.compile(r'^\s*\(?\s*(?:var\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*=\s*\{', re.M)


def function_spans(src):
    """Exact (start, end) byte ranges of every reconstructed function body.

    The flat DEF_PATTERNS list conflates siblings, so a call nested inside an
    inline callback looks like it lives only in that callback. Brace matching
    recovers the real lexical nesting: a request object built in an outer
    method and used from a callback inside it must still be traced.
    """
    spans = []
    for pat in DEF_PATTERNS:
        for m in pat.finditer(src):
            brace = src.find('{', m.end() - 1)
            if brace < 0:
                continue
            end = match_brace(src, brace)
            if end > brace:
                spans.append((m.start(), end))
    spans.sort()
    deduped = []
    for s in spans:
        if not deduped or s != deduped[-1]:
            deduped.append(s)
    return deduped


def match_brace(src, open_brace):
    depth, i, in_str = 0, open_brace, None
    n = len(src)
    while i < n:
        ch = src[i]
        if in_str:
            if ch == '\\':
                i += 2
                continue
            if ch == in_str:
                in_str = None
        elif ch in "\"'":
            in_str = ch
        elif ch == '/' and i + 1 < n and src[i + 1] == '/':
            j = src.find(chr(10), i)
            i = n if j < 0 else j
            continue
        elif ch == '{':
            depth += 1
        elif ch == '}':
            depth -= 1
            if depth == 0:
                return i
        i += 1
    return -1


def containing_spans(src, pos, spans=None):
    """Function bodies containing pos, innermost first."""
    spans = spans if spans is not None else function_spans(src)
    out = [s for s in spans if s[0] <= pos <= s[1]]
    out.sort(key=lambda s: s[0], reverse=True)
    return out


def enclosing_function(src, pos):
    best = None
    for pat in DEF_PATTERNS:
        for m in pat.finditer(src):
            if m.start() < pos and (best is None or m.start() > best[0]):
                best = (m.start(), m.group(1))
    return best[1] if best else "<module>"


def enclosing_span(src, pos):
    starts = sorted({m.start() for pat in DEF_PATTERNS for m in pat.finditer(src)})
    begin = 0
    for s in starts:
        if s < pos:
            begin = s
        else:
            break
    end = len(src)
    for s in starts:
        if s > pos:
            end = s
            break
    return begin, end


def balanced_args(src, open_paren):
    depth, i, start, in_str = 0, open_paren, open_paren + 1, None
    while i < len(src):
        ch = src[i]
        if in_str:
            if ch == "\\":
                i += 2
                continue
            if ch == in_str:
                in_str = None
        elif ch in "\"'":
            in_str = ch
        elif ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                return src[start:i], i
        i += 1
    return src[start:], len(src)


def split_top_level(text):
    parts, depth, cur, in_str = [], 0, [], None
    for ch in text:
        if in_str:
            cur.append(ch)
            if ch == in_str:
                in_str = None
            continue
        if ch in "\"'":
            in_str = ch
            cur.append(ch)
            continue
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
        if ch == "," and depth == 0:
            parts.append("".join(cur).strip())
            cur = []
            continue
        cur.append(ch)
    if cur:
        parts.append("".join(cur).strip())
    return parts


def literal_keys(expr):
    if not expr:
        return []
    expr = expr.strip()
    if expr.startswith("{"):
        inner = expr[1:-1] if expr.endswith("}") else expr[1:]
        return list(dict.fromkeys(OBJ_KEY_RE.findall(inner)))
    return []


CLONE_RE = re.compile(r'^\s*(?:xs\.)?Utils\.clone\s*\(\s*([A-Za-z_][A-Za-z0-9_]*)\s*\)\s*$')


def unwrap_expr(expr):
    """Strip transparent wrappers (xs.Utils.clone(x)) from a request argument."""
    if not expr:
        return expr
    e = expr.strip()
    for _ in range(3):
        m = CLONE_RE.match(e)
        if not m:
            break
        e = m.group(1)
    return e


def trace_param(src, call_pos, ident, src_rel, spans=None):
    """Fields written into a request object, searched innermost scope first.

    Stops at the first enclosing function that actually builds the identifier,
    so a sibling method assigning to its own same-named local cannot leak in.
    """
    out = OrderedDict()
    if not IDENT_RE.match(ident or ""):
        return out
    for begin, end in containing_spans(src, call_pos, spans):
        body = src[begin:call_pos]
        found = OrderedDict()
        for m in OBJ_ASSIGN_RE.finditer(body):
            if m.group(1) != ident:
                continue
            inner, _ = balanced_args(src, begin + m.end() - 1)
            for k in OBJ_KEY_RE.findall(inner):
                found.setdefault(k, "%s:%d" % (src_rel, lines_of(src, begin + m.start())))
        for m in FIELD_ASSIGN_RE.finditer(body):
            if m.group(1) != ident:
                continue
            found.setdefault(m.group(2), "%s:%d" % (src_rel, lines_of(src, begin + m.start())))
        if found:
            return found
    return out


CALLBACK_PARAM_NAMES = ("callback", "callbackfunc", "func", "funcnormal", "readyfunc",
                       "cb", "funcsuccess", "successfunc", "funcnormal")
ERR_PARAM_NAMES = ("errfunc", "errcallback", "funcerr", "errback", "errbackfunc",
                   "failfunc", "funcfail", "funcerr")
TARGET_PARAM_NAMES = ("target", "obj", "self")


def classify_args(fn, args):
    """Locate the request / callback / error / target slots from the signature.

    Wrappers are not uniform: requestLogin(param, callback, errCallBack, target)
    has the callback second, requestPushDataInfo(callback, target) has no request
    at all, and requestDecisiveBattleMainInfor(param, local, callback, target)
    puts it third. Reading the declared parameter names is the only reliable way.
    """
    declared = [p.split("=")[0].strip().lower() for p in fn.get("params", [])]
    req_i = cb_i = err_i = tgt_i = None
    if declared and declared[0] not in CALLBACK_PARAM_NAMES and declared[0] not in ERR_PARAM_NAMES:
        req_i = 0
    for i, name in enumerate(declared):
        if name in CALLBACK_PARAM_NAMES and cb_i is None:
            cb_i = i
        elif name in ERR_PARAM_NAMES and err_i is None:
            err_i = i
        elif name in TARGET_PARAM_NAMES and tgt_i is None:
            tgt_i = i
    # An empty signature means the wrapper takes nothing: no request, no callback.
    # Assuming the generic (param, callback, target) layout here would invent both.

    def pick(idx, fallback):
        if idx is not None and idx < len(args):
            return args[idx]
        return fallback

    request = pick(req_i, None) if req_i is not None else None
    callback = pick(cb_i, None)
    err = pick(err_i, None)
    return request, callback, err, req_i, cb_i, err_i


def classify_request_arg(fn, args):
    """Which call argument is the request object, and what kind of thing it is.

    Warpapers declare their own signature, e.g. requestPushDataInfo(callback,
    target) has no request object at all, while requestLogin(param, callback,
    errCallBack, target) does. Reading the declared names avoids mistaking a
    callback literal for a request payload.
    """
    if not args:
        return None, "none"
    declared = [p.split("=")[0].strip() for p in fn.get("params", [])]
    if not declared:
        return None, "no-request-argument"
    first = declared[0]
    if first.lower() in CALLBACK_PARAM_NAMES:
        return None, "no-request-argument"
    expr = args[0]
    if not expr:
        return None, "empty"
    e = expr.strip()
    if e in ("null", "undefined", "''", '""'):
        return None, "null-literal"
    if e == "{}":
        return None, "empty-object"
    if e.startswith("function"):
        return None, "callback-literal"
    return expr, "request-object"


def enclosing_param_names(src, pos, spans):
    """Declared parameter names of the innermost function containing pos."""
    for begin, end in containing_spans(src, pos, spans):
        m = re.search(r'function\s*\(([^)]*)\)', src[begin:begin + 400])
        if m:
            return [p.strip() for p in m.group(1).split(",") if p.strip()], begin
    return [], -1


def trace_through_caller(src, rel, call_pos, ident, spans):
    """Resolve a pass-through wrapper: this.f(param) called as this.f(builtParam).

    Some request helpers only forward their own parameter, e.g.
    WorshipScene.requestWorshipGeneral(param). The payload is built by the
    callers of that helper, so follow one level out.
    """
    params, begin = enclosing_param_names(src, call_pos, spans)
    if ident not in params:
        return OrderedDict()
    index = params.index(ident)
    fn_name = enclosing_function(src, begin + 1)
    if not fn_name or fn_name == "<module>":
        return OrderedDict()
    call_re = re.compile(r'(?:this\.|xs\.[A-Za-z0-9_.]*?\.)?' + re.escape(fn_name) + r'\s*\(')
    out = OrderedDict()
    for m in call_re.finditer(src):
        if m.start() == begin:
            continue
        args = split_top_level(balanced_args(src, m.end() - 1)[0])
        if index >= len(args):
            continue
        arg = unwrap_expr(args[index])
        if not arg:
            continue
        lit = literal_keys(arg)
        if lit:
            for k in lit:
                out.setdefault(k, "%s:%d" % (rel, lines_of(src, m.start())))
            continue
        if IDENT_RE.match(arg):
            for k, v in trace_param(src, m.start(), arg, rel, spans).items():
                out.setdefault(k, v)
    return out


CLASS_DEF_RE = re.compile(r'^\(xs\.([A-Za-z0-9_.]+)\s*=\s*[A-Za-z0-9_.]*?extend\s*\(\s*\{', re.M)
REGISTER_RE = re.compile(r'registerDialog\s*\(\s*"([^"]+)"\s*,\s*\{[^}]*"class"\s*:\s*xs\.([A-Za-z0-9_.]+)')


def dialog_name_for_class(src):
    """Registered dialog name for the class defined in this file, if any."""
    names = {}
    for m in CLASS_DEF_RE.finditer(src):
        names.setdefault(m.group(1), None)
    for m in REGISTER_RE.finditer(src):
        names[m.group(2)] = m.group(1)
    return names


def trace_dialog_param(src, rel, call_pos, ident, spans, file_cache):
    """Resolve a dialog init(params) pass-through.

    ExchangeGanodermaDialog.init(params) forwards params straight into
    requestBuyGood. The payload is whatever the opener passed to
    showDialogByName("ExchangeGanodermaDialog", {...}), so read it from there.
    """
    out = OrderedDict()
    for begin, end in containing_spans(src, call_pos, spans):
        params, _ = enclosing_param_names(src, call_pos, spans)
        if ident not in params:
            break
        fn_name = enclosing_function(src, begin + 1)
        if fn_name != "init":
            break
        cls = None
        for m in CLASS_DEF_RE.finditer(src):
            if m.start() < begin:
                cls = m.group(1)
            else:
                break
        if cls is None:
            break
        dname = dialog_name_for_class(src).get(cls)
        if not dname:
            break
        for path in walk_js(SRC):
            src2 = file_cache.setdefault(path, read(path))
            for m in re.finditer(r'showDialogByName\s*\(\s*"' + re.escape(dname) + r'"\s*,\s*\{', src2):
                brace = m.end() - 1
                close = match_brace(src2, brace)
                if close <= brace:
                    continue
                inner = src2[brace + 1:close]
                for k in OBJ_KEY_RE.findall(inner):
                    out.setdefault(k, "%s:%d" % (os.path.relpath(path, SRC), lines_of(src2, m.start())))
        break
    return out


def scan_call_sites(net_functions):
    sites = defaultdict(list)
    for path in walk_js(SRC):
        rel = os.path.relpath(path, SRC)
        src = read(path)
        spans = function_spans(src)
        for m in CALL_RE.finditer(src):
            name = m.group(1)
            if name not in net_functions:
                continue
            args_raw, _ = balanced_args(src, m.end() - 1)
            args = split_top_level(args_raw)
            line = lines_of(src, m.start())
            req_expr, arg_role = classify_request_arg(net_functions[name], args)
            _req, _cb, _err, req_i, cb_i, err_i = classify_args(net_functions[name], args)
            req_expr = _req
            lit = literal_keys(req_expr) if req_expr else []
            traced = OrderedDict()
            bare = unwrap_expr(req_expr) if req_expr else None
            if bare and IDENT_RE.match(bare) and bare not in ("null", "undefined"):
                traced = trace_param(src, m.start(), bare, rel, spans)
                if not traced:
                    traced = trace_through_caller(src, rel, m.start(), bare, spans)
                if not traced:
                    traced = trace_dialog_param(src, rel, m.start(), bare, spans, FILE_CACHE)
            sites[name].append({
                "file": rel, "line": line,
                "function": enclosing_function(src, m.start()),
                "arg_role": arg_role,
                "request_expr": req_expr,
                "request_fields": lit or list(traced.keys()),
                "request_field_evidence": ({k: "%s:%d" % (rel, line) for k in lit} if lit else dict(traced)),
                "callback": _cb,
                "err_callback": _err,
                "callback_index": cb_i,
                "src": src, "spans": spans, "call_pos": m.start(),
            })
    return sites


# --------------------------------------------------------------------------
# 4. response handler analysis
# --------------------------------------------------------------------------
def chain_paths(body, root):
    """Dotted reads off a payload variable.

    Handles both direct reads (jsonObj.map_info) and the common model idiom of
    copying the payload onto self first (this.mapInfo = mapInfo) and then
    reading this.mapInfo.chapter_list. A greedy left-to-right chain scan would
    otherwise swallow the inner read entirely.
    """
    aliases = {root}
    for m in re.finditer(r'this\s*\.\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*' + re.escape(root) + r'\b', body):
        aliases.add(m.group(1))
    out = []
    for alias in aliases:
        pat = re.compile(r'(?<![\w.])(?:this\s*\.\s*)?' + re.escape(alias)
                         + r'\s*\.\s*([A-Za-z_][A-Za-z0-9_]*(?:\s*\.\s*[A-Za-z_][A-Za-z0-9_]*)*)')
        for m in pat.finditer(body):
            p = re.sub(r'\s+', '', m.group(1))
            if p and p not in out:
                out.append(p)
    return out


def callback_param_names(cb):
    """Parameter names of an inline callback, a named method body, or a bare name."""
    text = cb.strip()
    m = re.search(r'function\s*\(([^)]*)\)', text)
    if not m:
        m = re.match(r'^\(([^)]*)\)', text)
    if m:
        return [p.strip() for p in m.group(1).split(",") if p.strip()]
    return []


def function_body(src, name):
    pat = re.compile(r'(?:^\(xs\.[A-Za-z0-9_.]*?%s\s*=\s*function\s*\(|^\s{4}%s\s*:\s*function\s*\()'
                     % (re.escape(name), re.escape(name)), re.M)
    m = pat.search(src)
    if not m:
        return None
    nxt = None
    for pat2 in DEF_PATTERNS:
        for m2 in pat2.finditer(src):
            if m2.start() > m.start() and (nxt is None or m2.start() < nxt):
                nxt = m2.start()
    return src[m.start(): nxt if nxt else len(src)]


MODEL_RE = re.compile(r'xs\.Models\.([A-Za-z0-9_.]+)\.(create[A-Za-z]*|loadData)\s*\(\s*([A-Za-z_][A-Za-z0-9_]*)')
UPDATE_RE = re.compile(r'getInstance\([^)]*\)\.([A-Za-z0-9_]+)\.update\s*\(\s*([A-Za-z_][A-Za-z0-9_]*)')
LOADJSON_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)\.loadJson\s*\(\s*([A-Za-z_][A-Za-z0-9_]*)')
ERRORCODE_RE = re.compile(r'error_code\s*===?\s*"([^"]+)"')


# --- global symbol index, used to follow one-hop handler delegation ---------
OBJECT_DEF_RE = re.compile(r'^\(\(?xs\.([A-Za-z0-9_.]+)\s*=\s*', re.M)
METHOD_DEF_RE = re.compile(r'^\s{4}([A-Za-z0-9_]+)\s*:\s*function\s*\(', re.M)


def build_symbol_index():
    objects = defaultdict(set)
    methods = defaultdict(list)
    for path in walk_js(SRC):
        rel = os.path.relpath(path, SRC)
        src = read(path)
        for m in OBJECT_DEF_RE.finditer(src):
            objects['xs.' + m.group(1)].add(rel)
        for m in METHOD_DEF_RE.finditer(src):
            body = function_body(src, m.group(1))
            if body:
                methods[m.group(1)].append((rel, body))
    return objects, methods


DELEGATE_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_.]*?)\.apply\s*\(\s*this\s*,\s*\[\s*([A-Za-z_][A-Za-z0-9_]*)\s*[,\]]')
DELEGATE_CALL_RE = re.compile(r'([A-Za-z_][A-Za-z0-9_.]*)\s*\(\s*([A-Za-z_][A-Za-z0-9_]*)\s*[,)]')


def follow_delegation(body, primary, objects, methods, depth, seen):
    """Follow xs.A.B.method(<resp>) / .apply(this, [<resp>]) one or two hops."""
    if depth <= 0:
        return []
    targets = []
    for rx in (DELEGATE_RE, DELEGATE_CALL_RE):
        for m in rx.finditer(body):
            if m.group(2) != primary:
                continue
            targets.append(m.group(1))
    out = []
    for dotted in targets:
        if dotted in seen:
            continue
        seen.add(dotted)
        owner, _, name = dotted.rpartition('.')
        rel = None
        body2 = None
        for cand in objects.get(owner, ()):
            b = function_body(read(os.path.join(SRC, cand)), name)
            if b:
                rel, body2 = cand, b
                break
        if body2 is None:
            cands = methods.get(name, [])
            if len(cands) == 1:
                rel, body2 = cands[0]
        if body2 is None:
            continue
        params2 = callback_param_names(body2)
        if not params2:
            continue
        out.append({'target': dotted, 'file': rel, 'fields': chain_paths(body2, params2[0]),
                    'deeper': follow_delegation(body2, params2[0], objects, methods, depth - 1, seen)})
    return out


def find_assigned_function(src, start, end, ident):
    """A function literal bound to the given identifier inside [start, end).

    Covers plain locals (tmpfunc = function(data) {...}) and the common
    default-callback idiom (_cb = (param.cb || function(data) {...})).
    """
    pat = re.compile(r'(?<![\w.])' + re.escape(ident) + r'\s*=\s*[^;{}]*?function\s*\([^)]*\)\s*\{')
    best = None
    for m in pat.finditer(src, start, end):
        brace = src.index('{', m.end() - 1)
        close = match_brace(src, brace)
        if close > brace:
            best = (m.start(), close)
    if best is None:
        return None
    return src[best[0]:best[1] + 1]


def analyse_handler(cb_src, src_text, src_rel, call_line, index=None, call_pos=None, spans=None):
    res = {"fields": OrderedDict(), "model_hops": [], "where": None,
           "error_codes": [], "evidence": "", "delegates_to": []}
    if not cb_src:
        return res
    cb = cb_src.strip()
    m = re.match(r'^(.*?)\.bind\s*\(.*\)$', cb)
    if m and not cb.startswith("function"):
        cb = m.group(1).strip()
    if cb.startswith("function"):
        body = cb
        res["where"] = "inline"
        res["evidence"] = "%s:%d" % (src_rel, call_line)
    else:
        name = cb.split(".")[-1] if "." in cb else cb
        body = function_body(src_text, name)
        if body is None and call_pos is not None and IDENT_RE.match(name):
            for begin, end in containing_spans(src_text, call_pos, spans):
                body = find_assigned_function(src_text, begin, min(end, call_pos), name)
                if body:
                    res["where"] = cb + " (local function literal)"
                    res["evidence"] = "%s:%d" % (src_rel, call_line)
                    break
        if body is None:
            return res
        if not res["where"]:
            res["where"] = cb
            res["evidence"] = "%s (defined in %s)" % (cb, src_rel)
    params = callback_param_names(body) or callback_param_names(cb)
    if params:
        for path in chain_paths(body, params[0]):
            res["fields"].setdefault(path, "%s:%d" % (src_rel, call_line))
        if len(params) > 1:
            for path in chain_paths(body, params[1]):
                res["fields"].setdefault(params[1] + "." + path, "%s:%d" % (src_rel, call_line))
        primary = params[0]
        for m in MODEL_RE.finditer(body):
            if m.group(3) == primary:
                hop = "xs.Models.%s.%s" % (m.group(1), m.group(2))
                if hop not in res["model_hops"]:
                    res["model_hops"].append(hop)
        for m in UPDATE_RE.finditer(body):
            if m.group(2) == primary:
                hop = "GameData.%s.update" % m.group(1)
                if hop not in res["model_hops"]:
                    res["model_hops"].append(hop)
        for m in LOADJSON_RE.finditer(body):
            if m.group(2) == primary:
                if m.group(1) not in res["model_hops"]:
                    res["model_hops"].append(m.group(1) + ".loadJson")
    for m in ERRORCODE_RE.finditer(body):
        if m.group(1) not in res["error_codes"]:
            res["error_codes"].append(m.group(1))
    if index and params:
        objects, methods = index
        res["delegates_to"] = follow_delegation(body, params[0], objects, methods, 2, set())
        for d in res["delegates_to"]:
            for p in d["fields"]:
                res["fields"].setdefault(p, "%s (via %s)" % (d["file"], d["target"]))
            for sub in d["deeper"]:
                for p in sub["fields"]:
                    res["fields"].setdefault(p, "%s (via %s)" % (sub["file"], sub["target"]))
    return res


# --------------------------------------------------------------------------
# 5. cmn descriptors and model field tables
# --------------------------------------------------------------------------
def parse_data_descs():
    src = read(os.path.join(SRC, "Profile", "GameData", "common.js"))
    descs = []
    for m in re.finditer(
        r'propertyName:\s*"([^"]+)",\s*key:\s*"([^"]+)",\s*"class":\s*xs\.Models\.([A-Za-z0-9_.]+),\s*mgrType:\s*xs\.(Constant_GD_MgrType_[A-Za-z]+)',
        src):
        descs.append({"property": m.group(1), "cmn_key": m.group(2), "model": m.group(3),
                      "mgr_type": m.group(4).replace("Constant_GD_MgrType_", "").replace("Type", ""),
                      "evidence": "%s/Profile/GameData/common.js:%d" % (DOCS_REL, lines_of(src, m.start()))})
    return descs


MODEL_FILES = None


def model_file_index():
    """basename -> relative path, for every JS file under Models/."""
    global MODEL_FILES
    if MODEL_FILES is None:
        MODEL_FILES = {}
        base = os.path.join(SRC, "Models")
        for path in walk_js(base):
            rel = os.path.relpath(path, SRC)
            MODEL_FILES.setdefault(os.path.basename(path)[:-3], rel)
    return MODEL_FILES


def model_field_table(model_name):
    last = model_name.split(".")[-1]
    candidates = ["Models/" + model_name.replace(".", "/") + ".js", "Models/%s.js" % last]
    rel = None
    for c in candidates:
        if os.path.exists(os.path.join(SRC, c)):
            rel = c
            break
    if rel is None:
        rel = model_file_index().get(last)
    if rel is None:
        return None
    return fields_for_file(rel)


def fields_for_file(rel):
    """Field reads off the first parameter of every method in one module."""
    path = os.path.join(SRC, rel)
    if not os.path.exists(path):
        return None
    src = read(path)
    starts = [(m.start(), m.group(1)) for m in re.finditer(r'^\s{4}([A-Za-z0-9_]+)\s*:\s*function\s*\(', src, re.M)]
    starts += [(m.start(), m.group(1)) for m in re.finditer(r'^\(xs\.[A-Za-z0-9_.]*?([A-Za-z0-9_]+)\s*=\s*function\s*\(', src, re.M)]
    starts.sort()
    funcs = OrderedDict()
    for i, (pos, name) in enumerate(starts):
        end = starts[i + 1][0] if i + 1 < len(starts) else len(src)
        funcs.setdefault(name, (src[pos:end], lines_of(src, pos)))
    fields = OrderedDict()
    for fn, (body, fline) in funcs.items():
        m = re.search(r'function\s*\(([^)]*)\)', body)
        if not m or not m.group(1).strip():
            continue
        root = m.group(1).split(",")[0].strip()
        if root in ("this",):
            continue
        for p in chain_paths(body, root):
            fields.setdefault(p, "%s/%s:%d (%s)" % (DOCS_REL, rel, fline, fn))
    getters = []
    for g in re.finditer(r'^\s{4}(get[A-Za-z0-9_]+)\s*:\s*function', src, re.M):
        if g.group(1) not in getters:
            getters.append(g.group(1))
    return {"file": rel, "evidence": "%s/%s:1" % (DOCS_REL, rel),
            "methods": list(funcs.keys()),
            "payload_fields": list(fields.keys()), "payload_field_evidence": dict(fields),
            "getters": getters}


# --------------------------------------------------------------------------
def main():
    url_keys, hosts = parse_url_registry()
    net_functions = parse_net_functions()
    sites = scan_call_sites(net_functions)
    descs = parse_data_descs()
    index = build_symbol_index()

    by_action = OrderedDict()
    for name, fn in net_functions.items():
        for key in fn["url_keys"]:
            info = url_keys.get(key)
            if not info:
                continue
            action = info["action"]
            rec = by_action.setdefault(action, {
                "action": action, "path": info["path"], "url_keys": [], "evidence": info["evidence"],
                "net_functions": [], "call_sites": [],
                "request_fields": OrderedDict(), "response_fields": OrderedDict(),
                "model_hops": [], "error_codes": [],
            })
            if key not in rec["url_keys"]:
                rec["url_keys"].append(key)
            if name not in [f["name"] for f in rec["net_functions"]]:
                rec["net_functions"].append({"name": name, "line": fn["line"], "evidence": fn["evidence"],
                                             "forced_params": fn["forced_params"]})
            for f, meta in fn["forced_params"].items():
                rec["request_fields"].setdefault(f, fn["evidence"] + " (" + meta["source"] + " = " + meta["value"] + ")")
            for s in sites.get(name, []):
                handler = analyse_handler(s["callback"], s["src"], s["file"], s["line"], index,
                                          s.get("call_pos"), s.get("spans"))
                errh = analyse_handler(s["err_callback"], s["src"], s["file"], s["line"], index,
                                       s.get("call_pos"), s.get("spans"))
                rec["call_sites"].append({
                    "file": s["file"], "line": s["line"], "function": s["function"],
                    "net_function": name, "arg_role": s.get("arg_role"),
                    "callback_index": s.get("callback_index"),
                    "request_expr": (s["request_expr"] or "")[:300],
                    "request_fields": s["request_fields"],
                    "request_field_evidence": s["request_field_evidence"],
                    "handler": handler["where"], "handler_evidence": handler["evidence"],
                    "response_fields": list(handler["fields"].keys()),
                    "response_field_evidence": dict(handler["fields"]),
                    "model_hops": handler["model_hops"],
                    "delegates_to": handler["delegates_to"],
                    "error_fields": list(errh["fields"].keys()),
                    "error_codes": handler["error_codes"],
                })
                for f, ev in s["request_field_evidence"].items():
                    rec["request_fields"].setdefault(f, ev)
                for f, ev in handler["fields"].items():
                    rec["response_fields"].setdefault(f, ev)
                for h in handler["model_hops"]:
                    if h not in rec["model_hops"]:
                        rec["model_hops"].append(h)
                for c in handler["error_codes"]:
                    if c not in rec["error_codes"]:
                        rec["error_codes"].append(c)

    # URL keys used directly through xs.Cfg.Url.<key> (no Tools/Net wrapper)
    direct = defaultdict(list)
    for path in walk_js(SRC):
        rel = os.path.relpath(path, SRC)
        if rel in ("Cfg/Url.js", "Tools/Net.js"):
            continue
        src = read(path)
        for m in re.finditer(r'(?:reqUrl|reqAsync|reqDownload|reqLastUrl)\s*\(\s*xs\.Cfg\.Url\.([A-Za-z0-9_]+)', src):
            open_paren = src.index("(", m.start())
            args = split_top_level(balanced_args(src, open_paren)[0])
            req_expr = args[1] if len(args) > 1 else None
            lit = literal_keys(req_expr) if req_expr else []
            traced = OrderedDict()
            if req_expr and IDENT_RE.match(req_expr.strip()):
                traced = trace_param(src, m.start(), req_expr.strip(), rel)
            direct[m.group(1)].append({
                "file": rel, "line": lines_of(src, m.start()),
                "function": enclosing_function(src, m.start()),
                "src": src,
                "request_expr": req_expr or "",
                "request_fields": lit or list(traced.keys()),
                "request_field_evidence": ({k: "%s:%d" % (rel, lines_of(src, m.start())) for k in lit} if lit else dict(traced)),
                "callback": args[2] if len(args) > 2 else None,
                "err_callback": args[3] if len(args) > 3 else None,
                "callback_index": 2 if len(args) > 2 else None,
                "spans": function_spans(src), "call_pos": m.start(),
            })
    for key, uses in direct.items():
        info = url_keys.get(key)
        if not info:
            continue
        rec = by_action.setdefault(info["action"], {
            "action": info["action"], "path": info["path"], "url_keys": [], "evidence": info["evidence"],
            "net_functions": [], "call_sites": [],
            "request_fields": OrderedDict(), "response_fields": OrderedDict(),
            "model_hops": [], "error_codes": [],
        })
        if key not in rec["url_keys"]:
            rec["url_keys"].append(key)
        for u in uses:
            handler = analyse_handler(u.get("callback"), u["src"], u["file"], u["line"], index,
                                      u.get("call_pos"), u.get("spans"))
            rec["call_sites"].append({
                "file": u["file"], "line": u["line"], "function": u["function"],
                "net_function": "(direct xs.Cfg.Url.%s)" % key,
                "request_expr": u.get("request_expr") or "",
                "request_fields": u.get("request_fields") or [],
                "request_field_evidence": u.get("request_field_evidence") or {},
                "callback_index": u.get("callback_index"),
                "handler": handler["where"], "handler_evidence": handler["evidence"],
                "response_fields": list(handler["fields"].keys()),
                "response_field_evidence": dict(handler["fields"]),
                "model_hops": handler["model_hops"], "delegates_to": handler["delegates_to"],
                "error_fields": [], "error_codes": handler["error_codes"],
            })
            for f, ev in (u.get("request_field_evidence") or {}).items():
                rec["request_fields"].setdefault(f, ev)
            for f, ev in handler["fields"].items():
                rec["response_fields"].setdefault(f, ev)

    # Profile/GameData/* managers (map_info, wine_info, team_info, ... live here)
    gamedata = OrderedDict()
    gd_dir = os.path.join(SRC, "Profile", "GameData")
    if os.path.isdir(gd_dir):
        for path in walk_js(gd_dir):
            rel = os.path.relpath(path, SRC)
            if os.path.basename(rel) == "headers.js":
                continue
            table = fields_for_file(rel)
            if table and table["payload_fields"]:
                gamedata[rel] = table

    # every xs.Models.* referenced anywhere, not only the cmn descriptors
    referenced = set()
    for path in walk_js(SRC):
        src = read(path)
        for m in re.finditer(r'xs\.Models\.([A-Za-z0-9_]+)', src):
            referenced.add(m.group(1))
    for m in re.finditer(r'xs\.Models\.([A-Za-z0-9_]+)', read(os.path.join(SRC, "Profile", "GameData", "common.js"))):
        referenced.add(m.group(1))
    cmn_models = {d["model"] for d in descs}
    # Inline-constructed URLs: some actions are never routed through Cfg/Url.js
    # or a Tools/Net wrapper (pay.createTrade, anysdkAccount.index, map.getConfig).
    DO_LITERAL_RE = re.compile(r'do=([A-Za-z][A-Za-z0-9_]*\.[A-Za-z0-9_]+)')
    inline_sites = defaultdict(list)
    for path in walk_js(SRC):
        rel = os.path.relpath(path, SRC)
        src = read(path)
        for m in DO_LITERAL_RE.finditer(src):
            inline_sites[m.group(1)].append({
                "file": rel, "line": lines_of(src, m.start()),
                "function": enclosing_function(src, m.start()),
            })
    for action, uses in inline_sites.items():
        rec = by_action.setdefault(action, {
            "action": action, "path": ("(内联拼接，不含固定前缀)"), "url_keys": [],
            "evidence": "%s:%d" % (uses[0]["file"], uses[0]["line"]),
            "net_functions": [], "call_sites": [],
            "request_fields": OrderedDict(), "response_fields": OrderedDict(),
            "model_hops": [], "error_codes": [],
        })
        rec["inline_literal_sites"] = uses
        rec["source"] = rec.get("source") or "inline-url-literal"
    for action, rec in by_action.items():
        rec.setdefault("source", "url-registry")

    models = OrderedDict()
    for name in sorted(referenced | cmn_models):
        table = model_field_table(name)
        if table:
            table["in_cmn"] = name in cmn_models
            models[name] = table

    out = {
        "generated_from": "ReconstructedJS/src_jsc (approximate bytecode reconstruction, not original source)",
        "provenance": {
            "note": "Every field value in this file carries a file:line pointer into the reconstruction. "
                    "No original-server capture exists: the retail service is offline and cannot be captured.",
            "evidence_classes": {
                "bytecode": "recovered from the APK .jsc disassembly / reconstruction",
                "resource": "read from APK-bundled configuration or text resources",
                "device": "observed in artifacts/device-validation logs against the local rebuild",
                "local-design": "introduced by this reconstruction project, not part of the original protocol",
                "original-server": "unavailable - no capture, no original response",
            },
        },
        "transport": {
            "base": "http://{domain}{path}&data={payload}",
            "domain_source": "xs.Profile.UserCfg.getGameAddr().domain (per-server) or xs.Cfg.Url.ServerAddrsMap",
            "hosts": hosts,
            "payload_encoding": "encodeURIComponent(JSON.stringify(param)) + '&ingor_encrypt=1' + ('&zlib=1' if xs.zlib) + '&sign=' + md5(paramStr + key)",
            "log_only_variant": "http://{domain}{path}&data={raw json}&ingor_encrypt=1&sign={sign}",
            "evidence": "%s/Views/Mgr.js:139" % DOCS_REL,
        },
        "base_params": ["user_id", "time", "token", "user_auth", "step (guide milestones only)"],
        "counts": {"url_keys": len(url_keys), "actions": len(by_action), "net_functions": len(net_functions),
                   "call_sites": sum(len(v) for v in sites.values()), "models": len(models)},
        "actions": by_action,
        "cmn_envelope": {
            "data_descs": descs,
            "global_keys": ["general_skin", "server_version", "cfg_version", "opt_cfg_version",
                            "server_time", "offset_time"],
            "other_keys": ["user_level_up_info", "meeting_info", "surrender_info", "refresh_info"],
            "evidence": "%s/Profile/GameData/common.js:281" % DOCS_REL,
        },
        "models": models,
        "gamedata_managers": gamedata,
        "unreferenced_url_keys": sorted(set(url_keys) - {k for f in net_functions.values() for k in f["url_keys"]}),
    }

    os.makedirs(OUT_DIR, exist_ok=True)
    dest = os.path.join(OUT_DIR, "protocol-inventory.json")
    with open(dest, "w", encoding="utf-8") as fh:
        json.dump(out, fh, ensure_ascii=False, indent=1)
    print("actions: %d  url keys: %d  net functions: %d  call sites: %d  models: %d"
          % (len(by_action), len(url_keys), len(net_functions), sum(len(v) for v in sites.values()), len(models)))
    print("wrote", dest)
    nf = sum(1 for r in by_action.values() for c in r["call_sites"] if not c["request_fields"])
    nh = sum(1 for r in by_action.values() for c in r["call_sites"] if not c["response_fields"])
    print("call sites with no request fields: %d ; with no response fields: %d ; total %d"
          % (nf, nh, sum(len(r["call_sites"]) for r in by_action.values())))


if __name__ == "__main__":
    main()