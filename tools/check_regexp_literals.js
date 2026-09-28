// 用 node 直接跑客户端 Base64 解码路径，专门抓 S4（正则字面量被丢成 undefined）。
//
// check_credential_roundtrip.js 对 S4 不敏感：干净 base64 里没有非法字符要清，
// 也没有 \r\n 要归一化，所以 undefined.replace(undefined, ...) 恰好是空操作。
// 这个脚本构造带非法字符 / 带 CRLF / 含 "undefined" 子串的输入，让 S4 必然暴露。
//
// 用法：
//   node tools/check_regexp_literals.js                    # 检查当前 ReconstructedJS
//   BASE_DIR=/tmp/before_ReconstructedJS node tools/check_regexp_literals.js
//     -> 在修复前的快照上必须失败，用来证明断言确实能抓住 S4。
const fs = require('fs');
const path = require('path');

const ROOT = process.env.BASE_DIR ||
  '/home/inkbottle/othersrc/android_playground/sgscq-reconstruction/ReconstructedJS';
const SRC = path.join(ROOT, 'src_jsc');

let failures = 0;
function check(name, ok, detail) {
  console.log('  ' + (ok ? 'OK   ' : 'FAIL ') + name + (detail ? '  ' + detail : ''));
  if (!ok) failures++;
}

console.log('=== 1) Base64.js 源码里必须存在被恢复的正则字面量 ===');
const base64Source = fs.readFileSync(path.join(SRC, 'Utils/Base64.js'), 'utf8');
const CLEAN_LITERAL = '/[^A-Za-z0-9\\+\\/\\=]/g';
const CRLF_LITERAL = '/\\r\\n/g';
check('Base64.js 含 ' + CLEAN_LITERAL, base64Source.includes(CLEAN_LITERAL));
check('Base64.js 含 ' + CRLF_LITERAL, base64Source.includes(CRLF_LITERAL));

console.log();
console.log('=== 2) 全树不得再有正则位置上的 undefined ===');
function walk(dir, out) {
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const p = path.join(dir, entry.name);
    if (entry.isDirectory()) walk(p, out);
    else if (entry.name.endsWith('.js')) out.push(p);
  }
  return out;
}
const undefinedCall = /\.(replace|test|match|search)\(\s*undefined/;
const leftovers = [];
for (const file of walk(ROOT, [])) {
  const text = fs.readFileSync(file, 'utf8');
  text.split('\n').forEach((line, i) => {
    if (undefinedCall.test(line)) leftovers.push(path.relative(ROOT, file) + ':' + (i + 1) + ' ' + line.trim());
  });
}
check('没有 replace/test/match/search(undefined) 残留', leftovers.length === 0, leftovers.slice(0, 3).join(' | '));

console.log();
console.log('=== 3) 解码路径行为（干净输入之外的脏输入） ===');
global.xs = { Utils: {} };
xs.Utils.isSet = (v) => v !== undefined && v !== null;
eval(fs.readFileSync(path.join(SRC, 'Utils/Base64.js'), 'utf8'));

const decode = (input) => xs.Utils.Base64WithUtf8.decode(input);
// 非法字符清洗：原实现 input.replace(/[^A-Za-z0-9+/=]/g, "")
check('decode("YWJj!!") 忽略非法字符 == "abc"', decode('YWJj!!') === 'abc', JSON.stringify(decode('YWJj!!')));
check('decode("YW Jj\\n") 忽略空白 == "abc"', decode('YW Jj\n') === 'abc', JSON.stringify(decode('YW Jj\n')));
// 定时炸弹：旧实现的 replace(undefined, "") 会把输入里字面量 "undefined" 删掉，
// 于是 decode("undefinedYWJ") 和 decode("YWJ") 得到同一个结果。
check('decode("undefinedYWJ") 不把 "undefined" 当替换目标',
      decode('undefinedYWJ') !== decode('YWJ'),
      'undefinedYWJ=' + JSON.stringify(decode('undefinedYWJ')) + ' YWJ=' + JSON.stringify(decode('YWJ')));

// _utf8_encode 的 CRLF 归一化：原实现 string.replace(/\r\n/g, "\n")
const enc = xs.Utils.Base64WithUtf8._utf8_encode('a\r\nb');
const dec = xs.Utils.Base64WithUtf8._utf8_decode(enc);
check('_utf8_encode 把 CRLF 归一化成 LF', dec === 'a\nb', JSON.stringify(dec));

console.log();
console.log(failures === 0 ? 'regexp literal checks: all OK' : 'regexp literal checks: ' + failures + ' failure(s)');
process.exit(failures === 0 ? 0 : 1);
