# Reconstructed JavaScript tree

This tree contains approximate, source-informed JavaScript reconstructed from
the SpiderMonkey v22 bytecode listings in `../Recovered/`. It is not recovered
original source text. Unreliable regions are marked `TODO_BYTECODE` and each
module has a matching `.recovery.json` report.

## Layout and evidence

- `src_jsc/` and `data_cn_jsc/` retain the input directory layout.
- `load_order.md` and `dependencies.csv` preserve the recovered startup walk
  and literal module references.
- Opcode names, formats and static stack effects are read from
  `../toolchain/SpiderMonkey-v22/js/src/jsopcode.tbl` at reconstruction time.
- Branch, iterator and closure behavior was cross-checked against
  `jsinterp.cpp`, `jsopcode.cpp`, `jsopcode.tbl`, and `jsfriendapi.h` in that
  matching SpiderMonkey v22 source tree.
- `tools/reconstruct_js.py` builds basic blocks, propagates stack heights,
  simulates expressions and structures recognized conditionals, loops,
  iterator loops and switches.

## Validation

`validation_report.json` records parser results, dependency closure, weighted
opcode translation rate and modules needing manual review. Syntax validation
uses Node.js as a parser only; it does not execute the game or establish
compatibility with the older Cocos2d-x JavaScript runtime. Function bodies that
cannot be linked, exception/scope operations that cannot be reconstructed,
and any unsupported bytecode remain explicitly marked for review.

Re-run with:

```sh
python3 tools/reconstruct_js.py
python3 tools/validate_reconstructed.py
```
