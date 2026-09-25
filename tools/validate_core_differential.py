#!/usr/bin/env python3
"""Differentially execute a small startup-chain set against SpiderMonkey v22 XDR."""

import json
import re
import subprocess
import sys
import tempfile
from pathlib import Path

import reconstruct_js


PROJECT = Path(__file__).resolve().parents[1]
CORE_SCRIPTS = [
    "src_jsc/main.jsc",
    "src_jsc/Core/headers.jsc",
    "src_jsc/Core/Constant.jsc",
    "src_jsc/Core/CoreString.jsc",
    "src_jsc/Core/Utils/headers.jsc",
    "src_jsc/Core/Tools/headers.jsc",
    "src_jsc/Core/Debug/headers.jsc",
    "src_jsc/Core/Factorys/headers.jsc",
    "src_jsc/Core/Scene/headers.jsc",
    "src_jsc/Core/alias.jsc",
    "src_jsc/headers.jsc",
    "src_jsc/cfg.jsc",
    "src_jsc/Cfg/headers.jsc",
    "src_jsc/Cfg/Sprite.jsc",
    "src_jsc/Models/headers.jsc",
    "src_jsc/Views/headers.jsc",
    "src_jsc/Scene/headers.jsc",
]
JS_BUILTINS = set("Array ArrayBuffer Atomics Boolean DataView Date Error EvalError Float32Array Float64Array Function Infinity Int16Array Int32Array Int8Array JSON Math NaN Number Object Promise RangeError ReferenceError Reflect RegExp Set String Symbol SyntaxError TypeError Uint16Array Uint32Array Uint8Array Uint8ClampedArray URIError WeakMap WeakSet arguments eval globalThis isFinite isNaN parseFloat parseInt undefined".split())
PREDEFINED = set("xs xsc cc ccs ccb ccui ccbuilder jsb sys require module exports console process BfSdk EasySdk AnySdk WebSocket".split())
IDENT = re.compile(r"^[A-Za-z_$][A-Za-z0-9_$]*$")


PRELUDE = r'''var __calls=[];
var __cache={};
function __norm(v,seen){
  if(v===null||v===undefined||typeof v==="string"||typeof v==="number"||typeof v==="boolean") return v;
  if(typeof v==="function") { try { var p=v.__mockPath; if(p) return "[Mock:"+p+"]"; } catch(e) {} return "[Function]"; }
  seen=seen||[]; if(seen.indexOf(v)>=0) return "[Circular]"; seen.push(v);
  if(v instanceof Array) { var a=[]; for(var i=0;i<v.length;i++) a.push(__norm(v[i],seen)); seen.pop(); return a; }
  var o={}; var ks=Object.keys(v).sort(); for(var j=0;j<ks.length;j++) { try { o[ks[j]]=__norm(v[ks[j]],seen); } catch(e) { o[ks[j]]="[Thrown]"; } }
  seen.pop(); return o;
}
function __mock(path){
  if(__cache[path]) return __cache[path];
  var target=function(){};
  var value=new Proxy(target,{
    get:function(t,p){
      if(p==="__mockPath") return path;
      if(p==="toJSON") return undefined;
      if(typeof Symbol!=="undefined" && p===Symbol.toPrimitive) return function(){return "[Mock:"+path+"]";};
      if(p in t) return t[p];
      return __mock(path+"."+String(p));
    },
    set:function(t,p,v){ __calls.push(["set",path+"."+String(p),__norm(v)]); t[p]=v; return true; },
    apply:function(t,self,args){ __calls.push(["call",path,args.map(function(x){return __norm(x);})]); return __mock(path+"()"); },
    construct:function(t,args){ __calls.push(["new",path,args.map(function(x){return __norm(x);})]); return __mock(path+"()"); }
  });
  __cache[path]=value; return value;
}
function __namespace(path,initial){
  return new Proxy(initial||{}, {
    get:function(t,p){ if(p in t) return t[p]; return __mock(path+"."+String(p)); },
    set:function(t,p,v){ t[p]=v; return true; }
  });
}
var xs=__namespace("xs",{
  Core:__namespace("xs.Core"),Cfg:__namespace("xs.Cfg"),Models:__namespace("xs.Models"),Views:__namespace("xs.Views"),Scene:__namespace("xs.Scene"),Tools:__namespace("xs.Tools"),Utils:__namespace("xs.Utils"),Debug:__namespace("xs.Debug"),Factorys:__namespace("xs.Factorys"),Audio:__namespace("xs.Audio"),Skill:__namespace("xs.Skill"),Profile:__namespace("xs.Profile"),Guide:__namespace("xs.Guide"),Prototype:__namespace("xs.Prototype"),Libs:__namespace("xs.Libs"),AnySdk:__namespace("xs.AnySdk"),EasySdk:__namespace("xs.EasySdk"),Update:__namespace("xs.Update")
});
xs.Utils.require=__mock("xs.Utils.require");
var xsc=__mock("xsc"), cc=__mock("cc"), ccs=__mock("ccs"), ccb=__mock("ccb"), ccui=__mock("ccui"), ccbuilder=__mock("ccbuilder"), jsb=__mock("jsb"), sys=__mock("sys"), require=__mock("require"), module=__mock("module"), exports=__mock("exports"), console=__mock("console"), process=__mock("process"), BfSdk=__mock("BfSdk"), EasySdk=__mock("EasySdk"), AnySdk=__mock("AnySdk"), WebSocket=__mock("WebSocket");
'''


def globals_for(disasm):
    bodies = reconstruct_js.parse_disassembly(disasm, disasm.with_name(disasm.name.replace(".js.disasm.txt", ".js.structure.md")))
    names = set()
    for body in bodies:
        for ins in body.instructions:
            if ins.op not in {"name", "getgname", "callname", "getintrinsic", "callintrinsic"}:
                continue
            name = reconstruct_js.parse_quoted(ins.arg)
            if name and IDENT.match(name) and name not in JS_BUILTINS | PREDEFINED:
                names.add(name)
    return sorted(names)


def main():
    output = Path(sys.argv[1] if len(sys.argv) > 1 else "/tmp/recovery-core").resolve()
    oracle = PROJECT / "tools/jsc_differential"
    if not oracle.exists():
        subprocess.run([str(PROJECT / "tools/build_jsc_differential.sh")], check=True)

    passed, failed = [], []
    with tempfile.TemporaryDirectory(prefix="sgscq-diff-") as temp_dir:
        temp = Path(temp_dir)
        for source_rel in CORE_SCRIPTS:
            candidate_rel = source_rel[:-4] + ".js"
            candidate = output / candidate_rel
            original = PROJECT / "Resources/assets" / source_rel
            disasm = PROJECT / "Recovered" / (source_rel[:-4] + ".js.disasm.txt")
            if not candidate.is_file() or not original.is_file() or not disasm.is_file():
                failed.append((source_rel, "missing candidate/original/disassembly"))
                continue

            names = globals_for(disasm)
            setup = PRELUDE + "\n" + "\n".join(
                "var {}=__mock({});".format(name, json.dumps(name)) for name in names
            ) + "\n"
            expression = 'JSON.stringify({xs:__norm(xs),calls:__calls})'
            setup_path, expression_path = temp / "setup.js", temp / "expression.js"
            setup_path.write_text(setup, encoding="utf-8")
            expression_path.write_text(expression, encoding="utf-8")

            check = subprocess.run(
                [str(oracle), str(original), str(candidate), str(setup_path), str(expression_path)],
                text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, check=False,
            )
            if check.returncode == 0:
                passed.append((source_rel, check.stdout.strip()))
            else:
                failed.append((source_rel, check.stdout.strip()))

        # Top-level equality alone does not exercise nested function bodies.
        # Run both ordinary and exception paths through the bytecode functions
        # whose branch stack merges exposed the earlier decompiler bug.
        original = PROJECT / "Resources/assets/src_jsc/Core/Utils/headers.jsc"
        candidate = output / "src_jsc/Core/Utils/headers.js"
        cases = [
            (
                "Core/Utils normal returns",
                PRELUDE + r'''
xsc.parseInt=function(v){return parseInt(v,10);};
xsc.warn=function(tag,msg){__calls.push(["warn",tag,msg]);};
xs.JsbConnecter={getInstance:function(){return {invoke:function(){return "41";}};}};
''',
                'JSON.stringify([xs.Core.Utils.Math.floorSafe(2.9),xs.Core.Utils.Math.roundSafe(2.4),xs.Core.Utils.Math.ceilSafe(2.1),xs.Core.Utils.FileSys.getFileDataSize("asset")])',
            ),
            (
                "Core/Utils catch returns",
                PRELUDE + r'''
xsc.parseInt=function(v){return parseInt(v,10);};
xsc.warn=function(tag,msg){__calls.push(["warn",tag,msg]);};
xs.JsbConnecter={getInstance:function(){return {invoke:function(){return "err";}};}};
Math.floor=function(){throw "floor-failure";};
Math.round=function(){throw "round-failure";};
Math.ceil=function(){throw "ceil-failure";};
''',
                'JSON.stringify([xs.Core.Utils.Math.floorSafe(2.9),xs.Core.Utils.Math.roundSafe(2.4),xs.Core.Utils.Math.ceilSafe(2.1),xs.Core.Utils.FileSys.getFileDataSize("asset"),__calls])',
            ),
        ]
        for index, (label, setup, expression) in enumerate(cases):
            setup_path = temp / "function_setup_{}.js".format(index)
            expression_path = temp / "function_expression_{}.js".format(index)
            setup_path.write_text(setup, encoding="utf-8")
            expression_path.write_text(expression, encoding="utf-8")
            check = subprocess.run(
                [str(oracle), str(original), str(candidate), str(setup_path), str(expression_path)],
                text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, check=False,
            )
            if check.returncode == 0:
                passed.append((label, check.stdout.strip()))
            else:
                failed.append((label, check.stdout.strip()))

        # JSOP_LAMBDA carries an inferred debugger label. It is still an
        # anonymous expression and must not create a lexical self-binding.
        # Calling the recovered core loader exposes this distinction: its
        # body must call the global JSB require, not recurse into itself.
        core_original = PROJECT / "Resources/assets/src_jsc/Core/headers.jsc"
        core_candidate = output / "src_jsc/Core/headers.js"
        setup_path = temp / "core_require_setup.js"
        expression_path = temp / "core_require_expression.js"
        setup_path.write_text(
            PRELUDE + '\nvar __required=[];\n'
            'require=function(path,global){__required.push([path,global]);};\n',
            encoding="utf-8",
        )
        expression_path.write_text(
            'xs.Core.require(["Core/Constant.js","Core/Utils/headers.js"],true);'
            'JSON.stringify({required:__required,coreKeys:Object.keys(xs.Core).sort()})',
            encoding="utf-8",
        )
        check = subprocess.run(
            [str(oracle), str(core_original), str(core_candidate), str(setup_path), str(expression_path)],
            text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, check=False,
        )
        if check.returncode == 0:
            passed.append(("Core.require global loader binding", check.stdout.strip()))
        else:
            failed.append(("Core.require global loader binding", check.stdout.strip()))

    print("semantic differential: {}/{} startup-chain module/function cases passed".format(
        len(passed), len(CORE_SCRIPTS) + 3))
    for source, result in passed:
        print("PASS {} — {}".format(source, result))
    for source, result in failed:
        print("FAIL {} — {}".format(source, result))
    return 0 if not failed else 1


if __name__ == "__main__":
    raise SystemExit(main())
