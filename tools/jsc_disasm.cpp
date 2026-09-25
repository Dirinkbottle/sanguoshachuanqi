#include "jsapi.h"
#include "jsdbgapi.h"
#include "jsfun.h"
#include "jsopcode.h"
#include "jsobj.h"
#include "jsobjinlines.h"
#include "jsscript.h"

#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iterator>
#include <map>
#include <set>
#include <string>
#include <vector>

static std::string atomText(JSContext *cx, JSAtom *atom) {
    if (!atom)
        return std::string();
    char *text = JS_EncodeStringToUTF8(cx, atom);
    if (!text)
        return std::string();
    std::string result(text);
    JS_free(cx, text);
    return result;
}

static std::map<uint32_t, std::string> functionLabels(JSContext *cx,
                                                       JSScript *script) {
    std::map<uint32_t, std::string> labels;
    for (jsbytecode *pc = script->code; pc < script->code + script->length;
         pc += js::GetBytecodeLength(pc)) {
        JSOp op = JSOp(*pc);
        if (op != JSOP_LAMBDA)
            continue;
        uint32_t index = GET_UINT32_INDEX(pc);
        jsbytecode *next = pc + js::GetBytecodeLength(pc);
        while (next < script->code + script->length && JSOp(*next) == JSOP_NOTEARG)
            next += js::GetBytecodeLength(next);
        if (next >= script->code + script->length)
            continue;
        JSOp nextOp = JSOp(*next);
        if (nextOp == JSOP_INITPROP || nextOp == JSOP_SETPROP ||
            nextOp == JSOP_SETNAME || nextOp == JSOP_SETGNAME) {
            std::string label = atomText(cx, script->getAtom(GET_UINT32_INDEX(next)));
            if (!label.empty())
                labels[index] = label;
        }
    }
    return labels;
}

static void dumpScriptTree(JSContext *cx, JSScript *script,
                           std::set<JSScript *> &seen, unsigned depth) {
    if (!script || !seen.insert(script).second)
        return;

    std::fprintf(stdout, "\n;; nested bytecode depth=%u\n", depth);
    for (jsbytecode *pc = script->code; pc < script->code + script->length;
         pc += js::GetBytecodeLength(pc)) {
        if (JSOp(*pc) == JSOP_LAMBDA || JSOp(*pc) == JSOP_DEFFUN)
            std::fprintf(stdout, ";; FUNCTION-MAP kind=%s offset=%u object[%u]\n",
                         JSOp(*pc) == JSOP_LAMBDA ? "lambda" : "deffun",
                         unsigned(pc - script->code), GET_UINT32_INDEX(pc));
    }
    if (script->hasTrynotes()) {
        js::TryNoteArray *notes = script->trynotes();
        for (uint32_t i = 0; i < notes->length; ++i) {
            const JSTryNote &note = notes->vector[i];
            const char *kind = note.kind == JSTRY_CATCH ? "catch" :
                               note.kind == JSTRY_FINALLY ? "finally" : "iter";
            std::fprintf(stdout,
                         ";; TRY-NOTE kind=%s start=%u length=%u stackDepth=%u target=%u\n",
                         kind, note.start, note.length, note.stackDepth,
                         note.start + note.length);
        }
    }
    JS_DumpBytecode(cx, script);

    if (!script->hasObjects())
        return;
    js::ObjectArray *objects = script->objects();
    std::map<uint32_t, std::string> labels = functionLabels(cx, script);
    for (uint32_t i = 0; i < objects->length; ++i) {
        JSObject *object = objects->vector[i];
        if (!object || !object->isFunction())
            continue;
        JSFunction *fun = object->toFunction();
        if (!fun->isInterpreted() || !fun->hasScript())
            continue;
        JSScript *child = fun->nonLazyScript();
        std::string label = labels[i];
        if (label.empty())
            label = atomText(cx, fun->atom());
        if (label.empty())
            label = "<anonymous>";
        std::fprintf(stdout, ";; function object[%u] %s\n", i,
                     label.c_str());
        unsigned nargs = JS_GetFunctionArgumentCount(cx, fun);
        unsigned nbindings = child->bindings.count();
        void *mark = NULL;
        uintptr_t *bindings = JS_GetFunctionLocalNameArray(cx, fun, &mark);
        std::fprintf(stdout, ";; function metadata object[%u] nargs=%u bindings=%u\n",
                     i, nargs, nbindings);
        if (bindings) {
            for (unsigned binding = 0; binding < nbindings; ++binding) {
                std::string name = atomText(cx, JS_LocalNameToAtom(bindings[binding]));
                std::fprintf(stdout, ";; %s[%u] %s\n",
                             binding < nargs ? "arg" : "local",
                             binding < nargs ? binding : binding - nargs,
                             name.c_str());
            }
            JS_ReleaseFunctionLocalNameArray(cx, mark);
        }
        dumpScriptTree(cx, child, seen, depth + 1);
    }
}

int main(int argc, char **argv) {
    if (argc != 3) {
        std::fprintf(stderr, "usage: %s input.jsc output.disasm\n", argv[0]);
        return 2;
    }

    std::ifstream input(argv[1], std::ios::binary);
    if (!input) {
        std::perror(argv[1]);
        return 2;
    }
    std::vector<char> bytes((std::istreambuf_iterator<char>(input)),
                             std::istreambuf_iterator<char>());
    if (bytes.empty()) {
        std::fprintf(stderr, "empty input: %s\n", argv[1]);
        return 2;
    }

    FILE *out = std::fopen(argv[2], "wb");
    if (!out) {
        std::perror(argv[2]);
        return 2;
    }
    if (!std::freopen(argv[2], "wb", stdout)) {
        std::perror("redirect stdout");
        std::fclose(out);
        return 2;
    }
    std::fclose(out);

    JSRuntime *rt = JS_NewRuntime(256u * 1024u * 1024u, JS_NO_HELPER_THREADS);
    if (!rt) {
        std::fprintf(stderr, "JS_NewRuntime failed\n");
        return 3;
    }
    JSContext *cx = JS_NewContext(rt, 8192);
    if (!cx) {
        std::fprintf(stderr, "JS_NewContext failed\n");
        JS_DestroyRuntime(rt);
        return 3;
    }

    JSScript *script = JS_DecodeScript(cx, bytes.data(), (uint32_t)bytes.size(),
                                       NULL, NULL);
    if (!script) {
        std::fprintf(stderr, "JS_DecodeScript rejected %s\n", argv[1]);
        JS_DestroyContext(cx);
        JS_DestroyRuntime(rt);
        JS_ShutDown();
        return 4;
    }

    std::fprintf(stdout, ";; Input: %s\n", argv[1]);
    std::fprintf(stdout, ";; XDR magic: 0x%08x\n", 0xb973c051u);
    std::fprintf(stdout, ";; SpiderMonkey v22 bytecode disassembly (debug build)\n\n");
    std::set<JSScript *> seen;
    dumpScriptTree(cx, script, seen, 0);
    std::fflush(stdout);

    JS_DestroyContext(cx);
    JS_DestroyRuntime(rt);
    JS_ShutDown();
    return 0;
}
