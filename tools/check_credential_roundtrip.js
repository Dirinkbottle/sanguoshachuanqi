// 用 node 直接跑客户端的 rc4 + Base64WithUtf8，验证往返是否成立。
const fs = require('fs');
const path = require('path');
const SRC = '/home/inkbottle/othersrc/android_playground/sgscq-reconstruction/ReconstructedJS/src_jsc';

global.xs = { Utils: {} };
xs.Utils.isSet = (v) => v !== undefined && v !== null;

function load(rel) {
  const code = fs.readFileSync(path.join(SRC, rel), 'utf8');
  eval(code);
}
load('Utils/Rc4.js');
load('Utils/Base64.js');

const KEY = 'bianfengsanguoshachuanqi';

function setLoginPsw(psw) {
  const _psw = xs.Utils.rc4(KEY, psw);
  return xs.Utils.Base64WithUtf8.encode(_psw);
}
function getLoginPsw(stored) {
  return xs.Utils.rc4(KEY, xs.Utils.Base64WithUtf8.decode(stored));
}

console.log('=== 1) Base64WithUtf8 自身往返 ===');
for (const sample of ['abc', 'a\u00E9b', '\u0000\u00FF\u0080']) {
  const enc = xs.Utils.Base64WithUtf8.encode(sample);
  const dec = xs.Utils.Base64WithUtf8.decode(enc);
  const ok = dec === sample;
  console.log('  ' + JSON.stringify(sample) + ' -> b64=' + JSON.stringify(enc) + ' -> ' + JSON.stringify(dec) + (ok ? '  OK' : '  ** 不一致 **'));
}

console.log();
console.log('=== 2) _utf8_encode / _utf8_decode 往返（RC4 输出就是 0-255 的字符） ===');
let utf8bad = 0;
for (let c = 0; c < 256; c++) {
  const s = String.fromCharCode(c);
  const e = xs.Utils.Base64WithUtf8._utf8_encode(s);
  const d = xs.Utils.Base64WithUtf8._utf8_decode(e);
  if (d !== s) { if (utf8bad < 5) console.log('  code ' + c + ': ' + JSON.stringify(e) + ' -> ' + JSON.stringify(d) + ' **'); utf8bad++; }
}
console.log('  256 个单字节字符中往返失败: ' + utf8bad);

console.log();
console.log('=== 3) 完整口令往返（setLoginPsw -> 存储 -> getLoginPsw） ===');
const pwds = ['hunter2', 'MySecret-123', 'passw0rd!@#$%^&*()', '\u5bc6\u7801abc123'];
for (const p of pwds) {
  const stored = setLoginPsw(p);
  const back = getLoginPsw(stored);
  console.log('  ' + JSON.stringify(p) + ' -> 存储 ' + JSON.stringify(stored) + ' -> 还原 ' + JSON.stringify(back) + (back === p ? '  OK' : '  ** 不一致 **'));
}

console.log();
console.log('=== 4) 和参考 RC4 对比（密钥 + 输入相同） ===');
function refRc4(key, str) {
  const s = []; let j = 0, res = '';
  for (let i = 0; i < 256; i++) s[i] = i;
  for (let i = 0; i < 256; i++) {
    j = (j + s[i] + key.charCodeAt(i % key.length)) % 256;
    [s[i], s[j]] = [s[j], s[i]];
  }
  let i = 0; j = 0;
  for (let y = 0; y < str.length; y++) {
    i = (i + 1) % 256;
    j = (j + s[i]) % 256;
    [s[i], s[j]] = [s[j], s[i]];
    res += String.fromCharCode(str.charCodeAt(y) ^ s[(s[i] + s[j]) % 256]);
  }
  return res;
}
let rcbad = 0;
for (const p of pwds) {
  const a = xs.Utils.rc4(KEY, p);
  const b = refRc4(KEY, p);
  if (a !== b) { console.log('  ' + JSON.stringify(p) + ' 客户端与参考不一致'); rcbad++; }
}
console.log('  rc4 与参考实现不一致的样本: ' + rcbad + ' / ' + pwds.length);
