(() => {
  var __defProp = Object.defineProperty;
  var __export = (target, all) => {
    for (var name in all)
      __defProp(target, name, { get: all[name], enumerable: true });
  };

  // frida-shim:node_modules/@frida/base64-js/index.js
  var lookup = [];
  var revLookup = [];
  var code = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  for (let i = 0, len = code.length; i < len; ++i) {
    lookup[i] = code[i];
    revLookup[code.charCodeAt(i)] = i;
  }
  revLookup["-".charCodeAt(0)] = 62;
  revLookup["_".charCodeAt(0)] = 63;
  function getLens(b64) {
    const len = b64.length;
    if (len % 4 > 0) {
      throw new Error("Invalid string. Length must be a multiple of 4");
    }
    let validLen = b64.indexOf("=");
    if (validLen === -1) validLen = len;
    const placeHoldersLen = validLen === len ? 0 : 4 - validLen % 4;
    return [validLen, placeHoldersLen];
  }
  function _byteLength(b64, validLen, placeHoldersLen) {
    return (validLen + placeHoldersLen) * 3 / 4 - placeHoldersLen;
  }
  function toByteArray(b64) {
    const lens = getLens(b64);
    const validLen = lens[0];
    const placeHoldersLen = lens[1];
    const arr = new Uint8Array(_byteLength(b64, validLen, placeHoldersLen));
    let curByte = 0;
    const len = placeHoldersLen > 0 ? validLen - 4 : validLen;
    let i;
    for (i = 0; i < len; i += 4) {
      const tmp = revLookup[b64.charCodeAt(i)] << 18 | revLookup[b64.charCodeAt(i + 1)] << 12 | revLookup[b64.charCodeAt(i + 2)] << 6 | revLookup[b64.charCodeAt(i + 3)];
      arr[curByte++] = tmp >> 16 & 255;
      arr[curByte++] = tmp >> 8 & 255;
      arr[curByte++] = tmp & 255;
    }
    if (placeHoldersLen === 2) {
      const tmp = revLookup[b64.charCodeAt(i)] << 2 | revLookup[b64.charCodeAt(i + 1)] >> 4;
      arr[curByte++] = tmp & 255;
    }
    if (placeHoldersLen === 1) {
      const tmp = revLookup[b64.charCodeAt(i)] << 10 | revLookup[b64.charCodeAt(i + 1)] << 4 | revLookup[b64.charCodeAt(i + 2)] >> 2;
      arr[curByte++] = tmp >> 8 & 255;
      arr[curByte++] = tmp & 255;
    }
    return arr;
  }
  function tripletToBase64(num) {
    return lookup[num >> 18 & 63] + lookup[num >> 12 & 63] + lookup[num >> 6 & 63] + lookup[num & 63];
  }
  function encodeChunk(uint8, start, end) {
    const output = [];
    for (let i = start; i < end; i += 3) {
      const tmp = (uint8[i] << 16 & 16711680) + (uint8[i + 1] << 8 & 65280) + (uint8[i + 2] & 255);
      output.push(tripletToBase64(tmp));
    }
    return output.join("");
  }
  function fromByteArray(uint8) {
    const len = uint8.length;
    const extraBytes = len % 3;
    const parts = [];
    const maxChunkLength = 16383;
    for (let i = 0, len2 = len - extraBytes; i < len2; i += maxChunkLength) {
      parts.push(encodeChunk(uint8, i, i + maxChunkLength > len2 ? len2 : i + maxChunkLength));
    }
    if (extraBytes === 1) {
      const tmp = uint8[len - 1];
      parts.push(
        lookup[tmp >> 2] + lookup[tmp << 4 & 63] + "=="
      );
    } else if (extraBytes === 2) {
      const tmp = (uint8[len - 2] << 8) + uint8[len - 1];
      parts.push(
        lookup[tmp >> 10] + lookup[tmp >> 4 & 63] + lookup[tmp << 2 & 63] + "="
      );
    }
    return parts.join("");
  }

  // frida-shim:node_modules/@frida/ieee754/index.js
  function read(buffer, offset, isLE, mLen, nBytes) {
    let e, m;
    const eLen = nBytes * 8 - mLen - 1;
    const eMax = (1 << eLen) - 1;
    const eBias = eMax >> 1;
    let nBits = -7;
    let i = isLE ? nBytes - 1 : 0;
    const d = isLE ? -1 : 1;
    let s = buffer[offset + i];
    i += d;
    e = s & (1 << -nBits) - 1;
    s >>= -nBits;
    nBits += eLen;
    while (nBits > 0) {
      e = e * 256 + buffer[offset + i];
      i += d;
      nBits -= 8;
    }
    m = e & (1 << -nBits) - 1;
    e >>= -nBits;
    nBits += mLen;
    while (nBits > 0) {
      m = m * 256 + buffer[offset + i];
      i += d;
      nBits -= 8;
    }
    if (e === 0) {
      e = 1 - eBias;
    } else if (e === eMax) {
      return m ? NaN : (s ? -1 : 1) * Infinity;
    } else {
      m = m + Math.pow(2, mLen);
      e = e - eBias;
    }
    return (s ? -1 : 1) * m * Math.pow(2, e - mLen);
  }
  function write(buffer, value, offset, isLE, mLen, nBytes) {
    let e, m, c;
    let eLen = nBytes * 8 - mLen - 1;
    const eMax = (1 << eLen) - 1;
    const eBias = eMax >> 1;
    const rt = mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0;
    let i = isLE ? 0 : nBytes - 1;
    const d = isLE ? 1 : -1;
    const s = value < 0 || value === 0 && 1 / value < 0 ? 1 : 0;
    value = Math.abs(value);
    if (isNaN(value) || value === Infinity) {
      m = isNaN(value) ? 1 : 0;
      e = eMax;
    } else {
      e = Math.floor(Math.log(value) / Math.LN2);
      if (value * (c = Math.pow(2, -e)) < 1) {
        e--;
        c *= 2;
      }
      if (e + eBias >= 1) {
        value += rt / c;
      } else {
        value += rt * Math.pow(2, 1 - eBias);
      }
      if (value * c >= 2) {
        e++;
        c /= 2;
      }
      if (e + eBias >= eMax) {
        m = 0;
        e = eMax;
      } else if (e + eBias >= 1) {
        m = (value * c - 1) * Math.pow(2, mLen);
        e = e + eBias;
      } else {
        m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen);
        e = 0;
      }
    }
    while (mLen >= 8) {
      buffer[offset + i] = m & 255;
      i += d;
      m /= 256;
      mLen -= 8;
    }
    e = e << mLen | m;
    eLen += mLen;
    while (eLen > 0) {
      buffer[offset + i] = e & 255;
      i += d;
      e /= 256;
      eLen -= 8;
    }
    buffer[offset + i - d] |= s * 128;
  }

  // frida-shim:node_modules/@frida/buffer/index.js
  var config = {
    INSPECT_MAX_BYTES: 50
  };
  var K_MAX_LENGTH = 2147483647;
  Buffer2.TYPED_ARRAY_SUPPORT = true;
  Object.defineProperty(Buffer2.prototype, "parent", {
    enumerable: true,
    get: function() {
      if (!Buffer2.isBuffer(this)) return void 0;
      return this.buffer;
    }
  });
  Object.defineProperty(Buffer2.prototype, "offset", {
    enumerable: true,
    get: function() {
      if (!Buffer2.isBuffer(this)) return void 0;
      return this.byteOffset;
    }
  });
  function createBuffer(length) {
    if (length > K_MAX_LENGTH) {
      throw new RangeError('The value "' + length + '" is invalid for option "size"');
    }
    const buf = new Uint8Array(length);
    Object.setPrototypeOf(buf, Buffer2.prototype);
    return buf;
  }
  function Buffer2(arg, encodingOrOffset, length) {
    if (typeof arg === "number") {
      if (typeof encodingOrOffset === "string") {
        throw new TypeError(
          'The "string" argument must be of type string. Received type number'
        );
      }
      return allocUnsafe(arg);
    }
    return from(arg, encodingOrOffset, length);
  }
  Buffer2.poolSize = 8192;
  function from(value, encodingOrOffset, length) {
    if (typeof value === "string") {
      return fromString(value, encodingOrOffset);
    }
    if (ArrayBuffer.isView(value)) {
      return fromArrayView(value);
    }
    if (value == null) {
      throw new TypeError(
        "The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type " + typeof value
      );
    }
    if (value instanceof ArrayBuffer || value && value.buffer instanceof ArrayBuffer) {
      return fromArrayBuffer(value, encodingOrOffset, length);
    }
    if (value instanceof SharedArrayBuffer || value && value.buffer instanceof SharedArrayBuffer) {
      return fromArrayBuffer(value, encodingOrOffset, length);
    }
    if (typeof value === "number") {
      throw new TypeError(
        'The "value" argument must not be of type number. Received type number'
      );
    }
    const valueOf = value.valueOf && value.valueOf();
    if (valueOf != null && valueOf !== value) {
      return Buffer2.from(valueOf, encodingOrOffset, length);
    }
    const b = fromObject(value);
    if (b) return b;
    if (typeof Symbol !== "undefined" && Symbol.toPrimitive != null && typeof value[Symbol.toPrimitive] === "function") {
      return Buffer2.from(value[Symbol.toPrimitive]("string"), encodingOrOffset, length);
    }
    throw new TypeError(
      "The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type " + typeof value
    );
  }
  Buffer2.from = function(value, encodingOrOffset, length) {
    return from(value, encodingOrOffset, length);
  };
  Object.setPrototypeOf(Buffer2.prototype, Uint8Array.prototype);
  Object.setPrototypeOf(Buffer2, Uint8Array);
  function assertSize(size) {
    if (typeof size !== "number") {
      throw new TypeError('"size" argument must be of type number');
    } else if (size < 0) {
      throw new RangeError('The value "' + size + '" is invalid for option "size"');
    }
  }
  function alloc(size, fill2, encoding) {
    assertSize(size);
    if (size <= 0) {
      return createBuffer(size);
    }
    if (fill2 !== void 0) {
      return typeof encoding === "string" ? createBuffer(size).fill(fill2, encoding) : createBuffer(size).fill(fill2);
    }
    return createBuffer(size);
  }
  Buffer2.alloc = function(size, fill2, encoding) {
    return alloc(size, fill2, encoding);
  };
  function allocUnsafe(size) {
    assertSize(size);
    return createBuffer(size < 0 ? 0 : checked(size) | 0);
  }
  Buffer2.allocUnsafe = function(size) {
    return allocUnsafe(size);
  };
  Buffer2.allocUnsafeSlow = function(size) {
    return allocUnsafe(size);
  };
  function fromString(string, encoding) {
    if (typeof encoding !== "string" || encoding === "") {
      encoding = "utf8";
    }
    if (!Buffer2.isEncoding(encoding)) {
      throw new TypeError("Unknown encoding: " + encoding);
    }
    const length = byteLength(string, encoding) | 0;
    let buf = createBuffer(length);
    const actual = buf.write(string, encoding);
    if (actual !== length) {
      buf = buf.slice(0, actual);
    }
    return buf;
  }
  function fromArrayLike(array) {
    const length = array.length < 0 ? 0 : checked(array.length) | 0;
    const buf = createBuffer(length);
    for (let i = 0; i < length; i += 1) {
      buf[i] = array[i] & 255;
    }
    return buf;
  }
  function fromArrayView(arrayView) {
    if (arrayView instanceof Uint8Array) {
      const copy2 = new Uint8Array(arrayView);
      return fromArrayBuffer(copy2.buffer, copy2.byteOffset, copy2.byteLength);
    }
    return fromArrayLike(arrayView);
  }
  function fromArrayBuffer(array, byteOffset, length) {
    if (byteOffset < 0 || array.byteLength < byteOffset) {
      throw new RangeError('"offset" is outside of buffer bounds');
    }
    if (array.byteLength < byteOffset + (length || 0)) {
      throw new RangeError('"length" is outside of buffer bounds');
    }
    let buf;
    if (byteOffset === void 0 && length === void 0) {
      buf = new Uint8Array(array);
    } else if (length === void 0) {
      buf = new Uint8Array(array, byteOffset);
    } else {
      buf = new Uint8Array(array, byteOffset, length);
    }
    Object.setPrototypeOf(buf, Buffer2.prototype);
    return buf;
  }
  function fromObject(obj) {
    if (Buffer2.isBuffer(obj)) {
      const len = checked(obj.length) | 0;
      const buf = createBuffer(len);
      if (buf.length === 0) {
        return buf;
      }
      obj.copy(buf, 0, 0, len);
      return buf;
    }
    if (obj.length !== void 0) {
      if (typeof obj.length !== "number" || Number.isNaN(obj.length)) {
        return createBuffer(0);
      }
      return fromArrayLike(obj);
    }
    if (obj.type === "Buffer" && Array.isArray(obj.data)) {
      return fromArrayLike(obj.data);
    }
  }
  function checked(length) {
    if (length >= K_MAX_LENGTH) {
      throw new RangeError("Attempt to allocate Buffer larger than maximum size: 0x" + K_MAX_LENGTH.toString(16) + " bytes");
    }
    return length | 0;
  }
  Buffer2.isBuffer = function isBuffer(b) {
    return b != null && b._isBuffer === true && b !== Buffer2.prototype;
  };
  Buffer2.compare = function compare(a, b) {
    if (a instanceof Uint8Array) a = Buffer2.from(a, a.offset, a.byteLength);
    if (b instanceof Uint8Array) b = Buffer2.from(b, b.offset, b.byteLength);
    if (!Buffer2.isBuffer(a) || !Buffer2.isBuffer(b)) {
      throw new TypeError(
        'The "buf1", "buf2" arguments must be one of type Buffer or Uint8Array'
      );
    }
    if (a === b) return 0;
    let x = a.length;
    let y = b.length;
    for (let i = 0, len = Math.min(x, y); i < len; ++i) {
      if (a[i] !== b[i]) {
        x = a[i];
        y = b[i];
        break;
      }
    }
    if (x < y) return -1;
    if (y < x) return 1;
    return 0;
  };
  Buffer2.isEncoding = function isEncoding(encoding) {
    switch (String(encoding).toLowerCase()) {
      case "hex":
      case "utf8":
      case "utf-8":
      case "ascii":
      case "latin1":
      case "binary":
      case "base64":
      case "ucs2":
      case "ucs-2":
      case "utf16le":
      case "utf-16le":
        return true;
      default:
        return false;
    }
  };
  Buffer2.concat = function concat(list, length) {
    if (!Array.isArray(list)) {
      throw new TypeError('"list" argument must be an Array of Buffers');
    }
    if (list.length === 0) {
      return Buffer2.alloc(0);
    }
    let i;
    if (length === void 0) {
      length = 0;
      for (i = 0; i < list.length; ++i) {
        length += list[i].length;
      }
    }
    const buffer = Buffer2.allocUnsafe(length);
    let pos = 0;
    for (i = 0; i < list.length; ++i) {
      let buf = list[i];
      if (buf instanceof Uint8Array) {
        if (pos + buf.length > buffer.length) {
          if (!Buffer2.isBuffer(buf)) {
            buf = Buffer2.from(buf.buffer, buf.byteOffset, buf.byteLength);
          }
          buf.copy(buffer, pos);
        } else {
          Uint8Array.prototype.set.call(
            buffer,
            buf,
            pos
          );
        }
      } else if (!Buffer2.isBuffer(buf)) {
        throw new TypeError('"list" argument must be an Array of Buffers');
      } else {
        buf.copy(buffer, pos);
      }
      pos += buf.length;
    }
    return buffer;
  };
  function byteLength(string, encoding) {
    if (Buffer2.isBuffer(string)) {
      return string.length;
    }
    if (ArrayBuffer.isView(string) || string instanceof ArrayBuffer) {
      return string.byteLength;
    }
    if (typeof string !== "string") {
      throw new TypeError(
        'The "string" argument must be one of type string, Buffer, or ArrayBuffer. Received type ' + typeof string
      );
    }
    const len = string.length;
    const mustMatch = arguments.length > 2 && arguments[2] === true;
    if (!mustMatch && len === 0) return 0;
    let loweredCase = false;
    for (; ; ) {
      switch (encoding) {
        case "ascii":
        case "latin1":
        case "binary":
          return len;
        case "utf8":
        case "utf-8":
          return utf8ToBytes(string).length;
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
          return len * 2;
        case "hex":
          return len >>> 1;
        case "base64":
          return base64ToBytes(string).length;
        default:
          if (loweredCase) {
            return mustMatch ? -1 : utf8ToBytes(string).length;
          }
          encoding = ("" + encoding).toLowerCase();
          loweredCase = true;
      }
    }
  }
  Buffer2.byteLength = byteLength;
  function slowToString(encoding, start, end) {
    let loweredCase = false;
    if (start === void 0 || start < 0) {
      start = 0;
    }
    if (start > this.length) {
      return "";
    }
    if (end === void 0 || end > this.length) {
      end = this.length;
    }
    if (end <= 0) {
      return "";
    }
    end >>>= 0;
    start >>>= 0;
    if (end <= start) {
      return "";
    }
    if (!encoding) encoding = "utf8";
    while (true) {
      switch (encoding) {
        case "hex":
          return hexSlice(this, start, end);
        case "utf8":
        case "utf-8":
          return utf8Slice(this, start, end);
        case "ascii":
          return asciiSlice(this, start, end);
        case "latin1":
        case "binary":
          return latin1Slice(this, start, end);
        case "base64":
          return base64Slice(this, start, end);
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
          return utf16leSlice(this, start, end);
        default:
          if (loweredCase) throw new TypeError("Unknown encoding: " + encoding);
          encoding = (encoding + "").toLowerCase();
          loweredCase = true;
      }
    }
  }
  Buffer2.prototype._isBuffer = true;
  function swap(b, n, m) {
    const i = b[n];
    b[n] = b[m];
    b[m] = i;
  }
  Buffer2.prototype.swap16 = function swap16() {
    const len = this.length;
    if (len % 2 !== 0) {
      throw new RangeError("Buffer size must be a multiple of 16-bits");
    }
    for (let i = 0; i < len; i += 2) {
      swap(this, i, i + 1);
    }
    return this;
  };
  Buffer2.prototype.swap32 = function swap32() {
    const len = this.length;
    if (len % 4 !== 0) {
      throw new RangeError("Buffer size must be a multiple of 32-bits");
    }
    for (let i = 0; i < len; i += 4) {
      swap(this, i, i + 3);
      swap(this, i + 1, i + 2);
    }
    return this;
  };
  Buffer2.prototype.swap64 = function swap64() {
    const len = this.length;
    if (len % 8 !== 0) {
      throw new RangeError("Buffer size must be a multiple of 64-bits");
    }
    for (let i = 0; i < len; i += 8) {
      swap(this, i, i + 7);
      swap(this, i + 1, i + 6);
      swap(this, i + 2, i + 5);
      swap(this, i + 3, i + 4);
    }
    return this;
  };
  Buffer2.prototype.toString = function toString() {
    const length = this.length;
    if (length === 0) return "";
    if (arguments.length === 0) return utf8Slice(this, 0, length);
    return slowToString.apply(this, arguments);
  };
  Buffer2.prototype.toLocaleString = Buffer2.prototype.toString;
  Buffer2.prototype.equals = function equals(b) {
    if (!Buffer2.isBuffer(b)) throw new TypeError("Argument must be a Buffer");
    if (this === b) return true;
    return Buffer2.compare(this, b) === 0;
  };
  Buffer2.prototype.inspect = function inspect() {
    let str = "";
    const max = config.INSPECT_MAX_BYTES;
    str = this.toString("hex", 0, max).replace(/(.{2})/g, "$1 ").trim();
    if (this.length > max) str += " ... ";
    return "<Buffer " + str + ">";
  };
  Buffer2.prototype[Symbol.for("nodejs.util.inspect.custom")] = Buffer2.prototype.inspect;
  Buffer2.prototype.compare = function compare2(target, start, end, thisStart, thisEnd) {
    if (target instanceof Uint8Array) {
      target = Buffer2.from(target, target.offset, target.byteLength);
    }
    if (!Buffer2.isBuffer(target)) {
      throw new TypeError(
        'The "target" argument must be one of type Buffer or Uint8Array. Received type ' + typeof target
      );
    }
    if (start === void 0) {
      start = 0;
    }
    if (end === void 0) {
      end = target ? target.length : 0;
    }
    if (thisStart === void 0) {
      thisStart = 0;
    }
    if (thisEnd === void 0) {
      thisEnd = this.length;
    }
    if (start < 0 || end > target.length || thisStart < 0 || thisEnd > this.length) {
      throw new RangeError("out of range index");
    }
    if (thisStart >= thisEnd && start >= end) {
      return 0;
    }
    if (thisStart >= thisEnd) {
      return -1;
    }
    if (start >= end) {
      return 1;
    }
    start >>>= 0;
    end >>>= 0;
    thisStart >>>= 0;
    thisEnd >>>= 0;
    if (this === target) return 0;
    let x = thisEnd - thisStart;
    let y = end - start;
    const len = Math.min(x, y);
    const thisCopy = this.slice(thisStart, thisEnd);
    const targetCopy = target.slice(start, end);
    for (let i = 0; i < len; ++i) {
      if (thisCopy[i] !== targetCopy[i]) {
        x = thisCopy[i];
        y = targetCopy[i];
        break;
      }
    }
    if (x < y) return -1;
    if (y < x) return 1;
    return 0;
  };
  function bidirectionalIndexOf(buffer, val, byteOffset, encoding, dir) {
    if (buffer.length === 0) return -1;
    if (typeof byteOffset === "string") {
      encoding = byteOffset;
      byteOffset = 0;
    } else if (byteOffset > 2147483647) {
      byteOffset = 2147483647;
    } else if (byteOffset < -2147483648) {
      byteOffset = -2147483648;
    }
    byteOffset = +byteOffset;
    if (Number.isNaN(byteOffset)) {
      byteOffset = dir ? 0 : buffer.length - 1;
    }
    if (byteOffset < 0) byteOffset = buffer.length + byteOffset;
    if (byteOffset >= buffer.length) {
      if (dir) return -1;
      else byteOffset = buffer.length - 1;
    } else if (byteOffset < 0) {
      if (dir) byteOffset = 0;
      else return -1;
    }
    if (typeof val === "string") {
      val = Buffer2.from(val, encoding);
    }
    if (Buffer2.isBuffer(val)) {
      if (val.length === 0) {
        return -1;
      }
      return arrayIndexOf(buffer, val, byteOffset, encoding, dir);
    } else if (typeof val === "number") {
      val = val & 255;
      if (typeof Uint8Array.prototype.indexOf === "function") {
        if (dir) {
          return Uint8Array.prototype.indexOf.call(buffer, val, byteOffset);
        } else {
          return Uint8Array.prototype.lastIndexOf.call(buffer, val, byteOffset);
        }
      }
      return arrayIndexOf(buffer, [val], byteOffset, encoding, dir);
    }
    throw new TypeError("val must be string, number or Buffer");
  }
  function arrayIndexOf(arr, val, byteOffset, encoding, dir) {
    let indexSize = 1;
    let arrLength = arr.length;
    let valLength = val.length;
    if (encoding !== void 0) {
      encoding = String(encoding).toLowerCase();
      if (encoding === "ucs2" || encoding === "ucs-2" || encoding === "utf16le" || encoding === "utf-16le") {
        if (arr.length < 2 || val.length < 2) {
          return -1;
        }
        indexSize = 2;
        arrLength /= 2;
        valLength /= 2;
        byteOffset /= 2;
      }
    }
    function read2(buf, i2) {
      if (indexSize === 1) {
        return buf[i2];
      } else {
        return buf.readUInt16BE(i2 * indexSize);
      }
    }
    let i;
    if (dir) {
      let foundIndex = -1;
      for (i = byteOffset; i < arrLength; i++) {
        if (read2(arr, i) === read2(val, foundIndex === -1 ? 0 : i - foundIndex)) {
          if (foundIndex === -1) foundIndex = i;
          if (i - foundIndex + 1 === valLength) return foundIndex * indexSize;
        } else {
          if (foundIndex !== -1) i -= i - foundIndex;
          foundIndex = -1;
        }
      }
    } else {
      if (byteOffset + valLength > arrLength) byteOffset = arrLength - valLength;
      for (i = byteOffset; i >= 0; i--) {
        let found = true;
        for (let j = 0; j < valLength; j++) {
          if (read2(arr, i + j) !== read2(val, j)) {
            found = false;
            break;
          }
        }
        if (found) return i;
      }
    }
    return -1;
  }
  Buffer2.prototype.includes = function includes(val, byteOffset, encoding) {
    return this.indexOf(val, byteOffset, encoding) !== -1;
  };
  Buffer2.prototype.indexOf = function indexOf(val, byteOffset, encoding) {
    return bidirectionalIndexOf(this, val, byteOffset, encoding, true);
  };
  Buffer2.prototype.lastIndexOf = function lastIndexOf(val, byteOffset, encoding) {
    return bidirectionalIndexOf(this, val, byteOffset, encoding, false);
  };
  function hexWrite(buf, string, offset, length) {
    offset = Number(offset) || 0;
    const remaining = buf.length - offset;
    if (!length) {
      length = remaining;
    } else {
      length = Number(length);
      if (length > remaining) {
        length = remaining;
      }
    }
    const strLen = string.length;
    if (length > strLen / 2) {
      length = strLen / 2;
    }
    let i;
    for (i = 0; i < length; ++i) {
      const parsed = parseInt(string.substr(i * 2, 2), 16);
      if (Number.isNaN(parsed)) return i;
      buf[offset + i] = parsed;
    }
    return i;
  }
  function utf8Write(buf, string, offset, length) {
    return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length);
  }
  function asciiWrite(buf, string, offset, length) {
    return blitBuffer(asciiToBytes(string), buf, offset, length);
  }
  function base64Write(buf, string, offset, length) {
    return blitBuffer(base64ToBytes(string), buf, offset, length);
  }
  function ucs2Write(buf, string, offset, length) {
    return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length);
  }
  Buffer2.prototype.write = function write2(string, offset, length, encoding) {
    if (offset === void 0) {
      encoding = "utf8";
      length = this.length;
      offset = 0;
    } else if (length === void 0 && typeof offset === "string") {
      encoding = offset;
      length = this.length;
      offset = 0;
    } else if (isFinite(offset)) {
      offset = offset >>> 0;
      if (isFinite(length)) {
        length = length >>> 0;
        if (encoding === void 0) encoding = "utf8";
      } else {
        encoding = length;
        length = void 0;
      }
    } else {
      throw new Error(
        "Buffer.write(string, encoding, offset[, length]) is no longer supported"
      );
    }
    const remaining = this.length - offset;
    if (length === void 0 || length > remaining) length = remaining;
    if (string.length > 0 && (length < 0 || offset < 0) || offset > this.length) {
      throw new RangeError("Attempt to write outside buffer bounds");
    }
    if (!encoding) encoding = "utf8";
    let loweredCase = false;
    for (; ; ) {
      switch (encoding) {
        case "hex":
          return hexWrite(this, string, offset, length);
        case "utf8":
        case "utf-8":
          return utf8Write(this, string, offset, length);
        case "ascii":
        case "latin1":
        case "binary":
          return asciiWrite(this, string, offset, length);
        case "base64":
          return base64Write(this, string, offset, length);
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
          return ucs2Write(this, string, offset, length);
        default:
          if (loweredCase) throw new TypeError("Unknown encoding: " + encoding);
          encoding = ("" + encoding).toLowerCase();
          loweredCase = true;
      }
    }
  };
  Buffer2.prototype.toJSON = function toJSON() {
    return {
      type: "Buffer",
      data: Array.prototype.slice.call(this._arr || this, 0)
    };
  };
  function base64Slice(buf, start, end) {
    if (start === 0 && end === buf.length) {
      return fromByteArray(buf);
    } else {
      return fromByteArray(buf.slice(start, end));
    }
  }
  function utf8Slice(buf, start, end) {
    end = Math.min(buf.length, end);
    const res = [];
    let i = start;
    while (i < end) {
      const firstByte = buf[i];
      let codePoint = null;
      let bytesPerSequence = firstByte > 239 ? 4 : firstByte > 223 ? 3 : firstByte > 191 ? 2 : 1;
      if (i + bytesPerSequence <= end) {
        let secondByte, thirdByte, fourthByte, tempCodePoint;
        switch (bytesPerSequence) {
          case 1:
            if (firstByte < 128) {
              codePoint = firstByte;
            }
            break;
          case 2:
            secondByte = buf[i + 1];
            if ((secondByte & 192) === 128) {
              tempCodePoint = (firstByte & 31) << 6 | secondByte & 63;
              if (tempCodePoint > 127) {
                codePoint = tempCodePoint;
              }
            }
            break;
          case 3:
            secondByte = buf[i + 1];
            thirdByte = buf[i + 2];
            if ((secondByte & 192) === 128 && (thirdByte & 192) === 128) {
              tempCodePoint = (firstByte & 15) << 12 | (secondByte & 63) << 6 | thirdByte & 63;
              if (tempCodePoint > 2047 && (tempCodePoint < 55296 || tempCodePoint > 57343)) {
                codePoint = tempCodePoint;
              }
            }
            break;
          case 4:
            secondByte = buf[i + 1];
            thirdByte = buf[i + 2];
            fourthByte = buf[i + 3];
            if ((secondByte & 192) === 128 && (thirdByte & 192) === 128 && (fourthByte & 192) === 128) {
              tempCodePoint = (firstByte & 15) << 18 | (secondByte & 63) << 12 | (thirdByte & 63) << 6 | fourthByte & 63;
              if (tempCodePoint > 65535 && tempCodePoint < 1114112) {
                codePoint = tempCodePoint;
              }
            }
        }
      }
      if (codePoint === null) {
        codePoint = 65533;
        bytesPerSequence = 1;
      } else if (codePoint > 65535) {
        codePoint -= 65536;
        res.push(codePoint >>> 10 & 1023 | 55296);
        codePoint = 56320 | codePoint & 1023;
      }
      res.push(codePoint);
      i += bytesPerSequence;
    }
    return decodeCodePointsArray(res);
  }
  var MAX_ARGUMENTS_LENGTH = 4096;
  function decodeCodePointsArray(codePoints) {
    const len = codePoints.length;
    if (len <= MAX_ARGUMENTS_LENGTH) {
      return String.fromCharCode.apply(String, codePoints);
    }
    let res = "";
    let i = 0;
    while (i < len) {
      res += String.fromCharCode.apply(
        String,
        codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
      );
    }
    return res;
  }
  function asciiSlice(buf, start, end) {
    let ret = "";
    end = Math.min(buf.length, end);
    for (let i = start; i < end; ++i) {
      ret += String.fromCharCode(buf[i] & 127);
    }
    return ret;
  }
  function latin1Slice(buf, start, end) {
    let ret = "";
    end = Math.min(buf.length, end);
    for (let i = start; i < end; ++i) {
      ret += String.fromCharCode(buf[i]);
    }
    return ret;
  }
  function hexSlice(buf, start, end) {
    const len = buf.length;
    if (!start || start < 0) start = 0;
    if (!end || end < 0 || end > len) end = len;
    let out = "";
    for (let i = start; i < end; ++i) {
      out += hexSliceLookupTable[buf[i]];
    }
    return out;
  }
  function utf16leSlice(buf, start, end) {
    const bytes = buf.slice(start, end);
    let res = "";
    for (let i = 0; i < bytes.length - 1; i += 2) {
      res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256);
    }
    return res;
  }
  Buffer2.prototype.slice = function slice(start, end) {
    const len = this.length;
    start = ~~start;
    end = end === void 0 ? len : ~~end;
    if (start < 0) {
      start += len;
      if (start < 0) start = 0;
    } else if (start > len) {
      start = len;
    }
    if (end < 0) {
      end += len;
      if (end < 0) end = 0;
    } else if (end > len) {
      end = len;
    }
    if (end < start) end = start;
    const newBuf = this.subarray(start, end);
    Object.setPrototypeOf(newBuf, Buffer2.prototype);
    return newBuf;
  };
  function checkOffset(offset, ext, length) {
    if (offset % 1 !== 0 || offset < 0) throw new RangeError("offset is not uint");
    if (offset + ext > length) throw new RangeError("Trying to access beyond buffer length");
  }
  Buffer2.prototype.readUintLE = Buffer2.prototype.readUIntLE = function readUIntLE(offset, byteLength2, noAssert) {
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength2, this.length);
    let val = this[offset];
    let mul = 1;
    let i = 0;
    while (++i < byteLength2 && (mul *= 256)) {
      val += this[offset + i] * mul;
    }
    return val;
  };
  Buffer2.prototype.readUintBE = Buffer2.prototype.readUIntBE = function readUIntBE(offset, byteLength2, noAssert) {
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) {
      checkOffset(offset, byteLength2, this.length);
    }
    let val = this[offset + --byteLength2];
    let mul = 1;
    while (byteLength2 > 0 && (mul *= 256)) {
      val += this[offset + --byteLength2] * mul;
    }
    return val;
  };
  Buffer2.prototype.readUint8 = Buffer2.prototype.readUInt8 = function readUInt8(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 1, this.length);
    return this[offset];
  };
  Buffer2.prototype.readUint16LE = Buffer2.prototype.readUInt16LE = function readUInt16LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    return this[offset] | this[offset + 1] << 8;
  };
  Buffer2.prototype.readUint16BE = Buffer2.prototype.readUInt16BE = function readUInt16BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    return this[offset] << 8 | this[offset + 1];
  };
  Buffer2.prototype.readUint32LE = Buffer2.prototype.readUInt32LE = function readUInt32LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return (this[offset] | this[offset + 1] << 8 | this[offset + 2] << 16) + this[offset + 3] * 16777216;
  };
  Buffer2.prototype.readUint32BE = Buffer2.prototype.readUInt32BE = function readUInt32BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] * 16777216 + (this[offset + 1] << 16 | this[offset + 2] << 8 | this[offset + 3]);
  };
  Buffer2.prototype.readBigUInt64LE = function readBigUInt64LE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === void 0 || last === void 0) {
      boundsError(offset, this.length - 8);
    }
    const lo = first + this[++offset] * 2 ** 8 + this[++offset] * 2 ** 16 + this[++offset] * 2 ** 24;
    const hi = this[++offset] + this[++offset] * 2 ** 8 + this[++offset] * 2 ** 16 + last * 2 ** 24;
    return BigInt(lo) + (BigInt(hi) << BigInt(32));
  };
  Buffer2.prototype.readBigUInt64BE = function readBigUInt64BE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === void 0 || last === void 0) {
      boundsError(offset, this.length - 8);
    }
    const hi = first * 2 ** 24 + this[++offset] * 2 ** 16 + this[++offset] * 2 ** 8 + this[++offset];
    const lo = this[++offset] * 2 ** 24 + this[++offset] * 2 ** 16 + this[++offset] * 2 ** 8 + last;
    return (BigInt(hi) << BigInt(32)) + BigInt(lo);
  };
  Buffer2.prototype.readIntLE = function readIntLE(offset, byteLength2, noAssert) {
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength2, this.length);
    let val = this[offset];
    let mul = 1;
    let i = 0;
    while (++i < byteLength2 && (mul *= 256)) {
      val += this[offset + i] * mul;
    }
    mul *= 128;
    if (val >= mul) val -= Math.pow(2, 8 * byteLength2);
    return val;
  };
  Buffer2.prototype.readIntBE = function readIntBE(offset, byteLength2, noAssert) {
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength2, this.length);
    let i = byteLength2;
    let mul = 1;
    let val = this[offset + --i];
    while (i > 0 && (mul *= 256)) {
      val += this[offset + --i] * mul;
    }
    mul *= 128;
    if (val >= mul) val -= Math.pow(2, 8 * byteLength2);
    return val;
  };
  Buffer2.prototype.readInt8 = function readInt8(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 1, this.length);
    if (!(this[offset] & 128)) return this[offset];
    return (255 - this[offset] + 1) * -1;
  };
  Buffer2.prototype.readInt16LE = function readInt16LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    const val = this[offset] | this[offset + 1] << 8;
    return val & 32768 ? val | 4294901760 : val;
  };
  Buffer2.prototype.readInt16BE = function readInt16BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    const val = this[offset + 1] | this[offset] << 8;
    return val & 32768 ? val | 4294901760 : val;
  };
  Buffer2.prototype.readInt32LE = function readInt32LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] | this[offset + 1] << 8 | this[offset + 2] << 16 | this[offset + 3] << 24;
  };
  Buffer2.prototype.readInt32BE = function readInt32BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] << 24 | this[offset + 1] << 16 | this[offset + 2] << 8 | this[offset + 3];
  };
  Buffer2.prototype.readBigInt64LE = function readBigInt64LE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === void 0 || last === void 0) {
      boundsError(offset, this.length - 8);
    }
    const val = this[offset + 4] + this[offset + 5] * 2 ** 8 + this[offset + 6] * 2 ** 16 + (last << 24);
    return (BigInt(val) << BigInt(32)) + BigInt(first + this[++offset] * 2 ** 8 + this[++offset] * 2 ** 16 + this[++offset] * 2 ** 24);
  };
  Buffer2.prototype.readBigInt64BE = function readBigInt64BE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === void 0 || last === void 0) {
      boundsError(offset, this.length - 8);
    }
    const val = (first << 24) + // Overflow
    this[++offset] * 2 ** 16 + this[++offset] * 2 ** 8 + this[++offset];
    return (BigInt(val) << BigInt(32)) + BigInt(this[++offset] * 2 ** 24 + this[++offset] * 2 ** 16 + this[++offset] * 2 ** 8 + last);
  };
  Buffer2.prototype.readFloatLE = function readFloatLE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return read(this, offset, true, 23, 4);
  };
  Buffer2.prototype.readFloatBE = function readFloatBE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return read(this, offset, false, 23, 4);
  };
  Buffer2.prototype.readDoubleLE = function readDoubleLE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 8, this.length);
    return read(this, offset, true, 52, 8);
  };
  Buffer2.prototype.readDoubleBE = function readDoubleBE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 8, this.length);
    return read(this, offset, false, 52, 8);
  };
  function checkInt(buf, value, offset, ext, max, min) {
    if (!Buffer2.isBuffer(buf)) throw new TypeError('"buffer" argument must be a Buffer instance');
    if (value > max || value < min) throw new RangeError('"value" argument is out of bounds');
    if (offset + ext > buf.length) throw new RangeError("Index out of range");
  }
  Buffer2.prototype.writeUintLE = Buffer2.prototype.writeUIntLE = function writeUIntLE(value, offset, byteLength2, noAssert) {
    value = +value;
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) {
      const maxBytes = Math.pow(2, 8 * byteLength2) - 1;
      checkInt(this, value, offset, byteLength2, maxBytes, 0);
    }
    let mul = 1;
    let i = 0;
    this[offset] = value & 255;
    while (++i < byteLength2 && (mul *= 256)) {
      this[offset + i] = value / mul & 255;
    }
    return offset + byteLength2;
  };
  Buffer2.prototype.writeUintBE = Buffer2.prototype.writeUIntBE = function writeUIntBE(value, offset, byteLength2, noAssert) {
    value = +value;
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) {
      const maxBytes = Math.pow(2, 8 * byteLength2) - 1;
      checkInt(this, value, offset, byteLength2, maxBytes, 0);
    }
    let i = byteLength2 - 1;
    let mul = 1;
    this[offset + i] = value & 255;
    while (--i >= 0 && (mul *= 256)) {
      this[offset + i] = value / mul & 255;
    }
    return offset + byteLength2;
  };
  Buffer2.prototype.writeUint8 = Buffer2.prototype.writeUInt8 = function writeUInt8(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 1, 255, 0);
    this[offset] = value & 255;
    return offset + 1;
  };
  Buffer2.prototype.writeUint16LE = Buffer2.prototype.writeUInt16LE = function writeUInt16LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 65535, 0);
    this[offset] = value & 255;
    this[offset + 1] = value >>> 8;
    return offset + 2;
  };
  Buffer2.prototype.writeUint16BE = Buffer2.prototype.writeUInt16BE = function writeUInt16BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 65535, 0);
    this[offset] = value >>> 8;
    this[offset + 1] = value & 255;
    return offset + 2;
  };
  Buffer2.prototype.writeUint32LE = Buffer2.prototype.writeUInt32LE = function writeUInt32LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 4294967295, 0);
    this[offset + 3] = value >>> 24;
    this[offset + 2] = value >>> 16;
    this[offset + 1] = value >>> 8;
    this[offset] = value & 255;
    return offset + 4;
  };
  Buffer2.prototype.writeUint32BE = Buffer2.prototype.writeUInt32BE = function writeUInt32BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 4294967295, 0);
    this[offset] = value >>> 24;
    this[offset + 1] = value >>> 16;
    this[offset + 2] = value >>> 8;
    this[offset + 3] = value & 255;
    return offset + 4;
  };
  function wrtBigUInt64LE(buf, value, offset, min, max) {
    checkIntBI(value, min, max, buf, offset, 7);
    let lo = Number(value & BigInt(4294967295));
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    let hi = Number(value >> BigInt(32) & BigInt(4294967295));
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    return offset;
  }
  function wrtBigUInt64BE(buf, value, offset, min, max) {
    checkIntBI(value, min, max, buf, offset, 7);
    let lo = Number(value & BigInt(4294967295));
    buf[offset + 7] = lo;
    lo = lo >> 8;
    buf[offset + 6] = lo;
    lo = lo >> 8;
    buf[offset + 5] = lo;
    lo = lo >> 8;
    buf[offset + 4] = lo;
    let hi = Number(value >> BigInt(32) & BigInt(4294967295));
    buf[offset + 3] = hi;
    hi = hi >> 8;
    buf[offset + 2] = hi;
    hi = hi >> 8;
    buf[offset + 1] = hi;
    hi = hi >> 8;
    buf[offset] = hi;
    return offset + 8;
  }
  Buffer2.prototype.writeBigUInt64LE = function writeBigUInt64LE(value, offset = 0) {
    return wrtBigUInt64LE(this, value, offset, BigInt(0), BigInt("0xffffffffffffffff"));
  };
  Buffer2.prototype.writeBigUInt64BE = function writeBigUInt64BE(value, offset = 0) {
    return wrtBigUInt64BE(this, value, offset, BigInt(0), BigInt("0xffffffffffffffff"));
  };
  Buffer2.prototype.writeIntLE = function writeIntLE(value, offset, byteLength2, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
      const limit = Math.pow(2, 8 * byteLength2 - 1);
      checkInt(this, value, offset, byteLength2, limit - 1, -limit);
    }
    let i = 0;
    let mul = 1;
    let sub = 0;
    this[offset] = value & 255;
    while (++i < byteLength2 && (mul *= 256)) {
      if (value < 0 && sub === 0 && this[offset + i - 1] !== 0) {
        sub = 1;
      }
      this[offset + i] = (value / mul >> 0) - sub & 255;
    }
    return offset + byteLength2;
  };
  Buffer2.prototype.writeIntBE = function writeIntBE(value, offset, byteLength2, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
      const limit = Math.pow(2, 8 * byteLength2 - 1);
      checkInt(this, value, offset, byteLength2, limit - 1, -limit);
    }
    let i = byteLength2 - 1;
    let mul = 1;
    let sub = 0;
    this[offset + i] = value & 255;
    while (--i >= 0 && (mul *= 256)) {
      if (value < 0 && sub === 0 && this[offset + i + 1] !== 0) {
        sub = 1;
      }
      this[offset + i] = (value / mul >> 0) - sub & 255;
    }
    return offset + byteLength2;
  };
  Buffer2.prototype.writeInt8 = function writeInt8(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 1, 127, -128);
    if (value < 0) value = 255 + value + 1;
    this[offset] = value & 255;
    return offset + 1;
  };
  Buffer2.prototype.writeInt16LE = function writeInt16LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 32767, -32768);
    this[offset] = value & 255;
    this[offset + 1] = value >>> 8;
    return offset + 2;
  };
  Buffer2.prototype.writeInt16BE = function writeInt16BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 32767, -32768);
    this[offset] = value >>> 8;
    this[offset + 1] = value & 255;
    return offset + 2;
  };
  Buffer2.prototype.writeInt32LE = function writeInt32LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 2147483647, -2147483648);
    this[offset] = value & 255;
    this[offset + 1] = value >>> 8;
    this[offset + 2] = value >>> 16;
    this[offset + 3] = value >>> 24;
    return offset + 4;
  };
  Buffer2.prototype.writeInt32BE = function writeInt32BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 2147483647, -2147483648);
    if (value < 0) value = 4294967295 + value + 1;
    this[offset] = value >>> 24;
    this[offset + 1] = value >>> 16;
    this[offset + 2] = value >>> 8;
    this[offset + 3] = value & 255;
    return offset + 4;
  };
  Buffer2.prototype.writeBigInt64LE = function writeBigInt64LE(value, offset = 0) {
    return wrtBigUInt64LE(this, value, offset, -BigInt("0x8000000000000000"), BigInt("0x7fffffffffffffff"));
  };
  Buffer2.prototype.writeBigInt64BE = function writeBigInt64BE(value, offset = 0) {
    return wrtBigUInt64BE(this, value, offset, -BigInt("0x8000000000000000"), BigInt("0x7fffffffffffffff"));
  };
  function checkIEEE754(buf, value, offset, ext, max, min) {
    if (offset + ext > buf.length) throw new RangeError("Index out of range");
    if (offset < 0) throw new RangeError("Index out of range");
  }
  function writeFloat(buf, value, offset, littleEndian, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
      checkIEEE754(buf, value, offset, 4, 34028234663852886e22, -34028234663852886e22);
    }
    write(buf, value, offset, littleEndian, 23, 4);
    return offset + 4;
  }
  Buffer2.prototype.writeFloatLE = function writeFloatLE(value, offset, noAssert) {
    return writeFloat(this, value, offset, true, noAssert);
  };
  Buffer2.prototype.writeFloatBE = function writeFloatBE(value, offset, noAssert) {
    return writeFloat(this, value, offset, false, noAssert);
  };
  function writeDouble(buf, value, offset, littleEndian, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
      checkIEEE754(buf, value, offset, 8, 17976931348623157e292, -17976931348623157e292);
    }
    write(buf, value, offset, littleEndian, 52, 8);
    return offset + 8;
  }
  Buffer2.prototype.writeDoubleLE = function writeDoubleLE(value, offset, noAssert) {
    return writeDouble(this, value, offset, true, noAssert);
  };
  Buffer2.prototype.writeDoubleBE = function writeDoubleBE(value, offset, noAssert) {
    return writeDouble(this, value, offset, false, noAssert);
  };
  Buffer2.prototype.copy = function copy(target, targetStart, start, end) {
    if (!Buffer2.isBuffer(target)) throw new TypeError("argument should be a Buffer");
    if (!start) start = 0;
    if (!end && end !== 0) end = this.length;
    if (targetStart >= target.length) targetStart = target.length;
    if (!targetStart) targetStart = 0;
    if (end > 0 && end < start) end = start;
    if (end === start) return 0;
    if (target.length === 0 || this.length === 0) return 0;
    if (targetStart < 0) {
      throw new RangeError("targetStart out of bounds");
    }
    if (start < 0 || start >= this.length) throw new RangeError("Index out of range");
    if (end < 0) throw new RangeError("sourceEnd out of bounds");
    if (end > this.length) end = this.length;
    if (target.length - targetStart < end - start) {
      end = target.length - targetStart + start;
    }
    const len = end - start;
    if (this === target) {
      this.copyWithin(targetStart, start, end);
    } else {
      Uint8Array.prototype.set.call(
        target,
        this.subarray(start, end),
        targetStart
      );
    }
    return len;
  };
  Buffer2.prototype.fill = function fill(val, start, end, encoding) {
    if (typeof val === "string") {
      if (typeof start === "string") {
        encoding = start;
        start = 0;
        end = this.length;
      } else if (typeof end === "string") {
        encoding = end;
        end = this.length;
      }
      if (encoding !== void 0 && typeof encoding !== "string") {
        throw new TypeError("encoding must be a string");
      }
      if (typeof encoding === "string" && !Buffer2.isEncoding(encoding)) {
        throw new TypeError("Unknown encoding: " + encoding);
      }
      if (val.length === 1) {
        const code3 = val.charCodeAt(0);
        if (encoding === "utf8" && code3 < 128 || encoding === "latin1") {
          val = code3;
        }
      }
    } else if (typeof val === "number") {
      val = val & 255;
    } else if (typeof val === "boolean") {
      val = Number(val);
    }
    if (start < 0 || this.length < start || this.length < end) {
      throw new RangeError("Out of range index");
    }
    if (end <= start) {
      return this;
    }
    start = start >>> 0;
    end = end === void 0 ? this.length : end >>> 0;
    if (!val) val = 0;
    let i;
    if (typeof val === "number") {
      for (i = start; i < end; ++i) {
        this[i] = val;
      }
    } else {
      const bytes = Buffer2.isBuffer(val) ? val : Buffer2.from(val, encoding);
      const len = bytes.length;
      if (len === 0) {
        throw new TypeError('The value "' + val + '" is invalid for argument "value"');
      }
      for (i = 0; i < end - start; ++i) {
        this[i + start] = bytes[i % len];
      }
    }
    return this;
  };
  var errors = {};
  function E(sym, getMessage, Base) {
    errors[sym] = class NodeError extends Base {
      constructor() {
        super();
        Object.defineProperty(this, "message", {
          value: getMessage.apply(this, arguments),
          writable: true,
          configurable: true
        });
        this.name = `${this.name} [${sym}]`;
        this.stack;
        delete this.name;
      }
      get code() {
        return sym;
      }
      set code(value) {
        Object.defineProperty(this, "code", {
          configurable: true,
          enumerable: true,
          value,
          writable: true
        });
      }
      toString() {
        return `${this.name} [${sym}]: ${this.message}`;
      }
    };
  }
  E(
    "ERR_BUFFER_OUT_OF_BOUNDS",
    function(name) {
      if (name) {
        return `${name} is outside of buffer bounds`;
      }
      return "Attempt to access memory outside buffer bounds";
    },
    RangeError
  );
  E(
    "ERR_INVALID_ARG_TYPE",
    function(name, actual) {
      return `The "${name}" argument must be of type number. Received type ${typeof actual}`;
    },
    TypeError
  );
  E(
    "ERR_OUT_OF_RANGE",
    function(str, range, input) {
      let msg = `The value of "${str}" is out of range.`;
      let received = input;
      if (Number.isInteger(input) && Math.abs(input) > 2 ** 32) {
        received = addNumericalSeparator(String(input));
      } else if (typeof input === "bigint") {
        received = String(input);
        if (input > BigInt(2) ** BigInt(32) || input < -(BigInt(2) ** BigInt(32))) {
          received = addNumericalSeparator(received);
        }
        received += "n";
      }
      msg += ` It must be ${range}. Received ${received}`;
      return msg;
    },
    RangeError
  );
  function addNumericalSeparator(val) {
    let res = "";
    let i = val.length;
    const start = val[0] === "-" ? 1 : 0;
    for (; i >= start + 4; i -= 3) {
      res = `_${val.slice(i - 3, i)}${res}`;
    }
    return `${val.slice(0, i)}${res}`;
  }
  function checkBounds(buf, offset, byteLength2) {
    validateNumber(offset, "offset");
    if (buf[offset] === void 0 || buf[offset + byteLength2] === void 0) {
      boundsError(offset, buf.length - (byteLength2 + 1));
    }
  }
  function checkIntBI(value, min, max, buf, offset, byteLength2) {
    if (value > max || value < min) {
      const n = typeof min === "bigint" ? "n" : "";
      let range;
      if (byteLength2 > 3) {
        if (min === 0 || min === BigInt(0)) {
          range = `>= 0${n} and < 2${n} ** ${(byteLength2 + 1) * 8}${n}`;
        } else {
          range = `>= -(2${n} ** ${(byteLength2 + 1) * 8 - 1}${n}) and < 2 ** ${(byteLength2 + 1) * 8 - 1}${n}`;
        }
      } else {
        range = `>= ${min}${n} and <= ${max}${n}`;
      }
      throw new errors.ERR_OUT_OF_RANGE("value", range, value);
    }
    checkBounds(buf, offset, byteLength2);
  }
  function validateNumber(value, name) {
    if (typeof value !== "number") {
      throw new errors.ERR_INVALID_ARG_TYPE(name, "number", value);
    }
  }
  function boundsError(value, length, type) {
    if (Math.floor(value) !== value) {
      validateNumber(value, type);
      throw new errors.ERR_OUT_OF_RANGE(type || "offset", "an integer", value);
    }
    if (length < 0) {
      throw new errors.ERR_BUFFER_OUT_OF_BOUNDS();
    }
    throw new errors.ERR_OUT_OF_RANGE(
      type || "offset",
      `>= ${type ? 1 : 0} and <= ${length}`,
      value
    );
  }
  var INVALID_BASE64_RE = /[^+/0-9A-Za-z-_]/g;
  function base64clean(str) {
    str = str.split("=")[0];
    str = str.trim().replace(INVALID_BASE64_RE, "");
    if (str.length < 2) return "";
    while (str.length % 4 !== 0) {
      str = str + "=";
    }
    return str;
  }
  function utf8ToBytes(string, units) {
    units = units || Infinity;
    let codePoint;
    const length = string.length;
    let leadSurrogate = null;
    const bytes = [];
    for (let i = 0; i < length; ++i) {
      codePoint = string.charCodeAt(i);
      if (codePoint > 55295 && codePoint < 57344) {
        if (!leadSurrogate) {
          if (codePoint > 56319) {
            if ((units -= 3) > -1) bytes.push(239, 191, 189);
            continue;
          } else if (i + 1 === length) {
            if ((units -= 3) > -1) bytes.push(239, 191, 189);
            continue;
          }
          leadSurrogate = codePoint;
          continue;
        }
        if (codePoint < 56320) {
          if ((units -= 3) > -1) bytes.push(239, 191, 189);
          leadSurrogate = codePoint;
          continue;
        }
        codePoint = (leadSurrogate - 55296 << 10 | codePoint - 56320) + 65536;
      } else if (leadSurrogate) {
        if ((units -= 3) > -1) bytes.push(239, 191, 189);
      }
      leadSurrogate = null;
      if (codePoint < 128) {
        if ((units -= 1) < 0) break;
        bytes.push(codePoint);
      } else if (codePoint < 2048) {
        if ((units -= 2) < 0) break;
        bytes.push(
          codePoint >> 6 | 192,
          codePoint & 63 | 128
        );
      } else if (codePoint < 65536) {
        if ((units -= 3) < 0) break;
        bytes.push(
          codePoint >> 12 | 224,
          codePoint >> 6 & 63 | 128,
          codePoint & 63 | 128
        );
      } else if (codePoint < 1114112) {
        if ((units -= 4) < 0) break;
        bytes.push(
          codePoint >> 18 | 240,
          codePoint >> 12 & 63 | 128,
          codePoint >> 6 & 63 | 128,
          codePoint & 63 | 128
        );
      } else {
        throw new Error("Invalid code point");
      }
    }
    return bytes;
  }
  function asciiToBytes(str) {
    const byteArray = [];
    for (let i = 0; i < str.length; ++i) {
      byteArray.push(str.charCodeAt(i) & 255);
    }
    return byteArray;
  }
  function utf16leToBytes(str, units) {
    let c, hi, lo;
    const byteArray = [];
    for (let i = 0; i < str.length; ++i) {
      if ((units -= 2) < 0) break;
      c = str.charCodeAt(i);
      hi = c >> 8;
      lo = c % 256;
      byteArray.push(lo);
      byteArray.push(hi);
    }
    return byteArray;
  }
  function base64ToBytes(str) {
    return toByteArray(base64clean(str));
  }
  function blitBuffer(src, dst, offset, length) {
    let i;
    for (i = 0; i < length; ++i) {
      if (i + offset >= dst.length || i >= src.length) break;
      dst[i + offset] = src[i];
    }
    return i;
  }
  var hexSliceLookupTable = function() {
    const alphabet = "0123456789abcdef";
    const table = new Array(256);
    for (let i = 0; i < 16; ++i) {
      const i16 = i * 16;
      for (let j = 0; j < 16; ++j) {
        table[i16 + j] = alphabet[i] + alphabet[j];
      }
    }
    return table;
  }();

  // ServerProject/tools/node_modules/frida-java-bridge/lib/android.js
  var android_exports = {};
  __export(android_exports, {
    ArtMethod: () => ArtMethod,
    ArtStackVisitor: () => ArtStackVisitor,
    DVM_JNI_ENV_OFFSET_SELF: () => DVM_JNI_ENV_OFFSET_SELF,
    HandleVector: () => HandleVector,
    VariableSizedHandleScope: () => VariableSizedHandleScope,
    backtrace: () => backtrace,
    deoptimizeBootImage: () => deoptimizeBootImage,
    deoptimizeEverything: () => deoptimizeEverything,
    deoptimizeMethod: () => deoptimizeMethod,
    ensureClassInitialized: () => ensureClassInitialized,
    getAndroidApiLevel: () => getAndroidApiLevel,
    getAndroidVersion: () => getAndroidVersion,
    getApi: () => getApi,
    getArtApexVersion: () => getArtApexVersion,
    getArtClassSpec: () => getArtClassSpec,
    getArtFieldSpec: () => getArtFieldSpec,
    getArtMethodSpec: () => getArtMethodSpec,
    getArtThreadFromEnv: () => getArtThreadFromEnv,
    getArtThreadSpec: () => getArtThreadSpec,
    makeArtClassLoaderVisitor: () => makeArtClassLoaderVisitor,
    makeArtClassVisitor: () => makeArtClassVisitor,
    makeMethodMangler: () => makeMethodMangler,
    makeObjectVisitorPredicate: () => makeObjectVisitorPredicate,
    revertGlobalPatches: () => revertGlobalPatches,
    translateMethod: () => translateMethod,
    withAllArtThreadsSuspended: () => withAllArtThreadsSuspended,
    withRunnableArtThread: () => withRunnableArtThread
  });

  // ServerProject/tools/node_modules/frida-java-bridge/lib/alloc.js
  var {
    pageSize,
    pointerSize
  } = Process;
  var CodeAllocator = class {
    constructor(sliceSize) {
      this.sliceSize = sliceSize;
      this.slicesPerPage = pageSize / sliceSize;
      this.pages = [];
      this.free = [];
    }
    allocateSlice(spec, alignment) {
      const anyLocation = spec.near === void 0;
      const anyAlignment = alignment === 1;
      if (anyLocation && anyAlignment) {
        const slice2 = this.free.pop();
        if (slice2 !== void 0) {
          return slice2;
        }
      } else if (alignment < pageSize) {
        const { free } = this;
        const n = free.length;
        const alignMask = anyAlignment ? null : ptr(alignment - 1);
        for (let i = 0; i !== n; i++) {
          const slice2 = free[i];
          const satisfiesLocation = anyLocation || this._isSliceNear(slice2, spec);
          const satisfiesAlignment = anyAlignment || slice2.and(alignMask).isNull();
          if (satisfiesLocation && satisfiesAlignment) {
            return free.splice(i, 1)[0];
          }
        }
      }
      return this._allocatePage(spec);
    }
    _allocatePage(spec) {
      const page = Memory.alloc(pageSize, spec);
      const { sliceSize, slicesPerPage } = this;
      for (let i = 1; i !== slicesPerPage; i++) {
        const slice2 = page.add(i * sliceSize);
        this.free.push(slice2);
      }
      this.pages.push(page);
      return page;
    }
    _isSliceNear(slice2, spec) {
      const sliceEnd = slice2.add(this.sliceSize);
      const { near, maxDistance } = spec;
      const startDistance = abs(near.sub(slice2));
      const endDistance = abs(near.sub(sliceEnd));
      return startDistance.compare(maxDistance) <= 0 && endDistance.compare(maxDistance) <= 0;
    }
    freeSlice(slice2) {
      this.free.push(slice2);
    }
  };
  function abs(nptr) {
    const shmt = pointerSize === 4 ? 31 : 63;
    const mask = ptr(1).shl(shmt).not();
    return nptr.and(mask);
  }
  function makeAllocator(sliceSize) {
    return new CodeAllocator(sliceSize);
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/result.js
  var JNI_OK = 0;
  function checkJniResult(name, result) {
    if (result !== JNI_OK) {
      throw new Error(name + " failed: " + result);
    }
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/jvmti.js
  var jvmtiVersion = {
    v1_0: 805371904,
    v1_2: 805372416
  };
  var jvmtiCapabilities = {
    canTagObjects: 1
  };
  var { pointerSize: pointerSize2 } = Process;
  var nativeFunctionOptions = {
    exceptions: "propagate"
  };
  function EnvJvmti(handle, vm3) {
    this.handle = handle;
    this.vm = vm3;
    this.vtable = handle.readPointer();
  }
  EnvJvmti.prototype.deallocate = proxy(47, "int32", ["pointer", "pointer"], function(impl, mem) {
    return impl(this.handle, mem);
  });
  EnvJvmti.prototype.getLoadedClasses = proxy(78, "int32", ["pointer", "pointer", "pointer"], function(impl, classCountPtr, classesPtr) {
    const result = impl(this.handle, classCountPtr, classesPtr);
    checkJniResult("EnvJvmti::getLoadedClasses", result);
  });
  EnvJvmti.prototype.iterateOverInstancesOfClass = proxy(112, "int32", ["pointer", "pointer", "int", "pointer", "pointer"], function(impl, klass, objectFilter, heapObjectCallback, userData) {
    const result = impl(this.handle, klass, objectFilter, heapObjectCallback, userData);
    checkJniResult("EnvJvmti::iterateOverInstancesOfClass", result);
  });
  EnvJvmti.prototype.getObjectsWithTags = proxy(114, "int32", ["pointer", "int", "pointer", "pointer", "pointer", "pointer"], function(impl, tagCount, tags, countPtr, objectResultPtr, tagResultPtr) {
    const result = impl(this.handle, tagCount, tags, countPtr, objectResultPtr, tagResultPtr);
    checkJniResult("EnvJvmti::getObjectsWithTags", result);
  });
  EnvJvmti.prototype.addCapabilities = proxy(142, "int32", ["pointer", "pointer"], function(impl, capabilitiesPtr) {
    return impl(this.handle, capabilitiesPtr);
  });
  function proxy(offset, retType, argTypes, wrapper) {
    let impl = null;
    return function() {
      if (impl === null) {
        impl = new NativeFunction(this.vtable.add((offset - 1) * pointerSize2).readPointer(), retType, argTypes, nativeFunctionOptions);
      }
      let args = [impl];
      args = args.concat.apply(args, arguments);
      return wrapper.apply(this, args);
    };
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/machine-code.js
  function parseInstructionsAt(address, tryParse, { limit }) {
    let cursor = address;
    let prevInsn = null;
    for (let i = 0; i !== limit; i++) {
      const insn = Instruction.parse(cursor);
      const value = tryParse(insn, prevInsn);
      if (value !== null) {
        return value;
      }
      cursor = insn.next;
      prevInsn = insn;
    }
    return null;
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/memoize.js
  function memoize(compute) {
    let value = null;
    let computed = false;
    return function(...args) {
      if (!computed) {
        value = compute(...args);
        computed = true;
      }
      return value;
    };
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/env.js
  function Env(handle, vm3) {
    this.handle = handle;
    this.vm = vm3;
  }
  var pointerSize3 = Process.pointerSize;
  var JNI_ABORT = 2;
  var CALL_CONSTRUCTOR_METHOD_OFFSET = 28;
  var CALL_OBJECT_METHOD_OFFSET = 34;
  var CALL_BOOLEAN_METHOD_OFFSET = 37;
  var CALL_BYTE_METHOD_OFFSET = 40;
  var CALL_CHAR_METHOD_OFFSET = 43;
  var CALL_SHORT_METHOD_OFFSET = 46;
  var CALL_INT_METHOD_OFFSET = 49;
  var CALL_LONG_METHOD_OFFSET = 52;
  var CALL_FLOAT_METHOD_OFFSET = 55;
  var CALL_DOUBLE_METHOD_OFFSET = 58;
  var CALL_VOID_METHOD_OFFSET = 61;
  var CALL_NONVIRTUAL_OBJECT_METHOD_OFFSET = 64;
  var CALL_NONVIRTUAL_BOOLEAN_METHOD_OFFSET = 67;
  var CALL_NONVIRTUAL_BYTE_METHOD_OFFSET = 70;
  var CALL_NONVIRTUAL_CHAR_METHOD_OFFSET = 73;
  var CALL_NONVIRTUAL_SHORT_METHOD_OFFSET = 76;
  var CALL_NONVIRTUAL_INT_METHOD_OFFSET = 79;
  var CALL_NONVIRTUAL_LONG_METHOD_OFFSET = 82;
  var CALL_NONVIRTUAL_FLOAT_METHOD_OFFSET = 85;
  var CALL_NONVIRTUAL_DOUBLE_METHOD_OFFSET = 88;
  var CALL_NONVIRTUAL_VOID_METHOD_OFFSET = 91;
  var CALL_STATIC_OBJECT_METHOD_OFFSET = 114;
  var CALL_STATIC_BOOLEAN_METHOD_OFFSET = 117;
  var CALL_STATIC_BYTE_METHOD_OFFSET = 120;
  var CALL_STATIC_CHAR_METHOD_OFFSET = 123;
  var CALL_STATIC_SHORT_METHOD_OFFSET = 126;
  var CALL_STATIC_INT_METHOD_OFFSET = 129;
  var CALL_STATIC_LONG_METHOD_OFFSET = 132;
  var CALL_STATIC_FLOAT_METHOD_OFFSET = 135;
  var CALL_STATIC_DOUBLE_METHOD_OFFSET = 138;
  var CALL_STATIC_VOID_METHOD_OFFSET = 141;
  var GET_OBJECT_FIELD_OFFSET = 95;
  var GET_BOOLEAN_FIELD_OFFSET = 96;
  var GET_BYTE_FIELD_OFFSET = 97;
  var GET_CHAR_FIELD_OFFSET = 98;
  var GET_SHORT_FIELD_OFFSET = 99;
  var GET_INT_FIELD_OFFSET = 100;
  var GET_LONG_FIELD_OFFSET = 101;
  var GET_FLOAT_FIELD_OFFSET = 102;
  var GET_DOUBLE_FIELD_OFFSET = 103;
  var SET_OBJECT_FIELD_OFFSET = 104;
  var SET_BOOLEAN_FIELD_OFFSET = 105;
  var SET_BYTE_FIELD_OFFSET = 106;
  var SET_CHAR_FIELD_OFFSET = 107;
  var SET_SHORT_FIELD_OFFSET = 108;
  var SET_INT_FIELD_OFFSET = 109;
  var SET_LONG_FIELD_OFFSET = 110;
  var SET_FLOAT_FIELD_OFFSET = 111;
  var SET_DOUBLE_FIELD_OFFSET = 112;
  var GET_STATIC_OBJECT_FIELD_OFFSET = 145;
  var GET_STATIC_BOOLEAN_FIELD_OFFSET = 146;
  var GET_STATIC_BYTE_FIELD_OFFSET = 147;
  var GET_STATIC_CHAR_FIELD_OFFSET = 148;
  var GET_STATIC_SHORT_FIELD_OFFSET = 149;
  var GET_STATIC_INT_FIELD_OFFSET = 150;
  var GET_STATIC_LONG_FIELD_OFFSET = 151;
  var GET_STATIC_FLOAT_FIELD_OFFSET = 152;
  var GET_STATIC_DOUBLE_FIELD_OFFSET = 153;
  var SET_STATIC_OBJECT_FIELD_OFFSET = 154;
  var SET_STATIC_BOOLEAN_FIELD_OFFSET = 155;
  var SET_STATIC_BYTE_FIELD_OFFSET = 156;
  var SET_STATIC_CHAR_FIELD_OFFSET = 157;
  var SET_STATIC_SHORT_FIELD_OFFSET = 158;
  var SET_STATIC_INT_FIELD_OFFSET = 159;
  var SET_STATIC_LONG_FIELD_OFFSET = 160;
  var SET_STATIC_FLOAT_FIELD_OFFSET = 161;
  var SET_STATIC_DOUBLE_FIELD_OFFSET = 162;
  var callMethodOffset = {
    pointer: CALL_OBJECT_METHOD_OFFSET,
    uint8: CALL_BOOLEAN_METHOD_OFFSET,
    int8: CALL_BYTE_METHOD_OFFSET,
    uint16: CALL_CHAR_METHOD_OFFSET,
    int16: CALL_SHORT_METHOD_OFFSET,
    int32: CALL_INT_METHOD_OFFSET,
    int64: CALL_LONG_METHOD_OFFSET,
    float: CALL_FLOAT_METHOD_OFFSET,
    double: CALL_DOUBLE_METHOD_OFFSET,
    void: CALL_VOID_METHOD_OFFSET
  };
  var callNonvirtualMethodOffset = {
    pointer: CALL_NONVIRTUAL_OBJECT_METHOD_OFFSET,
    uint8: CALL_NONVIRTUAL_BOOLEAN_METHOD_OFFSET,
    int8: CALL_NONVIRTUAL_BYTE_METHOD_OFFSET,
    uint16: CALL_NONVIRTUAL_CHAR_METHOD_OFFSET,
    int16: CALL_NONVIRTUAL_SHORT_METHOD_OFFSET,
    int32: CALL_NONVIRTUAL_INT_METHOD_OFFSET,
    int64: CALL_NONVIRTUAL_LONG_METHOD_OFFSET,
    float: CALL_NONVIRTUAL_FLOAT_METHOD_OFFSET,
    double: CALL_NONVIRTUAL_DOUBLE_METHOD_OFFSET,
    void: CALL_NONVIRTUAL_VOID_METHOD_OFFSET
  };
  var callStaticMethodOffset = {
    pointer: CALL_STATIC_OBJECT_METHOD_OFFSET,
    uint8: CALL_STATIC_BOOLEAN_METHOD_OFFSET,
    int8: CALL_STATIC_BYTE_METHOD_OFFSET,
    uint16: CALL_STATIC_CHAR_METHOD_OFFSET,
    int16: CALL_STATIC_SHORT_METHOD_OFFSET,
    int32: CALL_STATIC_INT_METHOD_OFFSET,
    int64: CALL_STATIC_LONG_METHOD_OFFSET,
    float: CALL_STATIC_FLOAT_METHOD_OFFSET,
    double: CALL_STATIC_DOUBLE_METHOD_OFFSET,
    void: CALL_STATIC_VOID_METHOD_OFFSET
  };
  var getFieldOffset = {
    pointer: GET_OBJECT_FIELD_OFFSET,
    uint8: GET_BOOLEAN_FIELD_OFFSET,
    int8: GET_BYTE_FIELD_OFFSET,
    uint16: GET_CHAR_FIELD_OFFSET,
    int16: GET_SHORT_FIELD_OFFSET,
    int32: GET_INT_FIELD_OFFSET,
    int64: GET_LONG_FIELD_OFFSET,
    float: GET_FLOAT_FIELD_OFFSET,
    double: GET_DOUBLE_FIELD_OFFSET
  };
  var setFieldOffset = {
    pointer: SET_OBJECT_FIELD_OFFSET,
    uint8: SET_BOOLEAN_FIELD_OFFSET,
    int8: SET_BYTE_FIELD_OFFSET,
    uint16: SET_CHAR_FIELD_OFFSET,
    int16: SET_SHORT_FIELD_OFFSET,
    int32: SET_INT_FIELD_OFFSET,
    int64: SET_LONG_FIELD_OFFSET,
    float: SET_FLOAT_FIELD_OFFSET,
    double: SET_DOUBLE_FIELD_OFFSET
  };
  var getStaticFieldOffset = {
    pointer: GET_STATIC_OBJECT_FIELD_OFFSET,
    uint8: GET_STATIC_BOOLEAN_FIELD_OFFSET,
    int8: GET_STATIC_BYTE_FIELD_OFFSET,
    uint16: GET_STATIC_CHAR_FIELD_OFFSET,
    int16: GET_STATIC_SHORT_FIELD_OFFSET,
    int32: GET_STATIC_INT_FIELD_OFFSET,
    int64: GET_STATIC_LONG_FIELD_OFFSET,
    float: GET_STATIC_FLOAT_FIELD_OFFSET,
    double: GET_STATIC_DOUBLE_FIELD_OFFSET
  };
  var setStaticFieldOffset = {
    pointer: SET_STATIC_OBJECT_FIELD_OFFSET,
    uint8: SET_STATIC_BOOLEAN_FIELD_OFFSET,
    int8: SET_STATIC_BYTE_FIELD_OFFSET,
    uint16: SET_STATIC_CHAR_FIELD_OFFSET,
    int16: SET_STATIC_SHORT_FIELD_OFFSET,
    int32: SET_STATIC_INT_FIELD_OFFSET,
    int64: SET_STATIC_LONG_FIELD_OFFSET,
    float: SET_STATIC_FLOAT_FIELD_OFFSET,
    double: SET_STATIC_DOUBLE_FIELD_OFFSET
  };
  var nativeFunctionOptions2 = {
    exceptions: "propagate"
  };
  var cachedVtable = null;
  var globalRefs = [];
  Env.dispose = function(env) {
    globalRefs.forEach(env.deleteGlobalRef, env);
    globalRefs = [];
  };
  function register(globalRef) {
    globalRefs.push(globalRef);
    return globalRef;
  }
  function vtable(instance) {
    if (cachedVtable === null) {
      cachedVtable = instance.handle.readPointer();
    }
    return cachedVtable;
  }
  function proxy2(offset, retType, argTypes, wrapper) {
    let impl = null;
    return function() {
      if (impl === null) {
        impl = new NativeFunction(vtable(this).add(offset * pointerSize3).readPointer(), retType, argTypes, nativeFunctionOptions2);
      }
      let args = [impl];
      args = args.concat.apply(args, arguments);
      return wrapper.apply(this, args);
    };
  }
  Env.prototype.getVersion = proxy2(4, "int32", ["pointer"], function(impl) {
    return impl(this.handle);
  });
  Env.prototype.findClass = proxy2(6, "pointer", ["pointer", "pointer"], function(impl, name) {
    const result = impl(this.handle, Memory.allocUtf8String(name));
    this.throwIfExceptionPending();
    return result;
  });
  Env.prototype.throwIfExceptionPending = function() {
    const throwable = this.exceptionOccurred();
    if (throwable.isNull()) {
      return;
    }
    this.exceptionClear();
    const handle = this.newGlobalRef(throwable);
    this.deleteLocalRef(throwable);
    const description = this.vaMethod("pointer", [])(this.handle, handle, this.javaLangObject().toString);
    const descriptionStr = this.stringFromJni(description);
    this.deleteLocalRef(description);
    const error = new Error(descriptionStr);
    error.$h = handle;
    Script.bindWeak(error, makeErrorHandleDestructor(this.vm, handle));
    throw error;
  };
  function makeErrorHandleDestructor(vm3, handle) {
    return function() {
      vm3.perform((env) => {
        env.deleteGlobalRef(handle);
      });
    };
  }
  Env.prototype.fromReflectedMethod = proxy2(7, "pointer", ["pointer", "pointer"], function(impl, method) {
    return impl(this.handle, method);
  });
  Env.prototype.fromReflectedField = proxy2(8, "pointer", ["pointer", "pointer"], function(impl, method) {
    return impl(this.handle, method);
  });
  Env.prototype.toReflectedMethod = proxy2(9, "pointer", ["pointer", "pointer", "pointer", "uint8"], function(impl, klass, methodId, isStatic) {
    return impl(this.handle, klass, methodId, isStatic);
  });
  Env.prototype.getSuperclass = proxy2(10, "pointer", ["pointer", "pointer"], function(impl, klass) {
    return impl(this.handle, klass);
  });
  Env.prototype.isAssignableFrom = proxy2(11, "uint8", ["pointer", "pointer", "pointer"], function(impl, klass1, klass2) {
    return !!impl(this.handle, klass1, klass2);
  });
  Env.prototype.toReflectedField = proxy2(12, "pointer", ["pointer", "pointer", "pointer", "uint8"], function(impl, klass, fieldId, isStatic) {
    return impl(this.handle, klass, fieldId, isStatic);
  });
  Env.prototype.throw = proxy2(13, "int32", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.exceptionOccurred = proxy2(15, "pointer", ["pointer"], function(impl) {
    return impl(this.handle);
  });
  Env.prototype.exceptionDescribe = proxy2(16, "void", ["pointer"], function(impl) {
    impl(this.handle);
  });
  Env.prototype.exceptionClear = proxy2(17, "void", ["pointer"], function(impl) {
    impl(this.handle);
  });
  Env.prototype.pushLocalFrame = proxy2(19, "int32", ["pointer", "int32"], function(impl, capacity) {
    return impl(this.handle, capacity);
  });
  Env.prototype.popLocalFrame = proxy2(20, "pointer", ["pointer", "pointer"], function(impl, result) {
    return impl(this.handle, result);
  });
  Env.prototype.newGlobalRef = proxy2(21, "pointer", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.deleteGlobalRef = proxy2(22, "void", ["pointer", "pointer"], function(impl, globalRef) {
    impl(this.handle, globalRef);
  });
  Env.prototype.deleteLocalRef = proxy2(23, "void", ["pointer", "pointer"], function(impl, localRef) {
    impl(this.handle, localRef);
  });
  Env.prototype.isSameObject = proxy2(24, "uint8", ["pointer", "pointer", "pointer"], function(impl, ref1, ref2) {
    return !!impl(this.handle, ref1, ref2);
  });
  Env.prototype.newLocalRef = proxy2(25, "pointer", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.allocObject = proxy2(27, "pointer", ["pointer", "pointer"], function(impl, clazz) {
    return impl(this.handle, clazz);
  });
  Env.prototype.getObjectClass = proxy2(31, "pointer", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.isInstanceOf = proxy2(32, "uint8", ["pointer", "pointer", "pointer"], function(impl, obj, klass) {
    return !!impl(this.handle, obj, klass);
  });
  Env.prototype.getMethodId = proxy2(33, "pointer", ["pointer", "pointer", "pointer", "pointer"], function(impl, klass, name, sig) {
    return impl(this.handle, klass, Memory.allocUtf8String(name), Memory.allocUtf8String(sig));
  });
  Env.prototype.getFieldId = proxy2(94, "pointer", ["pointer", "pointer", "pointer", "pointer"], function(impl, klass, name, sig) {
    return impl(this.handle, klass, Memory.allocUtf8String(name), Memory.allocUtf8String(sig));
  });
  Env.prototype.getIntField = proxy2(100, "int32", ["pointer", "pointer", "pointer"], function(impl, obj, fieldId) {
    return impl(this.handle, obj, fieldId);
  });
  Env.prototype.getStaticMethodId = proxy2(113, "pointer", ["pointer", "pointer", "pointer", "pointer"], function(impl, klass, name, sig) {
    return impl(this.handle, klass, Memory.allocUtf8String(name), Memory.allocUtf8String(sig));
  });
  Env.prototype.getStaticFieldId = proxy2(144, "pointer", ["pointer", "pointer", "pointer", "pointer"], function(impl, klass, name, sig) {
    return impl(this.handle, klass, Memory.allocUtf8String(name), Memory.allocUtf8String(sig));
  });
  Env.prototype.getStaticIntField = proxy2(150, "int32", ["pointer", "pointer", "pointer"], function(impl, obj, fieldId) {
    return impl(this.handle, obj, fieldId);
  });
  Env.prototype.getStringLength = proxy2(164, "int32", ["pointer", "pointer"], function(impl, str) {
    return impl(this.handle, str);
  });
  Env.prototype.getStringChars = proxy2(165, "pointer", ["pointer", "pointer", "pointer"], function(impl, str) {
    return impl(this.handle, str, NULL);
  });
  Env.prototype.releaseStringChars = proxy2(166, "void", ["pointer", "pointer", "pointer"], function(impl, str, utf) {
    impl(this.handle, str, utf);
  });
  Env.prototype.newStringUtf = proxy2(167, "pointer", ["pointer", "pointer"], function(impl, str) {
    const utf = Memory.allocUtf8String(str);
    return impl(this.handle, utf);
  });
  Env.prototype.getStringUtfChars = proxy2(169, "pointer", ["pointer", "pointer", "pointer"], function(impl, str) {
    return impl(this.handle, str, NULL);
  });
  Env.prototype.releaseStringUtfChars = proxy2(170, "void", ["pointer", "pointer", "pointer"], function(impl, str, utf) {
    impl(this.handle, str, utf);
  });
  Env.prototype.getArrayLength = proxy2(171, "int32", ["pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array);
  });
  Env.prototype.newObjectArray = proxy2(172, "pointer", ["pointer", "int32", "pointer", "pointer"], function(impl, length, elementClass, initialElement) {
    return impl(this.handle, length, elementClass, initialElement);
  });
  Env.prototype.getObjectArrayElement = proxy2(173, "pointer", ["pointer", "pointer", "int32"], function(impl, array, index) {
    return impl(this.handle, array, index);
  });
  Env.prototype.setObjectArrayElement = proxy2(174, "void", ["pointer", "pointer", "int32", "pointer"], function(impl, array, index, value) {
    impl(this.handle, array, index, value);
  });
  Env.prototype.newBooleanArray = proxy2(175, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newByteArray = proxy2(176, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newCharArray = proxy2(177, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newShortArray = proxy2(178, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newIntArray = proxy2(179, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newLongArray = proxy2(180, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newFloatArray = proxy2(181, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.newDoubleArray = proxy2(182, "pointer", ["pointer", "int32"], function(impl, length) {
    return impl(this.handle, length);
  });
  Env.prototype.getBooleanArrayElements = proxy2(183, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getByteArrayElements = proxy2(184, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getCharArrayElements = proxy2(185, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getShortArrayElements = proxy2(186, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getIntArrayElements = proxy2(187, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getLongArrayElements = proxy2(188, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getFloatArrayElements = proxy2(189, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.getDoubleArrayElements = proxy2(190, "pointer", ["pointer", "pointer", "pointer"], function(impl, array) {
    return impl(this.handle, array, NULL);
  });
  Env.prototype.releaseBooleanArrayElements = proxy2(191, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseByteArrayElements = proxy2(192, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseCharArrayElements = proxy2(193, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseShortArrayElements = proxy2(194, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseIntArrayElements = proxy2(195, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseLongArrayElements = proxy2(196, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseFloatArrayElements = proxy2(197, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.releaseDoubleArrayElements = proxy2(198, "pointer", ["pointer", "pointer", "pointer", "int32"], function(impl, array, cArray) {
    impl(this.handle, array, cArray, JNI_ABORT);
  });
  Env.prototype.getByteArrayRegion = proxy2(200, "void", ["pointer", "pointer", "int", "int", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setBooleanArrayRegion = proxy2(207, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setByteArrayRegion = proxy2(208, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setCharArrayRegion = proxy2(209, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setShortArrayRegion = proxy2(210, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setIntArrayRegion = proxy2(211, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setLongArrayRegion = proxy2(212, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setFloatArrayRegion = proxy2(213, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.setDoubleArrayRegion = proxy2(214, "void", ["pointer", "pointer", "int32", "int32", "pointer"], function(impl, array, start, length, cArray) {
    impl(this.handle, array, start, length, cArray);
  });
  Env.prototype.registerNatives = proxy2(215, "int32", ["pointer", "pointer", "pointer", "int32"], function(impl, klass, methods, numMethods) {
    return impl(this.handle, klass, methods, numMethods);
  });
  Env.prototype.monitorEnter = proxy2(217, "int32", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.monitorExit = proxy2(218, "int32", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.getDirectBufferAddress = proxy2(230, "pointer", ["pointer", "pointer"], function(impl, obj) {
    return impl(this.handle, obj);
  });
  Env.prototype.getObjectRefType = proxy2(232, "int32", ["pointer", "pointer"], function(impl, ref) {
    return impl(this.handle, ref);
  });
  var cachedMethods = /* @__PURE__ */ new Map();
  function plainMethod(offset, retType, argTypes, options) {
    return getOrMakeMethod(this, "p", makePlainMethod, offset, retType, argTypes, options);
  }
  function vaMethod(offset, retType, argTypes, options) {
    return getOrMakeMethod(this, "v", makeVaMethod, offset, retType, argTypes, options);
  }
  function nonvirtualVaMethod(offset, retType, argTypes, options) {
    return getOrMakeMethod(this, "n", makeNonvirtualVaMethod, offset, retType, argTypes, options);
  }
  function getOrMakeMethod(env, flavor, construct, offset, retType, argTypes, options) {
    if (options !== void 0) {
      return construct(env, offset, retType, argTypes, options);
    }
    const key = [offset, flavor, retType].concat(argTypes).join("|");
    let m = cachedMethods.get(key);
    if (m === void 0) {
      m = construct(env, offset, retType, argTypes, nativeFunctionOptions2);
      cachedMethods.set(key, m);
    }
    return m;
  }
  function makePlainMethod(env, offset, retType, argTypes, options) {
    return new NativeFunction(
      vtable(env).add(offset * pointerSize3).readPointer(),
      retType,
      ["pointer", "pointer", "pointer"].concat(argTypes),
      options
    );
  }
  function makeVaMethod(env, offset, retType, argTypes, options) {
    return new NativeFunction(
      vtable(env).add(offset * pointerSize3).readPointer(),
      retType,
      ["pointer", "pointer", "pointer", "..."].concat(argTypes),
      options
    );
  }
  function makeNonvirtualVaMethod(env, offset, retType, argTypes, options) {
    return new NativeFunction(
      vtable(env).add(offset * pointerSize3).readPointer(),
      retType,
      ["pointer", "pointer", "pointer", "pointer", "..."].concat(argTypes),
      options
    );
  }
  Env.prototype.constructor = function(argTypes, options) {
    return vaMethod.call(this, CALL_CONSTRUCTOR_METHOD_OFFSET, "pointer", argTypes, options);
  };
  Env.prototype.vaMethod = function(retType, argTypes, options) {
    const offset = callMethodOffset[retType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + retType);
    }
    return vaMethod.call(this, offset, retType, argTypes, options);
  };
  Env.prototype.nonvirtualVaMethod = function(retType, argTypes, options) {
    const offset = callNonvirtualMethodOffset[retType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + retType);
    }
    return nonvirtualVaMethod.call(this, offset, retType, argTypes, options);
  };
  Env.prototype.staticVaMethod = function(retType, argTypes, options) {
    const offset = callStaticMethodOffset[retType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + retType);
    }
    return vaMethod.call(this, offset, retType, argTypes, options);
  };
  Env.prototype.getField = function(fieldType) {
    const offset = getFieldOffset[fieldType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + fieldType);
    }
    return plainMethod.call(this, offset, fieldType, []);
  };
  Env.prototype.getStaticField = function(fieldType) {
    const offset = getStaticFieldOffset[fieldType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + fieldType);
    }
    return plainMethod.call(this, offset, fieldType, []);
  };
  Env.prototype.setField = function(fieldType) {
    const offset = setFieldOffset[fieldType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + fieldType);
    }
    return plainMethod.call(this, offset, "void", [fieldType]);
  };
  Env.prototype.setStaticField = function(fieldType) {
    const offset = setStaticFieldOffset[fieldType];
    if (offset === void 0) {
      throw new Error("Unsupported type: " + fieldType);
    }
    return plainMethod.call(this, offset, "void", [fieldType]);
  };
  var javaLangClass = null;
  Env.prototype.javaLangClass = function() {
    if (javaLangClass === null) {
      const handle = this.findClass("java/lang/Class");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangClass = {
          handle: register(this.newGlobalRef(handle)),
          getName: get("getName", "()Ljava/lang/String;"),
          getSimpleName: get("getSimpleName", "()Ljava/lang/String;"),
          getGenericSuperclass: get("getGenericSuperclass", "()Ljava/lang/reflect/Type;"),
          getDeclaredConstructors: get("getDeclaredConstructors", "()[Ljava/lang/reflect/Constructor;"),
          getDeclaredMethods: get("getDeclaredMethods", "()[Ljava/lang/reflect/Method;"),
          getDeclaredFields: get("getDeclaredFields", "()[Ljava/lang/reflect/Field;"),
          isArray: get("isArray", "()Z"),
          isPrimitive: get("isPrimitive", "()Z"),
          isInterface: get("isInterface", "()Z"),
          getComponentType: get("getComponentType", "()Ljava/lang/Class;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangClass;
  };
  var javaLangObject = null;
  Env.prototype.javaLangObject = function() {
    if (javaLangObject === null) {
      const handle = this.findClass("java/lang/Object");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangObject = {
          handle: register(this.newGlobalRef(handle)),
          toString: get("toString", "()Ljava/lang/String;"),
          getClass: get("getClass", "()Ljava/lang/Class;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangObject;
  };
  var javaLangReflectConstructor = null;
  Env.prototype.javaLangReflectConstructor = function() {
    if (javaLangReflectConstructor === null) {
      const handle = this.findClass("java/lang/reflect/Constructor");
      try {
        javaLangReflectConstructor = {
          getGenericParameterTypes: this.getMethodId(handle, "getGenericParameterTypes", "()[Ljava/lang/reflect/Type;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectConstructor;
  };
  var javaLangReflectMethod = null;
  Env.prototype.javaLangReflectMethod = function() {
    if (javaLangReflectMethod === null) {
      const handle = this.findClass("java/lang/reflect/Method");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangReflectMethod = {
          getName: get("getName", "()Ljava/lang/String;"),
          getGenericParameterTypes: get("getGenericParameterTypes", "()[Ljava/lang/reflect/Type;"),
          getParameterTypes: get("getParameterTypes", "()[Ljava/lang/Class;"),
          getGenericReturnType: get("getGenericReturnType", "()Ljava/lang/reflect/Type;"),
          getGenericExceptionTypes: get("getGenericExceptionTypes", "()[Ljava/lang/reflect/Type;"),
          getModifiers: get("getModifiers", "()I"),
          isVarArgs: get("isVarArgs", "()Z")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectMethod;
  };
  var javaLangReflectField = null;
  Env.prototype.javaLangReflectField = function() {
    if (javaLangReflectField === null) {
      const handle = this.findClass("java/lang/reflect/Field");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangReflectField = {
          getName: get("getName", "()Ljava/lang/String;"),
          getType: get("getType", "()Ljava/lang/Class;"),
          getGenericType: get("getGenericType", "()Ljava/lang/reflect/Type;"),
          getModifiers: get("getModifiers", "()I"),
          toString: get("toString", "()Ljava/lang/String;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectField;
  };
  var javaLangReflectTypeVariable = null;
  Env.prototype.javaLangReflectTypeVariable = function() {
    if (javaLangReflectTypeVariable === null) {
      const handle = this.findClass("java/lang/reflect/TypeVariable");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangReflectTypeVariable = {
          handle: register(this.newGlobalRef(handle)),
          getName: get("getName", "()Ljava/lang/String;"),
          getBounds: get("getBounds", "()[Ljava/lang/reflect/Type;"),
          getGenericDeclaration: get("getGenericDeclaration", "()Ljava/lang/reflect/GenericDeclaration;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectTypeVariable;
  };
  var javaLangReflectWildcardType = null;
  Env.prototype.javaLangReflectWildcardType = function() {
    if (javaLangReflectWildcardType === null) {
      const handle = this.findClass("java/lang/reflect/WildcardType");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangReflectWildcardType = {
          handle: register(this.newGlobalRef(handle)),
          getLowerBounds: get("getLowerBounds", "()[Ljava/lang/reflect/Type;"),
          getUpperBounds: get("getUpperBounds", "()[Ljava/lang/reflect/Type;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectWildcardType;
  };
  var javaLangReflectGenericArrayType = null;
  Env.prototype.javaLangReflectGenericArrayType = function() {
    if (javaLangReflectGenericArrayType === null) {
      const handle = this.findClass("java/lang/reflect/GenericArrayType");
      try {
        javaLangReflectGenericArrayType = {
          handle: register(this.newGlobalRef(handle)),
          getGenericComponentType: this.getMethodId(handle, "getGenericComponentType", "()Ljava/lang/reflect/Type;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectGenericArrayType;
  };
  var javaLangReflectParameterizedType = null;
  Env.prototype.javaLangReflectParameterizedType = function() {
    if (javaLangReflectParameterizedType === null) {
      const handle = this.findClass("java/lang/reflect/ParameterizedType");
      try {
        const get = this.getMethodId.bind(this, handle);
        javaLangReflectParameterizedType = {
          handle: register(this.newGlobalRef(handle)),
          getActualTypeArguments: get("getActualTypeArguments", "()[Ljava/lang/reflect/Type;"),
          getRawType: get("getRawType", "()Ljava/lang/reflect/Type;"),
          getOwnerType: get("getOwnerType", "()Ljava/lang/reflect/Type;")
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangReflectParameterizedType;
  };
  var javaLangString = null;
  Env.prototype.javaLangString = function() {
    if (javaLangString === null) {
      const handle = this.findClass("java/lang/String");
      try {
        javaLangString = {
          handle: register(this.newGlobalRef(handle))
        };
      } finally {
        this.deleteLocalRef(handle);
      }
    }
    return javaLangString;
  };
  Env.prototype.getClassName = function(classHandle) {
    const name = this.vaMethod("pointer", [])(this.handle, classHandle, this.javaLangClass().getName);
    try {
      return this.stringFromJni(name);
    } finally {
      this.deleteLocalRef(name);
    }
  };
  Env.prototype.getObjectClassName = function(objHandle) {
    const jklass = this.getObjectClass(objHandle);
    try {
      return this.getClassName(jklass);
    } finally {
      this.deleteLocalRef(jklass);
    }
  };
  Env.prototype.getActualTypeArgument = function(type) {
    const actualTypeArguments = this.vaMethod("pointer", [])(this.handle, type, this.javaLangReflectParameterizedType().getActualTypeArguments);
    this.throwIfExceptionPending();
    if (!actualTypeArguments.isNull()) {
      try {
        return this.getTypeNameFromFirstTypeElement(actualTypeArguments);
      } finally {
        this.deleteLocalRef(actualTypeArguments);
      }
    }
  };
  Env.prototype.getTypeNameFromFirstTypeElement = function(typeArray) {
    const length = this.getArrayLength(typeArray);
    if (length > 0) {
      const typeArgument0 = this.getObjectArrayElement(typeArray, 0);
      try {
        return this.getTypeName(typeArgument0);
      } finally {
        this.deleteLocalRef(typeArgument0);
      }
    } else {
      return "java.lang.Object";
    }
  };
  Env.prototype.getTypeName = function(type, getGenericsInformation) {
    const invokeObjectMethodNoArgs = this.vaMethod("pointer", []);
    if (this.isInstanceOf(type, this.javaLangClass().handle)) {
      return this.getClassName(type);
    } else if (this.isInstanceOf(type, this.javaLangReflectGenericArrayType().handle)) {
      return this.getArrayTypeName(type);
    } else if (this.isInstanceOf(type, this.javaLangReflectParameterizedType().handle)) {
      const rawType = invokeObjectMethodNoArgs(this.handle, type, this.javaLangReflectParameterizedType().getRawType);
      this.throwIfExceptionPending();
      let result;
      try {
        result = this.getTypeName(rawType);
      } finally {
        this.deleteLocalRef(rawType);
      }
      if (getGenericsInformation) {
        result += "<" + this.getActualTypeArgument(type) + ">";
      }
      return result;
    } else if (this.isInstanceOf(type, this.javaLangReflectTypeVariable().handle)) {
      return "java.lang.Object";
    } else if (this.isInstanceOf(type, this.javaLangReflectWildcardType().handle)) {
      return "java.lang.Object";
    } else {
      return "java.lang.Object";
    }
  };
  Env.prototype.getArrayTypeName = function(type) {
    const invokeObjectMethodNoArgs = this.vaMethod("pointer", []);
    if (this.isInstanceOf(type, this.javaLangClass().handle)) {
      return this.getClassName(type);
    } else if (this.isInstanceOf(type, this.javaLangReflectGenericArrayType().handle)) {
      const componentType = invokeObjectMethodNoArgs(this.handle, type, this.javaLangReflectGenericArrayType().getGenericComponentType);
      this.throwIfExceptionPending();
      try {
        return "[L" + this.getTypeName(componentType) + ";";
      } finally {
        this.deleteLocalRef(componentType);
      }
    } else {
      return "[Ljava.lang.Object;";
    }
  };
  Env.prototype.stringFromJni = function(str) {
    const utf = this.getStringChars(str);
    if (utf.isNull()) {
      throw new Error("Unable to access string");
    }
    try {
      const length = this.getStringLength(str);
      return utf.readUtf16String(length);
    } finally {
      this.releaseStringChars(str, utf);
    }
  };

  // ServerProject/tools/node_modules/frida-java-bridge/lib/vm.js
  var JNI_VERSION_1_6 = 65542;
  var pointerSize4 = Process.pointerSize;
  var jsThreadID = Process.getCurrentThreadId();
  var attachedThreads = /* @__PURE__ */ new Map();
  var activeEnvs = /* @__PURE__ */ new Map();
  function VM(api2) {
    const handle = api2.vm;
    let attachCurrentThread = null;
    let detachCurrentThread = null;
    let getEnv = null;
    function initialize2() {
      const vtable2 = handle.readPointer();
      const options = {
        exceptions: "propagate"
      };
      attachCurrentThread = new NativeFunction(vtable2.add(4 * pointerSize4).readPointer(), "int32", ["pointer", "pointer", "pointer"], options);
      detachCurrentThread = new NativeFunction(vtable2.add(5 * pointerSize4).readPointer(), "int32", ["pointer"], options);
      getEnv = new NativeFunction(vtable2.add(6 * pointerSize4).readPointer(), "int32", ["pointer", "pointer", "int32"], options);
    }
    this.handle = handle;
    this.perform = function(fn) {
      const threadId = Process.getCurrentThreadId();
      const cachedEnv = tryGetCachedEnv(threadId);
      if (cachedEnv !== null) {
        return fn(cachedEnv);
      }
      let env = this._tryGetEnv();
      const alreadyAttached = env !== null;
      if (!alreadyAttached) {
        env = this.attachCurrentThread();
        attachedThreads.set(threadId, true);
      }
      this.link(threadId, env);
      try {
        return fn(env);
      } finally {
        const isJsThread = threadId === jsThreadID;
        if (!isJsThread) {
          this.unlink(threadId);
        }
        if (!alreadyAttached && !isJsThread) {
          const allowedToDetach = attachedThreads.get(threadId);
          attachedThreads.delete(threadId);
          if (allowedToDetach) {
            this.detachCurrentThread();
          }
        }
      }
    };
    this.attachCurrentThread = function() {
      const envBuf = Memory.alloc(pointerSize4);
      checkJniResult("VM::AttachCurrentThread", attachCurrentThread(handle, envBuf, NULL));
      return new Env(envBuf.readPointer(), this);
    };
    this.detachCurrentThread = function() {
      checkJniResult("VM::DetachCurrentThread", detachCurrentThread(handle));
    };
    this.preventDetachDueToClassLoader = function() {
      const threadId = Process.getCurrentThreadId();
      if (attachedThreads.has(threadId)) {
        attachedThreads.set(threadId, false);
      }
    };
    this.getEnv = function() {
      const cachedEnv = tryGetCachedEnv(Process.getCurrentThreadId());
      if (cachedEnv !== null) {
        return cachedEnv;
      }
      const envBuf = Memory.alloc(pointerSize4);
      const result = getEnv(handle, envBuf, JNI_VERSION_1_6);
      if (result === -2) {
        throw new Error("Current thread is not attached to the Java VM; please move this code inside a Java.perform() callback");
      }
      checkJniResult("VM::GetEnv", result);
      return new Env(envBuf.readPointer(), this);
    };
    this.tryGetEnv = function() {
      const cachedEnv = tryGetCachedEnv(Process.getCurrentThreadId());
      if (cachedEnv !== null) {
        return cachedEnv;
      }
      return this._tryGetEnv();
    };
    this._tryGetEnv = function() {
      const h = this.tryGetEnvHandle(JNI_VERSION_1_6);
      if (h === null) {
        return null;
      }
      return new Env(h, this);
    };
    this.tryGetEnvHandle = function(version) {
      const envBuf = Memory.alloc(pointerSize4);
      const result = getEnv(handle, envBuf, version);
      if (result !== JNI_OK) {
        return null;
      }
      return envBuf.readPointer();
    };
    this.makeHandleDestructor = function(handle2) {
      return () => {
        this.perform((env) => {
          env.deleteGlobalRef(handle2);
        });
      };
    };
    this.link = function(tid, env) {
      const entry = activeEnvs.get(tid);
      if (entry === void 0) {
        activeEnvs.set(tid, [env, 1]);
      } else {
        entry[1]++;
      }
    };
    this.unlink = function(tid) {
      const entry = activeEnvs.get(tid);
      if (entry[1] === 1) {
        activeEnvs.delete(tid);
      } else {
        entry[1]--;
      }
    };
    function tryGetCachedEnv(threadId) {
      const entry = activeEnvs.get(threadId);
      if (entry === void 0) {
        return null;
      }
      return entry[0];
    }
    initialize2.call(this);
  }
  VM.dispose = function(vm3) {
    if (attachedThreads.get(jsThreadID) === true) {
      attachedThreads.delete(jsThreadID);
      vm3.detachCurrentThread();
    }
  };

  // ServerProject/tools/node_modules/frida-java-bridge/lib/android.js
  var jsizeSize = 4;
  var pointerSize5 = Process.pointerSize;
  var {
    readU32,
    readPointer,
    writeU32,
    writePointer
  } = NativePointer.prototype;
  var kAccPublic = 1;
  var kAccStatic = 8;
  var kAccFinal = 16;
  var kAccNative = 256;
  var kAccFastNative = 524288;
  var kAccCriticalNative = 2097152;
  var kAccFastInterpreterToInterpreterInvoke = 1073741824;
  var kAccSkipAccessChecks = 524288;
  var kAccSingleImplementation = 134217728;
  var kAccNterpEntryPointFastPathFlag = 1048576;
  var kAccNterpInvokeFastPathFlag = 2097152;
  var kAccPublicApi = 268435456;
  var kAccXposedHookedMethod = 268435456;
  var kPointer = 0;
  var kFullDeoptimization = 3;
  var kSelectiveDeoptimization = 5;
  var THUMB_BIT_REMOVAL_MASK = ptr(1).not();
  var X86_JMP_MAX_DISTANCE = 2147467263;
  var ARM64_ADRP_MAX_DISTANCE = 4294963200;
  var ENV_VTABLE_OFFSET_EXCEPTION_CLEAR = 17 * pointerSize5;
  var ENV_VTABLE_OFFSET_FATAL_ERROR = 18 * pointerSize5;
  var DVM_JNI_ENV_OFFSET_SELF = 12;
  var DVM_CLASS_OBJECT_OFFSET_VTABLE_COUNT = 112;
  var DVM_CLASS_OBJECT_OFFSET_VTABLE = 116;
  var DVM_OBJECT_OFFSET_CLAZZ = 0;
  var DVM_METHOD_SIZE = 56;
  var DVM_METHOD_OFFSET_ACCESS_FLAGS = 4;
  var DVM_METHOD_OFFSET_METHOD_INDEX = 8;
  var DVM_METHOD_OFFSET_REGISTERS_SIZE = 10;
  var DVM_METHOD_OFFSET_OUTS_SIZE = 12;
  var DVM_METHOD_OFFSET_INS_SIZE = 14;
  var DVM_METHOD_OFFSET_SHORTY = 28;
  var DVM_METHOD_OFFSET_JNI_ARG_INFO = 36;
  var DALVIK_JNI_RETURN_VOID = 0;
  var DALVIK_JNI_RETURN_FLOAT = 1;
  var DALVIK_JNI_RETURN_DOUBLE = 2;
  var DALVIK_JNI_RETURN_S8 = 3;
  var DALVIK_JNI_RETURN_S4 = 4;
  var DALVIK_JNI_RETURN_S2 = 5;
  var DALVIK_JNI_RETURN_U2 = 6;
  var DALVIK_JNI_RETURN_S1 = 7;
  var DALVIK_JNI_NO_ARG_INFO = 2147483648;
  var DALVIK_JNI_RETURN_SHIFT = 28;
  var STD_STRING_SIZE = 3 * pointerSize5;
  var STD_VECTOR_SIZE = 3 * pointerSize5;
  var AF_UNIX = 1;
  var SOCK_STREAM = 1;
  var getArtRuntimeSpec = memoize(_getArtRuntimeSpec);
  var getArtInstrumentationSpec = memoize(_getArtInstrumentationSpec);
  var getArtMethodSpec = memoize(_getArtMethodSpec);
  var getArtThreadSpec = memoize(_getArtThreadSpec);
  var getArtManagedStackSpec = memoize(_getArtManagedStackSpec);
  var getArtThreadStateTransitionImpl = memoize(_getArtThreadStateTransitionImpl);
  var getAndroidVersion = memoize(_getAndroidVersion);
  var getAndroidCodename = memoize(_getAndroidCodename);
  var getAndroidApiLevel = memoize(_getAndroidApiLevel);
  var getArtApexVersion = memoize(_getArtApexVersion);
  var getArtQuickFrameInfoGetterThunk = memoize(_getArtQuickFrameInfoGetterThunk);
  var makeCxxMethodWrapperReturningPointerByValue = Process.arch === "ia32" ? makeCxxMethodWrapperReturningPointerByValueInFirstArg : makeCxxMethodWrapperReturningPointerByValueGeneric;
  var nativeFunctionOptions3 = {
    exceptions: "propagate"
  };
  var artThreadStateTransitions = {};
  var cachedApi = null;
  var cachedArtClassLinkerSpec = null;
  var MethodMangler = null;
  var artController = null;
  var inlineHooks = [];
  var patchedClasses = /* @__PURE__ */ new Map();
  var artQuickInterceptors = [];
  var thunkPage = null;
  var thunkOffset = 0;
  var taughtArtAboutReplacementMethods = false;
  var taughtArtAboutMethodInstrumentation = false;
  var backtraceModule = null;
  var jdwpSessions = [];
  var socketpair = null;
  var trampolineAllocator = null;
  function getApi() {
    if (cachedApi === null) {
      cachedApi = _getApi();
    }
    return cachedApi;
  }
  function _getApi() {
    const vmModules = Process.enumerateModules().filter((m) => /^lib(art|dvm).so$/.test(m.name)).filter((m) => !/\/system\/fake-libs/.test(m.path));
    if (vmModules.length === 0) {
      return null;
    }
    const vmModule = vmModules[0];
    const flavor = vmModule.name.indexOf("art") !== -1 ? "art" : "dalvik";
    const isArt = flavor === "art";
    const temporaryApi = {
      module: vmModule,
      find(name) {
        const { module } = this;
        let address = module.findExportByName(name);
        if (address === null) {
          address = module.findSymbolByName(name);
        }
        return address;
      },
      flavor,
      addLocalReference: null
    };
    temporaryApi.isApiLevel34OrApexEquivalent = isArt && (temporaryApi.find("_ZN3art7AppInfo29GetPrimaryApkReferenceProfileEv") !== null || temporaryApi.find("_ZN3art6Thread15RunFlipFunctionEPS0_") !== null);
    const pending = isArt ? {
      functions: {
        JNI_GetCreatedJavaVMs: ["JNI_GetCreatedJavaVMs", "int", ["pointer", "int", "pointer"]],
        // Android < 7
        artInterpreterToCompiledCodeBridge: function(address) {
          this.artInterpreterToCompiledCodeBridge = address;
        },
        // Android >= 8
        _ZN3art9JavaVMExt12AddGlobalRefEPNS_6ThreadENS_6ObjPtrINS_6mirror6ObjectEEE: ["art::JavaVMExt::AddGlobalRef", "pointer", ["pointer", "pointer", "pointer"]],
        // Android >= 6
        _ZN3art9JavaVMExt12AddGlobalRefEPNS_6ThreadEPNS_6mirror6ObjectE: ["art::JavaVMExt::AddGlobalRef", "pointer", ["pointer", "pointer", "pointer"]],
        // Android < 6: makeAddGlobalRefFallbackForAndroid5() needs these:
        _ZN3art17ReaderWriterMutex13ExclusiveLockEPNS_6ThreadE: ["art::ReaderWriterMutex::ExclusiveLock", "void", ["pointer", "pointer"]],
        _ZN3art17ReaderWriterMutex15ExclusiveUnlockEPNS_6ThreadE: ["art::ReaderWriterMutex::ExclusiveUnlock", "void", ["pointer", "pointer"]],
        // Android <= 7
        _ZN3art22IndirectReferenceTable3AddEjPNS_6mirror6ObjectE: function(address) {
          this["art::IndirectReferenceTable::Add"] = new NativeFunction(address, "pointer", ["pointer", "uint", "pointer"], nativeFunctionOptions3);
        },
        // Android > 7
        _ZN3art22IndirectReferenceTable3AddENS_15IRTSegmentStateENS_6ObjPtrINS_6mirror6ObjectEEE: function(address) {
          this["art::IndirectReferenceTable::Add"] = new NativeFunction(address, "pointer", ["pointer", "uint", "pointer"], nativeFunctionOptions3);
        },
        // Android >= 7
        _ZN3art9JavaVMExt12DecodeGlobalEPv: function(address) {
          let decodeGlobal;
          if (getAndroidApiLevel() >= 26) {
            decodeGlobal = makeCxxMethodWrapperReturningPointerByValue(address, ["pointer", "pointer"]);
          } else {
            decodeGlobal = new NativeFunction(address, "pointer", ["pointer", "pointer"], nativeFunctionOptions3);
          }
          this["art::JavaVMExt::DecodeGlobal"] = function(vm3, thread, ref) {
            return decodeGlobal(vm3, ref);
          };
        },
        // Android >= 6
        _ZN3art9JavaVMExt12DecodeGlobalEPNS_6ThreadEPv: ["art::JavaVMExt::DecodeGlobal", "pointer", ["pointer", "pointer", "pointer"]],
        // makeDecodeGlobalFallback() uses:
        // Android >= 15
        _ZNK3art6Thread19DecodeGlobalJObjectEP8_jobject: ["art::Thread::DecodeJObject", "pointer", ["pointer", "pointer"]],
        // Android < 6
        _ZNK3art6Thread13DecodeJObjectEP8_jobject: ["art::Thread::DecodeJObject", "pointer", ["pointer", "pointer"]],
        // Android >= 6
        _ZN3art10ThreadList10SuspendAllEPKcb: ["art::ThreadList::SuspendAll", "void", ["pointer", "pointer", "bool"]],
        // or fallback:
        _ZN3art10ThreadList10SuspendAllEv: function(address) {
          const suspendAll = new NativeFunction(address, "void", ["pointer"], nativeFunctionOptions3);
          this["art::ThreadList::SuspendAll"] = function(threadList, cause, longSuspend) {
            return suspendAll(threadList);
          };
        },
        _ZN3art10ThreadList9ResumeAllEv: ["art::ThreadList::ResumeAll", "void", ["pointer"]],
        // Android >= 7
        _ZN3art11ClassLinker12VisitClassesEPNS_12ClassVisitorE: ["art::ClassLinker::VisitClasses", "void", ["pointer", "pointer"]],
        // Android < 7
        _ZN3art11ClassLinker12VisitClassesEPFbPNS_6mirror5ClassEPvES4_: function(address) {
          const visitClasses = new NativeFunction(address, "void", ["pointer", "pointer", "pointer"], nativeFunctionOptions3);
          this["art::ClassLinker::VisitClasses"] = function(classLinker, visitor) {
            visitClasses(classLinker, visitor, NULL);
          };
        },
        _ZNK3art11ClassLinker17VisitClassLoadersEPNS_18ClassLoaderVisitorE: ["art::ClassLinker::VisitClassLoaders", "void", ["pointer", "pointer"]],
        _ZN3art2gc4Heap12VisitObjectsEPFvPNS_6mirror6ObjectEPvES5_: ["art::gc::Heap::VisitObjects", "void", ["pointer", "pointer", "pointer"]],
        _ZN3art2gc4Heap12GetInstancesERNS_24VariableSizedHandleScopeENS_6HandleINS_6mirror5ClassEEEiRNSt3__16vectorINS4_INS5_6ObjectEEENS8_9allocatorISB_EEEE: ["art::gc::Heap::GetInstances", "void", ["pointer", "pointer", "pointer", "int", "pointer"]],
        // Android >= 9
        _ZN3art2gc4Heap12GetInstancesERNS_24VariableSizedHandleScopeENS_6HandleINS_6mirror5ClassEEEbiRNSt3__16vectorINS4_INS5_6ObjectEEENS8_9allocatorISB_EEEE: function(address) {
          const getInstances = new NativeFunction(address, "void", ["pointer", "pointer", "pointer", "bool", "int", "pointer"], nativeFunctionOptions3);
          this["art::gc::Heap::GetInstances"] = function(instance, scope, hClass, maxCount, instances) {
            const useIsAssignableFrom = 0;
            getInstances(instance, scope, hClass, useIsAssignableFrom, maxCount, instances);
          };
        },
        _ZN3art12StackVisitorC2EPNS_6ThreadEPNS_7ContextENS0_13StackWalkKindEjb: ["art::StackVisitor::StackVisitor", "void", ["pointer", "pointer", "pointer", "uint", "uint", "bool"]],
        _ZN3art12StackVisitorC2EPNS_6ThreadEPNS_7ContextENS0_13StackWalkKindEmb: ["art::StackVisitor::StackVisitor", "void", ["pointer", "pointer", "pointer", "uint", "size_t", "bool"]],
        _ZN3art12StackVisitor9WalkStackILNS0_16CountTransitionsE0EEEvb: ["art::StackVisitor::WalkStack", "void", ["pointer", "bool"]],
        _ZNK3art12StackVisitor9GetMethodEv: ["art::StackVisitor::GetMethod", "pointer", ["pointer"]],
        _ZNK3art12StackVisitor16DescribeLocationEv: function(address) {
          this["art::StackVisitor::DescribeLocation"] = makeCxxMethodWrapperReturningStdStringByValue(address, ["pointer"]);
        },
        _ZNK3art12StackVisitor24GetCurrentQuickFrameInfoEv: function(address) {
          this["art::StackVisitor::GetCurrentQuickFrameInfo"] = makeArtQuickFrameInfoGetter(address);
        },
        _ZN3art7Context6CreateEv: ["art::Context::Create", "pointer", []],
        _ZN3art6Thread18GetLongJumpContextEv: ["art::Thread::GetLongJumpContext", "pointer", ["pointer"]],
        _ZN3art6mirror5Class13GetDescriptorEPNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE: function(address) {
          this["art::mirror::Class::GetDescriptor"] = address;
        },
        _ZN3art6mirror5Class11GetLocationEv: function(address) {
          this["art::mirror::Class::GetLocation"] = makeCxxMethodWrapperReturningStdStringByValue(address, ["pointer"]);
        },
        _ZN3art9ArtMethod12PrettyMethodEb: function(address) {
          this["art::ArtMethod::PrettyMethod"] = makeCxxMethodWrapperReturningStdStringByValue(address, ["pointer", "bool"]);
        },
        _ZN3art12PrettyMethodEPNS_9ArtMethodEb: function(address) {
          this["art::ArtMethod::PrettyMethodNullSafe"] = makeCxxMethodWrapperReturningStdStringByValue(address, ["pointer", "bool"]);
        },
        // Android < 6 for cloneArtMethod()
        _ZN3art6Thread14CurrentFromGdbEv: ["art::Thread::CurrentFromGdb", "pointer", []],
        _ZN3art6mirror6Object5CloneEPNS_6ThreadE: function(address) {
          this["art::mirror::Object::Clone"] = new NativeFunction(address, "pointer", ["pointer", "pointer"], nativeFunctionOptions3);
        },
        _ZN3art6mirror6Object5CloneEPNS_6ThreadEm: function(address) {
          const clone = new NativeFunction(address, "pointer", ["pointer", "pointer", "pointer"], nativeFunctionOptions3);
          this["art::mirror::Object::Clone"] = function(thisPtr, threadPtr) {
            const numTargetBytes = NULL;
            return clone(thisPtr, threadPtr, numTargetBytes);
          };
        },
        _ZN3art6mirror6Object5CloneEPNS_6ThreadEj: function(address) {
          const clone = new NativeFunction(address, "pointer", ["pointer", "pointer", "uint"], nativeFunctionOptions3);
          this["art::mirror::Object::Clone"] = function(thisPtr, threadPtr) {
            const numTargetBytes = 0;
            return clone(thisPtr, threadPtr, numTargetBytes);
          };
        },
        _ZN3art3Dbg14SetJdwpAllowedEb: ["art::Dbg::SetJdwpAllowed", "void", ["bool"]],
        _ZN3art3Dbg13ConfigureJdwpERKNS_4JDWP11JdwpOptionsE: ["art::Dbg::ConfigureJdwp", "void", ["pointer"]],
        _ZN3art31InternalDebuggerControlCallback13StartDebuggerEv: ["art::InternalDebuggerControlCallback::StartDebugger", "void", ["pointer"]],
        _ZN3art3Dbg9StartJdwpEv: ["art::Dbg::StartJdwp", "void", []],
        _ZN3art3Dbg8GoActiveEv: ["art::Dbg::GoActive", "void", []],
        _ZN3art3Dbg21RequestDeoptimizationERKNS_21DeoptimizationRequestE: ["art::Dbg::RequestDeoptimization", "void", ["pointer"]],
        _ZN3art3Dbg20ManageDeoptimizationEv: ["art::Dbg::ManageDeoptimization", "void", []],
        _ZN3art15instrumentation15Instrumentation20EnableDeoptimizationEv: ["art::Instrumentation::EnableDeoptimization", "void", ["pointer"]],
        // Android >= 6
        _ZN3art15instrumentation15Instrumentation20DeoptimizeEverythingEPKc: ["art::Instrumentation::DeoptimizeEverything", "void", ["pointer", "pointer"]],
        // Android < 6
        _ZN3art15instrumentation15Instrumentation20DeoptimizeEverythingEv: function(address) {
          const deoptimize = new NativeFunction(address, "void", ["pointer"], nativeFunctionOptions3);
          this["art::Instrumentation::DeoptimizeEverything"] = function(instrumentation, key) {
            deoptimize(instrumentation);
          };
        },
        _ZN3art7Runtime19DeoptimizeBootImageEv: ["art::Runtime::DeoptimizeBootImage", "void", ["pointer"]],
        _ZN3art15instrumentation15Instrumentation10DeoptimizeEPNS_9ArtMethodE: ["art::Instrumentation::Deoptimize", "void", ["pointer", "pointer"]],
        // Android >= 11
        _ZN3art3jni12JniIdManager14DecodeMethodIdEP10_jmethodID: ["art::jni::JniIdManager::DecodeMethodId", "pointer", ["pointer", "pointer"]],
        _ZN3art3jni12JniIdManager13DecodeFieldIdEP9_jfieldID: ["art::jni::JniIdManager::DecodeFieldId", "pointer", ["pointer", "pointer"]],
        _ZN3art11interpreter18GetNterpEntryPointEv: ["art::interpreter::GetNterpEntryPoint", "pointer", []],
        _ZN3art7Monitor17TranslateLocationEPNS_9ArtMethodEjPPKcPi: ["art::Monitor::TranslateLocation", "void", ["pointer", "uint32", "pointer", "pointer"]]
      },
      variables: {
        _ZN3art3Dbg9gRegistryE: function(address) {
          this.isJdwpStarted = () => !address.readPointer().isNull();
        },
        _ZN3art3Dbg15gDebuggerActiveE: function(address) {
          this.isDebuggerActive = () => !!address.readU8();
        }
      },
      optionals: /* @__PURE__ */ new Set([
        "artInterpreterToCompiledCodeBridge",
        "_ZN3art9JavaVMExt12AddGlobalRefEPNS_6ThreadENS_6ObjPtrINS_6mirror6ObjectEEE",
        "_ZN3art9JavaVMExt12AddGlobalRefEPNS_6ThreadEPNS_6mirror6ObjectE",
        "_ZN3art9JavaVMExt12DecodeGlobalEPv",
        "_ZN3art9JavaVMExt12DecodeGlobalEPNS_6ThreadEPv",
        "_ZNK3art6Thread19DecodeGlobalJObjectEP8_jobject",
        "_ZNK3art6Thread13DecodeJObjectEP8_jobject",
        "_ZN3art10ThreadList10SuspendAllEPKcb",
        "_ZN3art10ThreadList10SuspendAllEv",
        "_ZN3art11ClassLinker12VisitClassesEPNS_12ClassVisitorE",
        "_ZN3art11ClassLinker12VisitClassesEPFbPNS_6mirror5ClassEPvES4_",
        "_ZNK3art11ClassLinker17VisitClassLoadersEPNS_18ClassLoaderVisitorE",
        "_ZN3art6mirror6Object5CloneEPNS_6ThreadE",
        "_ZN3art6mirror6Object5CloneEPNS_6ThreadEm",
        "_ZN3art6mirror6Object5CloneEPNS_6ThreadEj",
        "_ZN3art22IndirectReferenceTable3AddEjPNS_6mirror6ObjectE",
        "_ZN3art22IndirectReferenceTable3AddENS_15IRTSegmentStateENS_6ObjPtrINS_6mirror6ObjectEEE",
        "_ZN3art2gc4Heap12VisitObjectsEPFvPNS_6mirror6ObjectEPvES5_",
        "_ZN3art2gc4Heap12GetInstancesERNS_24VariableSizedHandleScopeENS_6HandleINS_6mirror5ClassEEEiRNSt3__16vectorINS4_INS5_6ObjectEEENS8_9allocatorISB_EEEE",
        "_ZN3art2gc4Heap12GetInstancesERNS_24VariableSizedHandleScopeENS_6HandleINS_6mirror5ClassEEEbiRNSt3__16vectorINS4_INS5_6ObjectEEENS8_9allocatorISB_EEEE",
        "_ZN3art12StackVisitorC2EPNS_6ThreadEPNS_7ContextENS0_13StackWalkKindEjb",
        "_ZN3art12StackVisitorC2EPNS_6ThreadEPNS_7ContextENS0_13StackWalkKindEmb",
        "_ZN3art12StackVisitor9WalkStackILNS0_16CountTransitionsE0EEEvb",
        "_ZNK3art12StackVisitor9GetMethodEv",
        "_ZNK3art12StackVisitor16DescribeLocationEv",
        "_ZNK3art12StackVisitor24GetCurrentQuickFrameInfoEv",
        "_ZN3art7Context6CreateEv",
        "_ZN3art6Thread18GetLongJumpContextEv",
        "_ZN3art6mirror5Class13GetDescriptorEPNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE",
        "_ZN3art6mirror5Class11GetLocationEv",
        "_ZN3art9ArtMethod12PrettyMethodEb",
        "_ZN3art12PrettyMethodEPNS_9ArtMethodEb",
        "_ZN3art3Dbg13ConfigureJdwpERKNS_4JDWP11JdwpOptionsE",
        "_ZN3art31InternalDebuggerControlCallback13StartDebuggerEv",
        "_ZN3art3Dbg15gDebuggerActiveE",
        "_ZN3art15instrumentation15Instrumentation20EnableDeoptimizationEv",
        "_ZN3art15instrumentation15Instrumentation20DeoptimizeEverythingEPKc",
        "_ZN3art15instrumentation15Instrumentation20DeoptimizeEverythingEv",
        "_ZN3art7Runtime19DeoptimizeBootImageEv",
        "_ZN3art15instrumentation15Instrumentation10DeoptimizeEPNS_9ArtMethodE",
        "_ZN3art3Dbg9StartJdwpEv",
        "_ZN3art3Dbg8GoActiveEv",
        "_ZN3art3Dbg21RequestDeoptimizationERKNS_21DeoptimizationRequestE",
        "_ZN3art3Dbg20ManageDeoptimizationEv",
        "_ZN3art3Dbg9gRegistryE",
        "_ZN3art3jni12JniIdManager14DecodeMethodIdEP10_jmethodID",
        "_ZN3art3jni12JniIdManager13DecodeFieldIdEP9_jfieldID",
        "_ZN3art11interpreter18GetNterpEntryPointEv",
        "_ZN3art7Monitor17TranslateLocationEPNS_9ArtMethodEjPPKcPi"
      ])
    } : {
      functions: {
        _Z20dvmDecodeIndirectRefP6ThreadP8_jobject: ["dvmDecodeIndirectRef", "pointer", ["pointer", "pointer"]],
        _Z15dvmUseJNIBridgeP6MethodPv: ["dvmUseJNIBridge", "void", ["pointer", "pointer"]],
        _Z20dvmHeapSourceGetBasev: ["dvmHeapSourceGetBase", "pointer", []],
        _Z21dvmHeapSourceGetLimitv: ["dvmHeapSourceGetLimit", "pointer", []],
        _Z16dvmIsValidObjectPK6Object: ["dvmIsValidObject", "uint8", ["pointer"]],
        JNI_GetCreatedJavaVMs: ["JNI_GetCreatedJavaVMs", "int", ["pointer", "int", "pointer"]]
      },
      variables: {
        gDvmJni: function(address) {
          this.gDvmJni = address;
        },
        gDvm: function(address) {
          this.gDvm = address;
        }
      }
    };
    const {
      functions = {},
      variables = {},
      optionals = /* @__PURE__ */ new Set()
    } = pending;
    const missing = [];
    for (const [name, signature] of Object.entries(functions)) {
      const address = temporaryApi.find(name);
      if (address !== null) {
        if (typeof signature === "function") {
          signature.call(temporaryApi, address);
        } else {
          temporaryApi[signature[0]] = new NativeFunction(address, signature[1], signature[2], nativeFunctionOptions3);
        }
      } else {
        if (!optionals.has(name)) {
          missing.push(name);
        }
      }
    }
    for (const [name, handler] of Object.entries(variables)) {
      const address = temporaryApi.find(name);
      if (address !== null) {
        handler.call(temporaryApi, address);
      } else {
        if (!optionals.has(name)) {
          missing.push(name);
        }
      }
    }
    if (missing.length > 0) {
      throw new Error("Java API only partially available; please file a bug. Missing: " + missing.join(", "));
    }
    const vms = Memory.alloc(pointerSize5);
    const vmCount = Memory.alloc(jsizeSize);
    checkJniResult("JNI_GetCreatedJavaVMs", temporaryApi.JNI_GetCreatedJavaVMs(vms, 1, vmCount));
    if (vmCount.readInt() === 0) {
      return null;
    }
    temporaryApi.vm = vms.readPointer();
    if (isArt) {
      const apiLevel = getAndroidApiLevel();
      let kAccCompileDontBother;
      if (apiLevel >= 27) {
        kAccCompileDontBother = 33554432;
      } else if (apiLevel >= 24) {
        kAccCompileDontBother = 16777216;
      } else {
        kAccCompileDontBother = 0;
      }
      temporaryApi.kAccCompileDontBother = kAccCompileDontBother;
      const artRuntime = temporaryApi.vm.add(pointerSize5).readPointer();
      temporaryApi.artRuntime = artRuntime;
      const runtimeSpec = getArtRuntimeSpec(temporaryApi);
      const runtimeOffset = runtimeSpec.offset;
      const instrumentationOffset = runtimeOffset.instrumentation;
      temporaryApi.artInstrumentation = instrumentationOffset !== null ? artRuntime.add(instrumentationOffset) : null;
      const instrumentationIsPointer = getArtApexVersion() >= 36e7;
      if (instrumentationIsPointer && temporaryApi.artInstrumentation != null) {
        temporaryApi.artInstrumentation = temporaryApi.artInstrumentation.readPointer();
      }
      temporaryApi.artHeap = artRuntime.add(runtimeOffset.heap).readPointer();
      temporaryApi.artThreadList = artRuntime.add(runtimeOffset.threadList).readPointer();
      const classLinker = artRuntime.add(runtimeOffset.classLinker).readPointer();
      const classLinkerOffsets = getArtClassLinkerSpec(artRuntime, runtimeSpec).offset;
      const quickResolutionTrampoline = classLinker.add(classLinkerOffsets.quickResolutionTrampoline).readPointer();
      const quickImtConflictTrampoline = classLinker.add(classLinkerOffsets.quickImtConflictTrampoline).readPointer();
      const quickGenericJniTrampoline = classLinker.add(classLinkerOffsets.quickGenericJniTrampoline).readPointer();
      const quickToInterpreterBridgeTrampoline = classLinker.add(classLinkerOffsets.quickToInterpreterBridgeTrampoline).readPointer();
      temporaryApi.artClassLinker = {
        address: classLinker,
        quickResolutionTrampoline,
        quickImtConflictTrampoline,
        quickGenericJniTrampoline,
        quickToInterpreterBridgeTrampoline
      };
      const vm3 = new VM(temporaryApi);
      temporaryApi.artQuickGenericJniTrampoline = getArtQuickEntrypointFromTrampoline(quickGenericJniTrampoline, vm3);
      temporaryApi.artQuickToInterpreterBridge = getArtQuickEntrypointFromTrampoline(quickToInterpreterBridgeTrampoline, vm3);
      temporaryApi.artQuickResolutionTrampoline = getArtQuickEntrypointFromTrampoline(quickResolutionTrampoline, vm3);
      if (temporaryApi["art::JavaVMExt::AddGlobalRef"] === void 0) {
        temporaryApi["art::JavaVMExt::AddGlobalRef"] = makeAddGlobalRefFallbackForAndroid5(temporaryApi);
      }
      if (temporaryApi["art::JavaVMExt::DecodeGlobal"] === void 0) {
        temporaryApi["art::JavaVMExt::DecodeGlobal"] = makeDecodeGlobalFallback(temporaryApi);
      }
      if (temporaryApi["art::ArtMethod::PrettyMethod"] === void 0) {
        temporaryApi["art::ArtMethod::PrettyMethod"] = temporaryApi["art::ArtMethod::PrettyMethodNullSafe"];
      }
      if (temporaryApi["art::interpreter::GetNterpEntryPoint"] !== void 0) {
        temporaryApi.artNterpEntryPoint = temporaryApi["art::interpreter::GetNterpEntryPoint"]();
      } else {
        temporaryApi.artNterpEntryPoint = temporaryApi.find("ExecuteNterpImpl");
      }
      artController = makeArtController(temporaryApi, vm3);
      fixupArtQuickDeliverExceptionBug(temporaryApi);
      let cachedJvmti = null;
      Object.defineProperty(temporaryApi, "jvmti", {
        get() {
          if (cachedJvmti === null) {
            cachedJvmti = [tryGetEnvJvmti(vm3, this.artRuntime)];
          }
          return cachedJvmti[0];
        }
      });
    }
    const cxxImports = vmModule.enumerateImports().filter((imp) => imp.name.indexOf("_Z") === 0).reduce((result, imp) => {
      result[imp.name] = imp.address;
      return result;
    }, {});
    temporaryApi.$new = new NativeFunction(cxxImports._Znwm || cxxImports._Znwj, "pointer", ["ulong"], nativeFunctionOptions3);
    temporaryApi.$delete = new NativeFunction(cxxImports._ZdlPv, "void", ["pointer"], nativeFunctionOptions3);
    MethodMangler = isArt ? ArtMethodMangler : DalvikMethodMangler;
    return temporaryApi;
  }
  function tryGetEnvJvmti(vm3, runtime2) {
    let env = null;
    vm3.perform(() => {
      const ensurePluginLoadedAddr = getApi().find("_ZN3art7Runtime18EnsurePluginLoadedEPKcPNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE");
      if (ensurePluginLoadedAddr === null) {
        return;
      }
      const ensurePluginLoaded = new NativeFunction(
        ensurePluginLoadedAddr,
        "bool",
        ["pointer", "pointer", "pointer"]
      );
      const errorPtr = Memory.alloc(pointerSize5);
      const success = ensurePluginLoaded(runtime2, Memory.allocUtf8String("libopenjdkjvmti.so"), errorPtr);
      if (!success) {
        return;
      }
      const kArtTiVersion = jvmtiVersion.v1_2 | 1073741824;
      const handle = vm3.tryGetEnvHandle(kArtTiVersion);
      if (handle === null) {
        return;
      }
      env = new EnvJvmti(handle, vm3);
      const capaBuf = Memory.alloc(8);
      capaBuf.writeU64(jvmtiCapabilities.canTagObjects);
      const result = env.addCapabilities(capaBuf);
      if (result !== JNI_OK) {
        env = null;
      }
    });
    return env;
  }
  function ensureClassInitialized(env, classRef) {
    const api2 = getApi();
    if (api2.flavor !== "art") {
      return;
    }
    env.getClassName(classRef);
  }
  function getArtVMSpec(api2) {
    return {
      offset: pointerSize5 === 4 ? {
        globalsLock: 32,
        globals: 72
      } : {
        globalsLock: 64,
        globals: 112
      }
    };
  }
  function _getArtRuntimeSpec(api2) {
    const vm3 = api2.vm;
    const runtime2 = api2.artRuntime;
    const startOffset = pointerSize5 === 4 ? 200 : 384;
    const endOffset = startOffset + 100 * pointerSize5;
    const apiLevel = getAndroidApiLevel();
    const codename = getAndroidCodename();
    const { isApiLevel34OrApexEquivalent } = api2;
    let spec = null;
    for (let offset = startOffset; offset !== endOffset; offset += pointerSize5) {
      const value = runtime2.add(offset).readPointer();
      if (value.equals(vm3)) {
        let classLinkerOffsets;
        let jniIdManagerOffset = null;
        if (apiLevel >= 33 || codename === "Tiramisu" || isApiLevel34OrApexEquivalent) {
          classLinkerOffsets = [offset - 4 * pointerSize5];
          jniIdManagerOffset = offset - pointerSize5;
        } else if (apiLevel >= 30 || codename === "R") {
          classLinkerOffsets = [offset - 3 * pointerSize5, offset - 4 * pointerSize5];
          jniIdManagerOffset = offset - pointerSize5;
        } else if (apiLevel >= 29) {
          classLinkerOffsets = [offset - 2 * pointerSize5];
        } else if (apiLevel >= 27) {
          classLinkerOffsets = [offset - STD_STRING_SIZE - 3 * pointerSize5];
        } else {
          classLinkerOffsets = [offset - STD_STRING_SIZE - 2 * pointerSize5];
        }
        for (const classLinkerOffset of classLinkerOffsets) {
          const internTableOffset = classLinkerOffset - pointerSize5;
          const threadListOffset = internTableOffset - pointerSize5;
          let heapOffset;
          if (isApiLevel34OrApexEquivalent) {
            heapOffset = threadListOffset - 9 * pointerSize5;
          } else if (apiLevel >= 24) {
            heapOffset = threadListOffset - 8 * pointerSize5;
          } else if (apiLevel >= 23) {
            heapOffset = threadListOffset - 7 * pointerSize5;
          } else {
            heapOffset = threadListOffset - 4 * pointerSize5;
          }
          const candidate = {
            offset: {
              heap: heapOffset,
              threadList: threadListOffset,
              internTable: internTableOffset,
              classLinker: classLinkerOffset,
              jniIdManager: jniIdManagerOffset
            }
          };
          if (tryGetArtClassLinkerSpec(runtime2, candidate) !== null) {
            spec = candidate;
            break;
          }
        }
        break;
      }
    }
    if (spec === null) {
      throw new Error("Unable to determine Runtime field offsets");
    }
    const instrumentationIsPointer = getArtApexVersion() >= 36e7;
    spec.offset.instrumentation = instrumentationIsPointer ? tryDetectInstrumentationPointer(api2) : tryDetectInstrumentationOffset(api2);
    spec.offset.jniIdsIndirection = tryDetectJniIdsIndirectionOffset(api2);
    return spec;
  }
  var instrumentationOffsetParsers = {
    ia32: parsex86InstrumentationOffset,
    x64: parsex86InstrumentationOffset,
    arm: parseArmInstrumentationOffset,
    arm64: parseArm64InstrumentationOffset
  };
  function tryDetectInstrumentationOffset(api2) {
    const impl = api2["art::Runtime::DeoptimizeBootImage"];
    if (impl === void 0) {
      return null;
    }
    return parseInstructionsAt(impl, instrumentationOffsetParsers[Process.arch], { limit: 30 });
  }
  function parsex86InstrumentationOffset(insn) {
    if (insn.mnemonic !== "lea") {
      return null;
    }
    const offset = insn.operands[1].value.disp;
    if (offset < 256 || offset > 1024) {
      return null;
    }
    return offset;
  }
  function parseArmInstrumentationOffset(insn) {
    if (insn.mnemonic !== "add.w") {
      return null;
    }
    const ops = insn.operands;
    if (ops.length !== 3) {
      return null;
    }
    const op2 = ops[2];
    if (op2.type !== "imm") {
      return null;
    }
    return op2.value;
  }
  function parseArm64InstrumentationOffset(insn) {
    if (insn.mnemonic !== "add") {
      return null;
    }
    const ops = insn.operands;
    if (ops.length !== 3) {
      return null;
    }
    if (ops[0].value === "sp" || ops[1].value === "sp") {
      return null;
    }
    const op2 = ops[2];
    if (op2.type !== "imm") {
      return null;
    }
    const offset = op2.value.valueOf();
    if (offset < 256 || offset > 1024) {
      return null;
    }
    return offset;
  }
  var instrumentationPointerParser = {
    ia32: parsex86InstrumentationPointer,
    x64: parsex86InstrumentationPointer,
    arm: parseArmInstrumentationPointer,
    arm64: parseArm64InstrumentationPointer
  };
  function tryDetectInstrumentationPointer(api2) {
    const impl = api2["art::Runtime::DeoptimizeBootImage"];
    if (impl === void 0) {
      return null;
    }
    return parseInstructionsAt(impl, instrumentationPointerParser[Process.arch], { limit: 30 });
  }
  function parsex86InstrumentationPointer(insn) {
    if (insn.mnemonic !== "mov") {
      return null;
    }
    const ops = insn.operands;
    const dst = ops[0];
    if (dst.value !== "rax") {
      return null;
    }
    const src = ops[1];
    if (src.type !== "mem") {
      return null;
    }
    const mem = src.value;
    if (mem.base !== "rdi") {
      return null;
    }
    const offset = mem.disp;
    if (offset < 256 || offset > 1024) {
      return null;
    }
    return offset;
  }
  function parseArmInstrumentationPointer(insn) {
    return null;
  }
  function parseArm64InstrumentationPointer(insn) {
    if (insn.mnemonic !== "ldr") {
      return null;
    }
    const ops = insn.operands;
    if (ops[0].value === "x0") {
      return null;
    }
    const mem = ops[1].value;
    if (mem.base !== "x0") {
      return null;
    }
    const offset = mem.disp;
    if (offset < 256 || offset > 1024) {
      return null;
    }
    return offset;
  }
  var jniIdsIndirectionOffsetParsers = {
    ia32: parsex86JniIdsIndirectionOffset,
    x64: parsex86JniIdsIndirectionOffset,
    arm: parseArmJniIdsIndirectionOffset,
    arm64: parseArm64JniIdsIndirectionOffset
  };
  function tryDetectJniIdsIndirectionOffset(api2) {
    const impl = api2.find("_ZN3art7Runtime12SetJniIdTypeENS_9JniIdTypeE");
    if (impl === null) {
      return null;
    }
    const offset = parseInstructionsAt(impl, jniIdsIndirectionOffsetParsers[Process.arch], { limit: 20 });
    if (offset === null) {
      throw new Error("Unable to determine Runtime.jni_ids_indirection_ offset");
    }
    return offset;
  }
  function parsex86JniIdsIndirectionOffset(insn) {
    if (insn.mnemonic === "cmp") {
      return insn.operands[0].value.disp;
    }
    return null;
  }
  function parseArmJniIdsIndirectionOffset(insn) {
    if (insn.mnemonic === "ldr.w") {
      return insn.operands[1].value.disp;
    }
    return null;
  }
  function parseArm64JniIdsIndirectionOffset(insn, prevInsn) {
    if (prevInsn === null) {
      return null;
    }
    const { mnemonic } = insn;
    const { mnemonic: prevMnemonic } = prevInsn;
    if (mnemonic === "cmp" && prevMnemonic === "ldr" || mnemonic === "bl" && prevMnemonic === "str") {
      return prevInsn.operands[1].value.disp;
    }
    return null;
  }
  function _getArtInstrumentationSpec() {
    const deoptimizationEnabledOffsets = {
      "4-21": 136,
      "4-22": 136,
      "4-23": 172,
      "4-24": 196,
      "4-25": 196,
      "4-26": 196,
      "4-27": 196,
      "4-28": 212,
      "4-29": 172,
      "4-30": 180,
      "4-31": 180,
      "8-21": 224,
      "8-22": 224,
      "8-23": 296,
      "8-24": 344,
      "8-25": 344,
      "8-26": 352,
      "8-27": 352,
      "8-28": 392,
      "8-29": 328,
      "8-30": 336,
      "8-31": 336
    };
    const deoptEnabledOffset = deoptimizationEnabledOffsets[`${pointerSize5}-${getAndroidApiLevel()}`];
    if (deoptEnabledOffset === void 0) {
      throw new Error("Unable to determine Instrumentation field offsets");
    }
    return {
      offset: {
        forcedInterpretOnly: 4,
        deoptimizationEnabled: deoptEnabledOffset
      }
    };
  }
  function getArtClassLinkerSpec(runtime2, runtimeSpec) {
    const spec = tryGetArtClassLinkerSpec(runtime2, runtimeSpec);
    if (spec === null) {
      throw new Error("Unable to determine ClassLinker field offsets");
    }
    return spec;
  }
  function tryGetArtClassLinkerSpec(runtime2, runtimeSpec) {
    if (cachedArtClassLinkerSpec !== null) {
      return cachedArtClassLinkerSpec;
    }
    const { classLinker: classLinkerOffset, internTable: internTableOffset } = runtimeSpec.offset;
    const classLinker = runtime2.add(classLinkerOffset).readPointer();
    const internTable = runtime2.add(internTableOffset).readPointer();
    const startOffset = pointerSize5 === 4 ? 100 : 200;
    const endOffset = startOffset + 100 * pointerSize5;
    const apiLevel = getAndroidApiLevel();
    let spec = null;
    for (let offset = startOffset; offset !== endOffset; offset += pointerSize5) {
      const value = classLinker.add(offset).readPointer();
      if (value.equals(internTable)) {
        let delta;
        if (apiLevel >= 30 || getAndroidCodename() === "R") {
          delta = 6;
        } else if (apiLevel >= 29) {
          delta = 4;
        } else if (apiLevel >= 23) {
          delta = 3;
        } else {
          delta = 5;
        }
        const quickGenericJniTrampolineOffset = offset + delta * pointerSize5;
        let quickResolutionTrampolineOffset;
        if (apiLevel >= 23) {
          quickResolutionTrampolineOffset = quickGenericJniTrampolineOffset - 2 * pointerSize5;
        } else {
          quickResolutionTrampolineOffset = quickGenericJniTrampolineOffset - 3 * pointerSize5;
        }
        spec = {
          offset: {
            quickResolutionTrampoline: quickResolutionTrampolineOffset,
            quickImtConflictTrampoline: quickGenericJniTrampolineOffset - pointerSize5,
            quickGenericJniTrampoline: quickGenericJniTrampolineOffset,
            quickToInterpreterBridgeTrampoline: quickGenericJniTrampolineOffset + pointerSize5
          }
        };
        break;
      }
    }
    if (spec !== null) {
      cachedArtClassLinkerSpec = spec;
    }
    return spec;
  }
  function getArtClassSpec(vm3) {
    const MAX_OFFSET = 256;
    let spec = null;
    vm3.perform((env) => {
      const fieldSpec = getArtFieldSpec(vm3);
      const methodSpec = getArtMethodSpec(vm3);
      const fInfo = {
        artArrayLengthSize: 4,
        artArrayEntrySize: fieldSpec.size,
        // java/lang/Thread has 36 fields on Android 16.
        artArrayMax: 50
      };
      const mInfo = {
        artArrayLengthSize: pointerSize5,
        artArrayEntrySize: methodSpec.size,
        // java/lang/Thread has 79 methods on Android 16.
        artArrayMax: 100
      };
      const readArtArray = (objectBase, fieldOffset, lengthSize) => {
        const header = objectBase.add(fieldOffset).readPointer();
        if (header.isNull()) {
          return null;
        }
        const length = lengthSize === 4 ? header.readU32() : header.readU64().valueOf();
        if (length <= 0) {
          return null;
        }
        return {
          length,
          data: header.add(lengthSize)
        };
      };
      const hasEntry = (objectBase, offset, needle, info) => {
        try {
          const artArray = readArtArray(objectBase, offset, info.artArrayLengthSize);
          if (artArray === null) {
            return false;
          }
          const artArrayEnd = Math.min(artArray.length, info.artArrayMax);
          for (let i = 0; i !== artArrayEnd; i++) {
            const fieldPtr = artArray.data.add(i * info.artArrayEntrySize);
            if (fieldPtr.equals(needle)) {
              return true;
            }
          }
        } catch {
        }
        return false;
      };
      const clazz = env.findClass("java/lang/Thread");
      const clazzRef = env.newGlobalRef(clazz);
      try {
        let object;
        withRunnableArtThread(vm3, env, (thread) => {
          object = getApi()["art::JavaVMExt::DecodeGlobal"](vm3, thread, clazzRef);
        });
        const fieldInstance = unwrapFieldId(env.getFieldId(clazzRef, "name", "Ljava/lang/String;"));
        const fieldStatic = unwrapFieldId(env.getStaticFieldId(clazzRef, "MAX_PRIORITY", "I"));
        let offsetStatic = -1;
        let offsetInstance = -1;
        for (let offset = 0; offset !== MAX_OFFSET; offset += 4) {
          if (offsetStatic === -1 && hasEntry(object, offset, fieldStatic, fInfo)) {
            offsetStatic = offset;
          }
          if (offsetInstance === -1 && hasEntry(object, offset, fieldInstance, fInfo)) {
            offsetInstance = offset;
          }
        }
        if (offsetInstance === -1 || offsetStatic === -1) {
          throw new Error("Unable to find fields in java/lang/Thread; please file a bug");
        }
        const sfieldOffset = offsetInstance !== offsetStatic ? offsetStatic : 0;
        const ifieldOffset = offsetInstance;
        let offsetMethods = -1;
        const methodInstance = unwrapMethodId(env.getMethodId(clazzRef, "getName", "()Ljava/lang/String;"));
        for (let offset = 0; offset !== MAX_OFFSET; offset += 4) {
          if (offsetMethods === -1 && hasEntry(object, offset, methodInstance, mInfo)) {
            offsetMethods = offset;
          }
        }
        if (offsetMethods === -1) {
          throw new Error("Unable to find methods in java/lang/Thread; please file a bug");
        }
        let offsetCopiedMethods = -1;
        const methodsArray = readArtArray(object, offsetMethods, mInfo.artArrayLengthSize);
        const methodsArraySize = methodsArray.length;
        for (let offset = offsetMethods; offset !== MAX_OFFSET; offset += 4) {
          if (object.add(offset).readU16() === methodsArraySize) {
            offsetCopiedMethods = offset;
            break;
          }
        }
        if (offsetCopiedMethods === -1) {
          throw new Error("Unable to find copied methods in java/lang/Thread; please file a bug");
        }
        spec = {
          offset: {
            ifields: ifieldOffset,
            methods: offsetMethods,
            sfields: sfieldOffset,
            copiedMethodsOffset: offsetCopiedMethods
          }
        };
      } finally {
        env.deleteLocalRef(clazz);
        env.deleteGlobalRef(clazzRef);
      }
    });
    return spec;
  }
  function _getArtMethodSpec(vm3) {
    const api2 = getApi();
    let spec;
    vm3.perform((env) => {
      const process = env.findClass("android/os/Process");
      const getElapsedCpuTime = unwrapMethodId(env.getStaticMethodId(process, "getElapsedCpuTime", "()J"));
      env.deleteLocalRef(process);
      const runtimeModule = Process.getModuleByName("libandroid_runtime.so");
      const runtimeStart = runtimeModule.base;
      const runtimeEnd = runtimeStart.add(runtimeModule.size);
      const apiLevel = getAndroidApiLevel();
      const entrypointFieldSize = apiLevel <= 21 ? 8 : pointerSize5;
      const expectedAccessFlags = kAccPublic | kAccStatic | kAccFinal | kAccNative;
      const relevantAccessFlagsMask = ~(kAccFastInterpreterToInterpreterInvoke | kAccPublicApi | kAccNterpInvokeFastPathFlag) >>> 0;
      let jniCodeOffset = null;
      let accessFlagsOffset = null;
      let remaining = 2;
      for (let offset = 0; offset !== 64 && remaining !== 0; offset += 4) {
        const field = getElapsedCpuTime.add(offset);
        if (jniCodeOffset === null) {
          const address = field.readPointer();
          if (address.compare(runtimeStart) >= 0 && address.compare(runtimeEnd) < 0) {
            jniCodeOffset = offset;
            remaining--;
          }
        }
        if (accessFlagsOffset === null) {
          const flags = field.readU32();
          if ((flags & relevantAccessFlagsMask) === expectedAccessFlags) {
            accessFlagsOffset = offset;
            remaining--;
          }
        }
      }
      if (remaining !== 0) {
        throw new Error("Unable to determine ArtMethod field offsets");
      }
      const quickCodeOffset = jniCodeOffset + entrypointFieldSize;
      const size = apiLevel <= 21 ? quickCodeOffset + 32 : quickCodeOffset + pointerSize5;
      spec = {
        size,
        offset: {
          jniCode: jniCodeOffset,
          quickCode: quickCodeOffset,
          accessFlags: accessFlagsOffset
        }
      };
      if ("artInterpreterToCompiledCodeBridge" in api2) {
        spec.offset.interpreterCode = jniCodeOffset - entrypointFieldSize;
      }
    });
    return spec;
  }
  function getArtFieldSpec(vm3) {
    const apiLevel = getAndroidApiLevel();
    if (apiLevel >= 23) {
      return {
        size: 16,
        offset: {
          accessFlags: 4
        }
      };
    }
    if (apiLevel >= 21) {
      return {
        size: 24,
        offset: {
          accessFlags: 12
        }
      };
    }
    return null;
  }
  function _getArtThreadSpec(vm3) {
    const apiLevel = getAndroidApiLevel();
    let spec;
    vm3.perform((env) => {
      const threadHandle = getArtThreadFromEnv(env);
      const envHandle = env.handle;
      let isExceptionReportedOffset = null;
      let exceptionOffset = null;
      let throwLocationOffset = null;
      let topHandleScopeOffset = null;
      let managedStackOffset = null;
      let selfOffset = null;
      for (let offset = 144; offset !== 256; offset += pointerSize5) {
        const field = threadHandle.add(offset);
        const value = field.readPointer();
        if (value.equals(envHandle)) {
          exceptionOffset = offset - 6 * pointerSize5;
          managedStackOffset = offset - 4 * pointerSize5;
          selfOffset = offset + 2 * pointerSize5;
          if (apiLevel <= 22) {
            exceptionOffset -= pointerSize5;
            isExceptionReportedOffset = exceptionOffset - pointerSize5 - 9 * 8 - 3 * 4;
            throwLocationOffset = offset + 6 * pointerSize5;
            managedStackOffset -= pointerSize5;
            selfOffset -= pointerSize5;
          }
          topHandleScopeOffset = offset + 9 * pointerSize5;
          if (apiLevel <= 22) {
            topHandleScopeOffset += 2 * pointerSize5 + 4;
            if (pointerSize5 === 8) {
              topHandleScopeOffset += 4;
            }
          }
          if (apiLevel >= 23) {
            topHandleScopeOffset += pointerSize5;
          }
          break;
        }
      }
      if (topHandleScopeOffset === null) {
        throw new Error("Unable to determine ArtThread field offsets");
      }
      spec = {
        offset: {
          isExceptionReportedToInstrumentation: isExceptionReportedOffset,
          exception: exceptionOffset,
          throwLocation: throwLocationOffset,
          topHandleScope: topHandleScopeOffset,
          managedStack: managedStackOffset,
          self: selfOffset
        }
      };
    });
    return spec;
  }
  function _getArtManagedStackSpec() {
    const apiLevel = getAndroidApiLevel();
    if (apiLevel >= 23) {
      return {
        offset: {
          topQuickFrame: 0,
          link: pointerSize5
        }
      };
    } else {
      return {
        offset: {
          topQuickFrame: 2 * pointerSize5,
          link: 0
        }
      };
    }
  }
  var artQuickTrampolineParsers = {
    ia32: parseArtQuickTrampolineX86,
    x64: parseArtQuickTrampolineX86,
    arm: parseArtQuickTrampolineArm,
    arm64: parseArtQuickTrampolineArm64
  };
  function getArtQuickEntrypointFromTrampoline(trampoline, vm3) {
    let address;
    vm3.perform((env) => {
      const thread = getArtThreadFromEnv(env);
      const tryParse = artQuickTrampolineParsers[Process.arch];
      const insn = Instruction.parse(trampoline);
      const offset = tryParse(insn);
      if (offset !== null) {
        address = thread.add(offset).readPointer();
      } else {
        address = trampoline;
      }
    });
    return address;
  }
  function parseArtQuickTrampolineX86(insn) {
    if (insn.mnemonic === "jmp") {
      return insn.operands[0].value.disp;
    }
    return null;
  }
  function parseArtQuickTrampolineArm(insn) {
    if (insn.mnemonic === "ldr.w") {
      return insn.operands[1].value.disp;
    }
    return null;
  }
  function parseArtQuickTrampolineArm64(insn) {
    if (insn.mnemonic === "ldr") {
      return insn.operands[1].value.disp;
    }
    return null;
  }
  function getArtThreadFromEnv(env) {
    return env.handle.add(pointerSize5).readPointer();
  }
  function _getAndroidVersion() {
    return getAndroidSystemProperty("ro.build.version.release");
  }
  function _getAndroidCodename() {
    return getAndroidSystemProperty("ro.build.version.codename");
  }
  function _getAndroidApiLevel() {
    return parseInt(getAndroidSystemProperty("ro.build.version.sdk"), 10);
  }
  function _getArtApexVersion() {
    try {
      const mountInfo = File.readAllText("/proc/self/mountinfo");
      let artSource = null;
      const sourceVersions = /* @__PURE__ */ new Map();
      for (const line of mountInfo.trimEnd().split("\n")) {
        const elements = line.split(" ");
        const mountRoot = elements[4];
        if (!mountRoot.startsWith("/apex/com.android.art")) {
          continue;
        }
        const mountSource = elements[10];
        if (mountRoot.includes("@")) {
          sourceVersions.set(mountSource, mountRoot.split("@")[1]);
        } else {
          artSource = mountSource;
        }
      }
      const strVersion = sourceVersions.get(artSource);
      return strVersion !== void 0 ? parseInt(strVersion) : computeArtApexVersionFromApiLevel();
    } catch {
      return computeArtApexVersionFromApiLevel();
    }
  }
  function computeArtApexVersionFromApiLevel() {
    return getAndroidApiLevel() * 1e7;
  }
  var systemPropertyGet = null;
  var PROP_VALUE_MAX = 92;
  function getAndroidSystemProperty(name) {
    if (systemPropertyGet === null) {
      systemPropertyGet = new NativeFunction(
        Process.getModuleByName("libc.so").getExportByName("__system_property_get"),
        "int",
        ["pointer", "pointer"],
        nativeFunctionOptions3
      );
    }
    const buf = Memory.alloc(PROP_VALUE_MAX);
    systemPropertyGet(Memory.allocUtf8String(name), buf);
    return buf.readUtf8String();
  }
  function withRunnableArtThread(vm3, env, fn) {
    const perform = getArtThreadStateTransitionImpl(vm3, env);
    const id = getArtThreadFromEnv(env).toString();
    artThreadStateTransitions[id] = fn;
    perform(env.handle);
    if (artThreadStateTransitions[id] !== void 0) {
      delete artThreadStateTransitions[id];
      throw new Error("Unable to perform state transition; please file a bug");
    }
  }
  function _getArtThreadStateTransitionImpl(vm3, env) {
    const callback = new NativeCallback(onThreadStateTransitionComplete, "void", ["pointer"]);
    return makeArtThreadStateTransitionImpl(vm3, env, callback);
  }
  function onThreadStateTransitionComplete(thread) {
    const id = thread.toString();
    const fn = artThreadStateTransitions[id];
    delete artThreadStateTransitions[id];
    fn(thread);
  }
  function withAllArtThreadsSuspended(fn) {
    const api2 = getApi();
    const threadList = api2.artThreadList;
    const longSuspend = false;
    api2["art::ThreadList::SuspendAll"](threadList, Memory.allocUtf8String("frida"), longSuspend ? 1 : 0);
    try {
      fn();
    } finally {
      api2["art::ThreadList::ResumeAll"](threadList);
    }
  }
  var ArtClassVisitor = class {
    constructor(visit) {
      const visitor = Memory.alloc(4 * pointerSize5);
      const vtable2 = visitor.add(pointerSize5);
      visitor.writePointer(vtable2);
      const onVisit = new NativeCallback((self, klass) => {
        return visit(klass) === true ? 1 : 0;
      }, "bool", ["pointer", "pointer"]);
      vtable2.add(2 * pointerSize5).writePointer(onVisit);
      this.handle = visitor;
      this._onVisit = onVisit;
    }
  };
  function makeArtClassVisitor(visit) {
    const api2 = getApi();
    if (api2["art::ClassLinker::VisitClasses"] instanceof NativeFunction) {
      return new ArtClassVisitor(visit);
    }
    return new NativeCallback((klass) => {
      return visit(klass) === true ? 1 : 0;
    }, "bool", ["pointer", "pointer"]);
  }
  var ArtClassLoaderVisitor = class {
    constructor(visit) {
      const visitor = Memory.alloc(4 * pointerSize5);
      const vtable2 = visitor.add(pointerSize5);
      visitor.writePointer(vtable2);
      const onVisit = new NativeCallback((self, klass) => {
        visit(klass);
      }, "void", ["pointer", "pointer"]);
      vtable2.add(2 * pointerSize5).writePointer(onVisit);
      this.handle = visitor;
      this._onVisit = onVisit;
    }
  };
  function makeArtClassLoaderVisitor(visit) {
    return new ArtClassLoaderVisitor(visit);
  }
  var WalkKind = {
    "include-inlined-frames": 0,
    "skip-inlined-frames": 1
  };
  var ArtStackVisitor = class {
    constructor(thread, context, walkKind, numFrames = 0, checkSuspended = true) {
      const api2 = getApi();
      const baseSize = 512;
      const vtableSize = 3 * pointerSize5;
      const visitor = Memory.alloc(baseSize + vtableSize);
      api2["art::StackVisitor::StackVisitor"](
        visitor,
        thread,
        context,
        WalkKind[walkKind],
        numFrames,
        checkSuspended ? 1 : 0
      );
      const vtable2 = visitor.add(baseSize);
      visitor.writePointer(vtable2);
      const onVisitFrame = new NativeCallback(this._visitFrame.bind(this), "bool", ["pointer"]);
      vtable2.add(2 * pointerSize5).writePointer(onVisitFrame);
      this.handle = visitor;
      this._onVisitFrame = onVisitFrame;
      const curShadowFrame = visitor.add(pointerSize5 === 4 ? 12 : 24);
      this._curShadowFrame = curShadowFrame;
      this._curQuickFrame = curShadowFrame.add(pointerSize5);
      this._curQuickFramePc = curShadowFrame.add(2 * pointerSize5);
      this._curOatQuickMethodHeader = curShadowFrame.add(3 * pointerSize5);
      this._getMethodImpl = api2["art::StackVisitor::GetMethod"];
      this._descLocImpl = api2["art::StackVisitor::DescribeLocation"];
      this._getCQFIImpl = api2["art::StackVisitor::GetCurrentQuickFrameInfo"];
    }
    walkStack(includeTransitions = false) {
      getApi()["art::StackVisitor::WalkStack"](this.handle, includeTransitions ? 1 : 0);
    }
    _visitFrame() {
      return this.visitFrame() ? 1 : 0;
    }
    visitFrame() {
      throw new Error("Subclass must implement visitFrame");
    }
    getMethod() {
      const methodHandle = this._getMethodImpl(this.handle);
      if (methodHandle.isNull()) {
        return null;
      }
      return new ArtMethod(methodHandle);
    }
    getCurrentQuickFramePc() {
      return this._curQuickFramePc.readPointer();
    }
    getCurrentQuickFrame() {
      return this._curQuickFrame.readPointer();
    }
    getCurrentShadowFrame() {
      return this._curShadowFrame.readPointer();
    }
    describeLocation() {
      const result = new StdString();
      this._descLocImpl(result, this.handle);
      return result.disposeToString();
    }
    getCurrentOatQuickMethodHeader() {
      return this._curOatQuickMethodHeader.readPointer();
    }
    getCurrentQuickFrameInfo() {
      return this._getCQFIImpl(this.handle);
    }
  };
  var ArtMethod = class {
    constructor(handle) {
      this.handle = handle;
    }
    prettyMethod(withSignature = true) {
      const result = new StdString();
      getApi()["art::ArtMethod::PrettyMethod"](result, this.handle, withSignature ? 1 : 0);
      return result.disposeToString();
    }
    toString() {
      return `ArtMethod(handle=${this.handle})`;
    }
  };
  function makeArtQuickFrameInfoGetter(impl) {
    return function(self) {
      const result = Memory.alloc(12);
      getArtQuickFrameInfoGetterThunk(impl)(result, self);
      return {
        frameSizeInBytes: result.readU32(),
        coreSpillMask: result.add(4).readU32(),
        fpSpillMask: result.add(8).readU32()
      };
    };
  }
  function _getArtQuickFrameInfoGetterThunk(impl) {
    let thunk = NULL;
    switch (Process.arch) {
      case "ia32":
        thunk = makeThunk(32, (writer) => {
          writer.putMovRegRegOffsetPtr("ecx", "esp", 4);
          writer.putMovRegRegOffsetPtr("edx", "esp", 8);
          writer.putCallAddressWithArguments(impl, ["ecx", "edx"]);
          writer.putMovRegReg("esp", "ebp");
          writer.putPopReg("ebp");
          writer.putRet();
        });
        break;
      case "x64":
        thunk = makeThunk(32, (writer) => {
          writer.putPushReg("rdi");
          writer.putCallAddressWithArguments(impl, ["rsi"]);
          writer.putPopReg("rdi");
          writer.putMovRegPtrReg("rdi", "rax");
          writer.putMovRegOffsetPtrReg("rdi", 8, "edx");
          writer.putRet();
        });
        break;
      case "arm":
        thunk = makeThunk(16, (writer) => {
          writer.putCallAddressWithArguments(impl, ["r0", "r1"]);
          writer.putPopRegs(["r0", "lr"]);
          writer.putMovRegReg("pc", "lr");
        });
        break;
      case "arm64":
        thunk = makeThunk(64, (writer) => {
          writer.putPushRegReg("x0", "lr");
          writer.putCallAddressWithArguments(impl, ["x1"]);
          writer.putPopRegReg("x2", "lr");
          writer.putStrRegRegOffset("x0", "x2", 0);
          writer.putStrRegRegOffset("w1", "x2", 8);
          writer.putRet();
        });
        break;
    }
    return new NativeFunction(thunk, "void", ["pointer", "pointer"], nativeFunctionOptions3);
  }
  var thunkRelocators = {
    ia32: globalThis.X86Relocator,
    x64: globalThis.X86Relocator,
    arm: globalThis.ThumbRelocator,
    arm64: globalThis.Arm64Relocator
  };
  var thunkWriters = {
    ia32: globalThis.X86Writer,
    x64: globalThis.X86Writer,
    arm: globalThis.ThumbWriter,
    arm64: globalThis.Arm64Writer
  };
  function makeThunk(size, write3) {
    if (thunkPage === null) {
      thunkPage = Memory.alloc(Process.pageSize);
    }
    const thunk = thunkPage.add(thunkOffset);
    const arch = Process.arch;
    const Writer = thunkWriters[arch];
    Memory.patchCode(thunk, size, (code3) => {
      const writer = new Writer(code3, { pc: thunk });
      write3(writer);
      writer.flush();
      if (writer.offset > size) {
        throw new Error(`Wrote ${writer.offset}, exceeding maximum of ${size}`);
      }
    });
    thunkOffset += size;
    return arch === "arm" ? thunk.or(1) : thunk;
  }
  function notifyArtMethodHooked(method, vm3) {
    ensureArtKnowsHowToHandleMethodInstrumentation(vm3);
    ensureArtKnowsHowToHandleReplacementMethods(vm3);
  }
  function makeArtController(api2, vm3) {
    const threadOffsets = getArtThreadSpec(vm3).offset;
    const managedStackOffsets = getArtManagedStackSpec().offset;
    const code3 = `
#include <gum/guminterceptor.h>

extern GMutex lock;
extern GHashTable * methods;
extern GHashTable * replacements;
extern gpointer last_seen_art_method;

extern gpointer get_oat_quick_method_header_impl (gpointer method, gpointer pc);

void
init (void)
{
  g_mutex_init (&lock);
  methods = g_hash_table_new_full (NULL, NULL, NULL, NULL);
  replacements = g_hash_table_new_full (NULL, NULL, NULL, NULL);
}

void
finalize (void)
{
  g_hash_table_unref (replacements);
  g_hash_table_unref (methods);
  g_mutex_clear (&lock);
}

gboolean
is_replacement_method (gpointer method)
{
  gboolean is_replacement;

  g_mutex_lock (&lock);

  is_replacement = g_hash_table_contains (replacements, method);

  g_mutex_unlock (&lock);

  return is_replacement;
}

gpointer
get_replacement_method (gpointer original_method)
{
  gpointer replacement_method;

  g_mutex_lock (&lock);

  replacement_method = g_hash_table_lookup (methods, original_method);

  g_mutex_unlock (&lock);

  return replacement_method;
}

void
set_replacement_method (gpointer original_method,
                        gpointer replacement_method)
{
  g_mutex_lock (&lock);

  g_hash_table_insert (methods, original_method, replacement_method);
  g_hash_table_insert (replacements, replacement_method, original_method);

  g_mutex_unlock (&lock);
}

void
synchronize_replacement_methods (guint quick_code_offset,
                                 void * nterp_entrypoint,
                                 void * quick_to_interpreter_bridge)
{
  GHashTableIter iter;
  gpointer hooked_method, replacement_method;

  g_mutex_lock (&lock);

  g_hash_table_iter_init (&iter, methods);
  while (g_hash_table_iter_next (&iter, &hooked_method, &replacement_method))
  {
    void ** quick_code;

    *((uint32_t *) replacement_method) = *((uint32_t *) hooked_method);

    quick_code = hooked_method + quick_code_offset;
    if (*quick_code == nterp_entrypoint)
      *quick_code = quick_to_interpreter_bridge;
  }

  g_mutex_unlock (&lock);
}

void
delete_replacement_method (gpointer original_method)
{
  gpointer replacement_method;

  g_mutex_lock (&lock);

  replacement_method = g_hash_table_lookup (methods, original_method);
  if (replacement_method != NULL)
  {
    g_hash_table_remove (methods, original_method);
    g_hash_table_remove (replacements, replacement_method);
  }

  g_mutex_unlock (&lock);
}

gpointer
translate_method (gpointer method)
{
  gpointer translated_method;

  g_mutex_lock (&lock);

  translated_method = g_hash_table_lookup (replacements, method);

  g_mutex_unlock (&lock);

  return (translated_method != NULL) ? translated_method : method;
}

gpointer
find_replacement_method_from_quick_code (gpointer method,
                                         gpointer thread)
{
  gpointer replacement_method;
  gpointer managed_stack;
  gpointer top_quick_frame;
  gpointer link_managed_stack;
  gpointer * link_top_quick_frame;

  replacement_method = get_replacement_method (method);
  if (replacement_method == NULL)
    return NULL;

  /*
   * Stack check.
   *
   * Return NULL to indicate that the original method should be invoked, otherwise
   * return a pointer to the replacement ArtMethod.
   *
   * If the caller is our own JNI replacement stub, then a stack transition must
   * have been pushed onto the current thread's linked list.
   *
   * Therefore, we invoke the original method if the following conditions are met:
   *   1- The current managed stack is empty.
   *   2- The ArtMethod * inside the linked managed stack's top quick frame is the
   *      same as our replacement.
   */
  managed_stack = thread + ${threadOffsets.managedStack};
  top_quick_frame = *((gpointer *) (managed_stack + ${managedStackOffsets.topQuickFrame}));
  if (top_quick_frame != NULL)
    return replacement_method;

  link_managed_stack = *((gpointer *) (managed_stack + ${managedStackOffsets.link}));
  if (link_managed_stack == NULL)
    return replacement_method;

  link_top_quick_frame = GSIZE_TO_POINTER (*((gsize *) (link_managed_stack + ${managedStackOffsets.topQuickFrame})) & ~((gsize) 1));
  if (link_top_quick_frame == NULL || *link_top_quick_frame != replacement_method)
    return replacement_method;

  return NULL;
}

void
on_interpreter_do_call (GumInvocationContext * ic)
{
  gpointer method, replacement_method;

  method = gum_invocation_context_get_nth_argument (ic, 0);

  replacement_method = get_replacement_method (method);
  if (replacement_method != NULL)
    gum_invocation_context_replace_nth_argument (ic, 0, replacement_method);
}

gpointer
on_art_method_get_oat_quick_method_header (gpointer method,
                                           gpointer pc)
{
  if (is_replacement_method (method))
    return NULL;

  return get_oat_quick_method_header_impl (method, pc);
}

void
on_art_method_pretty_method (GumInvocationContext * ic)
{
  const guint this_arg_index = ${Process.arch === "arm64" ? 0 : 1};
  gpointer method;

  method = gum_invocation_context_get_nth_argument (ic, this_arg_index);
  if (method == NULL)
    gum_invocation_context_replace_nth_argument (ic, this_arg_index, last_seen_art_method);
  else
    last_seen_art_method = method;
}

void
on_leave_gc_concurrent_copying_copying_phase (GumInvocationContext * ic)
{
  GHashTableIter iter;
  gpointer hooked_method, replacement_method;

  g_mutex_lock (&lock);

  g_hash_table_iter_init (&iter, methods);
  while (g_hash_table_iter_next (&iter, &hooked_method, &replacement_method))
    *((uint32_t *) replacement_method) = *((uint32_t *) hooked_method);

  g_mutex_unlock (&lock);
}
`;
    const lockSize = 8;
    const methodsSize = pointerSize5;
    const replacementsSize = pointerSize5;
    const lastSeenArtMethodSize = pointerSize5;
    const data = Memory.alloc(lockSize + methodsSize + replacementsSize + lastSeenArtMethodSize);
    const lock = data;
    const methods = lock.add(lockSize);
    const replacements = methods.add(methodsSize);
    const lastSeenArtMethod = replacements.add(replacementsSize);
    const getOatQuickMethodHeaderImpl = api2.find(pointerSize5 === 4 ? "_ZN3art9ArtMethod23GetOatQuickMethodHeaderEj" : "_ZN3art9ArtMethod23GetOatQuickMethodHeaderEm");
    const cm2 = new CModule(code3, {
      lock,
      methods,
      replacements,
      last_seen_art_method: lastSeenArtMethod,
      get_oat_quick_method_header_impl: getOatQuickMethodHeaderImpl ?? ptr("0xdeadbeef")
    });
    const fastOptions = { exceptions: "propagate", scheduling: "exclusive" };
    return {
      handle: cm2,
      replacedMethods: {
        isReplacement: new NativeFunction(cm2.is_replacement_method, "bool", ["pointer"], fastOptions),
        get: new NativeFunction(cm2.get_replacement_method, "pointer", ["pointer"], fastOptions),
        set: new NativeFunction(cm2.set_replacement_method, "void", ["pointer", "pointer"], fastOptions),
        synchronize: new NativeFunction(cm2.synchronize_replacement_methods, "void", ["uint", "pointer", "pointer"], fastOptions),
        delete: new NativeFunction(cm2.delete_replacement_method, "void", ["pointer"], fastOptions),
        translate: new NativeFunction(cm2.translate_method, "pointer", ["pointer"], fastOptions),
        findReplacementFromQuickCode: cm2.find_replacement_method_from_quick_code
      },
      getOatQuickMethodHeaderImpl,
      hooks: {
        Interpreter: {
          doCall: cm2.on_interpreter_do_call
        },
        ArtMethod: {
          getOatQuickMethodHeader: cm2.on_art_method_get_oat_quick_method_header,
          prettyMethod: cm2.on_art_method_pretty_method
        },
        Gc: {
          copyingPhase: {
            onLeave: cm2.on_leave_gc_concurrent_copying_copying_phase
          },
          runFlip: {
            onEnter: cm2.on_leave_gc_concurrent_copying_copying_phase
          }
        }
      }
    };
  }
  function ensureArtKnowsHowToHandleMethodInstrumentation(vm3) {
    if (taughtArtAboutMethodInstrumentation) {
      return;
    }
    taughtArtAboutMethodInstrumentation = true;
    instrumentArtQuickEntrypoints(vm3);
    instrumentArtMethodInvocationFromInterpreter();
    instrumentArtGarbageCollection();
    instrumentArtFixupStaticTrampolines();
  }
  function instrumentArtQuickEntrypoints(vm3) {
    const api2 = getApi();
    const quickEntrypoints = [
      api2.artQuickGenericJniTrampoline,
      api2.artQuickToInterpreterBridge,
      api2.artQuickResolutionTrampoline
    ];
    quickEntrypoints.forEach((entrypoint) => {
      Memory.protect(entrypoint, 32, "rwx");
      const interceptor = new ArtQuickCodeInterceptor(entrypoint);
      interceptor.activate(vm3);
      artQuickInterceptors.push(interceptor);
    });
  }
  function instrumentArtMethodInvocationFromInterpreter() {
    const api2 = getApi();
    const apiLevel = getAndroidApiLevel();
    const { isApiLevel34OrApexEquivalent } = api2;
    let artInterpreterDoCallExportRegex;
    if (apiLevel <= 22) {
      artInterpreterDoCallExportRegex = /^_ZN3art11interpreter6DoCallILb[0-1]ELb[0-1]EEEbPNS_6mirror9ArtMethodEPNS_6ThreadERNS_11ShadowFrameEPKNS_11InstructionEtPNS_6JValueE$/;
    } else if (apiLevel <= 33 && !isApiLevel34OrApexEquivalent) {
      artInterpreterDoCallExportRegex = /^_ZN3art11interpreter6DoCallILb[0-1]ELb[0-1]EEEbPNS_9ArtMethodEPNS_6ThreadERNS_11ShadowFrameEPKNS_11InstructionEtPNS_6JValueE$/;
    } else if (isApiLevel34OrApexEquivalent) {
      artInterpreterDoCallExportRegex = /^_ZN3art11interpreter6DoCallILb[0-1]EEEbPNS_9ArtMethodEPNS_6ThreadERNS_11ShadowFrameEPKNS_11InstructionEtbPNS_6JValueE$/;
    } else {
      throw new Error("Unable to find method invocation in ART; please file a bug");
    }
    const art = api2.module;
    const entries = [...art.enumerateExports(), ...art.enumerateSymbols()].filter((entry) => artInterpreterDoCallExportRegex.test(entry.name));
    if (entries.length === 0) {
      throw new Error("Unable to find method invocation in ART; please file a bug");
    }
    for (const entry of entries) {
      Interceptor.attach(entry.address, artController.hooks.Interpreter.doCall);
    }
  }
  function instrumentArtGarbageCollection() {
    const api2 = getApi();
    const art = api2.module;
    const gc = art.findSymbolByName("_ZN3art2gc4Heap22CollectGarbageInternalENS0_9collector6GcTypeENS0_7GcCauseEbj");
    if (gc === null) {
      return;
    }
    const { artNterpEntryPoint, artQuickToInterpreterBridge } = api2;
    const quickCodeOffset = getArtMethodSpec(api2.vm).offset.quickCode;
    Interceptor.attach(gc, {
      onLeave() {
        artController.replacedMethods.synchronize(quickCodeOffset, artNterpEntryPoint, artQuickToInterpreterBridge);
      }
    });
  }
  function instrumentArtFixupStaticTrampolines() {
    const patterns = [
      ["_ZN3art11ClassLinker26VisiblyInitializedCallback22MarkVisiblyInitializedEPNS_6ThreadE", "e90340f8 : ff0ff0ff"],
      ["_ZN3art11ClassLinker26VisiblyInitializedCallback29AdjustThreadVisibilityCounterEPNS_6ThreadEl", "7f0f00f9 : 1ffcffff"]
    ];
    const api2 = getApi();
    const art = api2.module;
    for (const [name, pattern] of patterns) {
      const base = art.findSymbolByName(name);
      if (base === null) {
        continue;
      }
      const matches = Memory.scanSync(base, 8192, pattern);
      if (matches.length === 0) {
        return;
      }
      const { artNterpEntryPoint, artQuickToInterpreterBridge } = api2;
      const quickCodeOffset = getArtMethodSpec(api2.vm).offset.quickCode;
      Interceptor.attach(matches[0].address, function() {
        artController.replacedMethods.synchronize(quickCodeOffset, artNterpEntryPoint, artQuickToInterpreterBridge);
      });
      return;
    }
  }
  function ensureArtKnowsHowToHandleReplacementMethods(vm3) {
    if (taughtArtAboutReplacementMethods) {
      return;
    }
    taughtArtAboutReplacementMethods = true;
    if (!maybeInstrumentGetOatQuickMethodHeaderInlineCopies()) {
      const { getOatQuickMethodHeaderImpl } = artController;
      if (getOatQuickMethodHeaderImpl === null) {
        return;
      }
      try {
        Interceptor.replace(getOatQuickMethodHeaderImpl, artController.hooks.ArtMethod.getOatQuickMethodHeader);
      } catch (e) {
      }
    }
    const apiLevel = getAndroidApiLevel();
    let copyingPhase = null;
    const api2 = getApi();
    if (apiLevel > 28) {
      copyingPhase = api2.find("_ZN3art2gc9collector17ConcurrentCopying12CopyingPhaseEv");
    } else if (apiLevel > 22) {
      copyingPhase = api2.find("_ZN3art2gc9collector17ConcurrentCopying12MarkingPhaseEv");
    }
    if (copyingPhase !== null) {
      Interceptor.attach(copyingPhase, artController.hooks.Gc.copyingPhase);
    }
    let runFlip = null;
    runFlip = api2.find("_ZN3art6Thread15RunFlipFunctionEPS0_");
    if (runFlip === null) {
      runFlip = api2.find("_ZN3art6Thread15RunFlipFunctionEPS0_b");
    }
    if (runFlip !== null) {
      Interceptor.attach(runFlip, artController.hooks.Gc.runFlip);
    }
  }
  var artGetOatQuickMethodHeaderInlinedCopyHandler = {
    arm: {
      signatures: [
        {
          pattern: [
            "b0 68",
            // ldr r0, [r6, #8]
            "01 30",
            // adds r0, #1
            "0c d0",
            // beq #0x16fcd4
            "1b 98",
            // ldr r0, [sp, #0x6c]
            ":",
            "c0 ff",
            "c0 ff",
            "00 ff",
            "00 2f"
          ],
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm
        },
        {
          pattern: [
            "d8 f8 08 00",
            // ldr r0, [r8, #8]
            "01 30",
            // adds r0, #1
            "0c d0",
            // beq #0x16fcd4
            "1b 98",
            // ldr r0, [sp, #0x6c]
            ":",
            "f0 ff ff 0f",
            "ff ff",
            "00 ff",
            "00 2f"
          ],
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm
        },
        {
          pattern: [
            "b0 68",
            // ldr r0, [r6, #8]
            "01 30",
            // adds r0, #1
            "40 f0 c3 80",
            // bne #0x203bf0
            "00 25",
            // movs r5, #0
            ":",
            "c0 ff",
            "c0 ff",
            "c0 fb 00 d0",
            "ff f8"
          ],
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm
        }
      ],
      instrument: instrumentGetOatQuickMethodHeaderInlinedCopyArm
    },
    arm64: {
      signatures: [
        {
          pattern: [
            /* e8 */
            "0a 40 b9",
            // ldr w8, [x23, #0x8]
            "1f 05 00 31",
            // cmn w8, #0x1
            "40 01 00 54",
            // b.eq 0x2e4204
            "88 39 00 f0",
            // adrp x8, 0xa17000
            ":",
            /* 00 */
            "fc ff ff",
            "1f fc ff ff",
            "1f 00 00 ff",
            "00 00 00 9f"
          ],
          offset: 1,
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm64
        },
        {
          pattern: [
            /* e8 */
            "0a 40 b9",
            // ldr w8, [x?, #0x8]
            "1f 05 00 31",
            // cmn w8, #0x1
            "40 01 00 54",
            // b.eq <target>
            "00 0e 40 f9",
            // ldr x?, [x?, #0x18]
            ":",
            /* 00 */
            "fc ff ff",
            "1f fc ff ff",
            "1f 00 00 ff",
            "00 fc ff ff"
          ],
          offset: 1,
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm64
        },
        {
          pattern: [
            /* e8 */
            "0a 40 b9",
            // ldr w8, [x23, #0x8]
            "1f 05 00 31",
            // cmn w8, #0x1
            "01 34 00 54",
            // b.ne 0x3d8e50
            "e0 03 1f aa",
            // mov x0, xzr
            ":",
            /* 00 */
            "fc ff ff",
            "1f fc ff ff",
            "1f 00 00 ff",
            "e0 ff ff ff"
          ],
          offset: 1,
          validateMatch: validateGetOatQuickMethodHeaderInlinedMatchArm64
        }
      ],
      instrument: instrumentGetOatQuickMethodHeaderInlinedCopyArm64
    }
  };
  function validateGetOatQuickMethodHeaderInlinedMatchArm({ address, size }) {
    const ldr = Instruction.parse(address.or(1));
    const [ldrDst, ldrSrc] = ldr.operands;
    const methodReg = ldrSrc.value.base;
    const scratchReg = ldrDst.value;
    const branch = Instruction.parse(ldr.next.add(2));
    const targetWhenTrue = ptr(branch.operands[0].value);
    const targetWhenFalse = branch.address.add(branch.size);
    let targetWhenRegularMethod, targetWhenRuntimeMethod;
    if (branch.mnemonic === "beq") {
      targetWhenRegularMethod = targetWhenFalse;
      targetWhenRuntimeMethod = targetWhenTrue;
    } else {
      targetWhenRegularMethod = targetWhenTrue;
      targetWhenRuntimeMethod = targetWhenFalse;
    }
    return parseInstructionsAt(targetWhenRegularMethod.or(1), tryParse, { limit: 3 });
    function tryParse(insn) {
      const { mnemonic } = insn;
      if (!(mnemonic === "ldr" || mnemonic === "ldr.w")) {
        return null;
      }
      const { base, disp } = insn.operands[1].value;
      if (!(base === methodReg && disp === 20)) {
        return null;
      }
      return {
        methodReg,
        scratchReg,
        target: {
          whenTrue: targetWhenTrue,
          whenRegularMethod: targetWhenRegularMethod,
          whenRuntimeMethod: targetWhenRuntimeMethod
        }
      };
    }
  }
  function validateGetOatQuickMethodHeaderInlinedMatchArm64({ address, size }) {
    const [ldrDst, ldrSrc] = Instruction.parse(address).operands;
    const methodReg = ldrSrc.value.base;
    const scratchReg = "x" + ldrDst.value.substring(1);
    const branch = Instruction.parse(address.add(8));
    const targetWhenTrue = ptr(branch.operands[0].value);
    const targetWhenFalse = address.add(12);
    let targetWhenRegularMethod, targetWhenRuntimeMethod;
    if (branch.mnemonic === "b.eq") {
      targetWhenRegularMethod = targetWhenFalse;
      targetWhenRuntimeMethod = targetWhenTrue;
    } else {
      targetWhenRegularMethod = targetWhenTrue;
      targetWhenRuntimeMethod = targetWhenFalse;
    }
    return parseInstructionsAt(targetWhenRegularMethod, tryParse, { limit: 3 });
    function tryParse(insn) {
      if (insn.mnemonic !== "ldr") {
        return null;
      }
      const { base, disp } = insn.operands[1].value;
      if (!(base === methodReg && disp === 24)) {
        return null;
      }
      return {
        methodReg,
        scratchReg,
        target: {
          whenTrue: targetWhenTrue,
          whenRegularMethod: targetWhenRegularMethod,
          whenRuntimeMethod: targetWhenRuntimeMethod
        }
      };
    }
  }
  function maybeInstrumentGetOatQuickMethodHeaderInlineCopies() {
    if (getAndroidApiLevel() < 31) {
      return false;
    }
    const handler = artGetOatQuickMethodHeaderInlinedCopyHandler[Process.arch];
    if (handler === void 0) {
      return false;
    }
    const signatures = handler.signatures.map(({ pattern, offset = 0, validateMatch = returnEmptyObject }) => {
      return {
        pattern: new MatchPattern(pattern.join("")),
        offset,
        validateMatch
      };
    });
    const impls = [];
    for (const { base, size } of getApi().module.enumerateRanges("--x")) {
      for (const { pattern, offset, validateMatch } of signatures) {
        const matches = Memory.scanSync(base, size, pattern).map(({ address, size: size2 }) => {
          return { address: address.sub(offset), size: size2 + offset };
        }).filter((match) => {
          const validationResult = validateMatch(match);
          if (validationResult === null) {
            return false;
          }
          match.validationResult = validationResult;
          return true;
        });
        impls.push(...matches);
      }
    }
    if (impls.length === 0) {
      return false;
    }
    impls.forEach(handler.instrument);
    return true;
  }
  function returnEmptyObject() {
    return {};
  }
  var InlineHook = class {
    constructor(address, size, trampoline) {
      this.address = address;
      this.size = size;
      this.originalCode = address.readByteArray(size);
      this.trampoline = trampoline;
    }
    revert() {
      Memory.patchCode(this.address, this.size, (code3) => {
        code3.writeByteArray(this.originalCode);
      });
    }
  };
  function instrumentGetOatQuickMethodHeaderInlinedCopyArm({ address, size, validationResult }) {
    const { methodReg, target } = validationResult;
    const trampoline = Memory.alloc(Process.pageSize);
    let redirectCapacity = size;
    Memory.patchCode(trampoline, 256, (code3) => {
      const writer = new ThumbWriter(code3, { pc: trampoline });
      const relocator = new ThumbRelocator(address, writer);
      for (let i = 0; i !== 2; i++) {
        relocator.readOne();
      }
      relocator.writeAll();
      relocator.readOne();
      relocator.skipOne();
      writer.putBCondLabel("eq", "runtime_or_replacement_method");
      const vpushFpRegs = [45, 237, 16, 10];
      writer.putBytes(vpushFpRegs);
      const savedRegs = ["r0", "r1", "r2", "r3"];
      writer.putPushRegs(savedRegs);
      writer.putCallAddressWithArguments(artController.replacedMethods.isReplacement, [methodReg]);
      writer.putCmpRegImm("r0", 0);
      writer.putPopRegs(savedRegs);
      const vpopFpRegs = [189, 236, 16, 10];
      writer.putBytes(vpopFpRegs);
      writer.putBCondLabel("ne", "runtime_or_replacement_method");
      writer.putBLabel("regular_method");
      relocator.readOne();
      const tailIsRegular = relocator.input.address.equals(target.whenRegularMethod);
      writer.putLabel(tailIsRegular ? "regular_method" : "runtime_or_replacement_method");
      relocator.writeOne();
      while (redirectCapacity < 10) {
        const offset = relocator.readOne();
        if (offset === 0) {
          redirectCapacity = 10;
          break;
        }
        redirectCapacity = offset;
      }
      relocator.writeAll();
      writer.putBranchAddress(address.add(redirectCapacity + 1));
      writer.putLabel(tailIsRegular ? "runtime_or_replacement_method" : "regular_method");
      writer.putBranchAddress(target.whenTrue);
      writer.flush();
    });
    inlineHooks.push(new InlineHook(address, redirectCapacity, trampoline));
    Memory.patchCode(address, redirectCapacity, (code3) => {
      const writer = new ThumbWriter(code3, { pc: address });
      writer.putLdrRegAddress("pc", trampoline.or(1));
      writer.flush();
    });
  }
  function instrumentGetOatQuickMethodHeaderInlinedCopyArm64({ address, size, validationResult }) {
    const { methodReg, scratchReg, target } = validationResult;
    const trampoline = Memory.alloc(Process.pageSize);
    Memory.patchCode(trampoline, 256, (code3) => {
      const writer = new Arm64Writer(code3, { pc: trampoline });
      const relocator = new Arm64Relocator(address, writer);
      for (let i = 0; i !== 2; i++) {
        relocator.readOne();
      }
      relocator.writeAll();
      relocator.readOne();
      relocator.skipOne();
      writer.putBCondLabel("eq", "runtime_or_replacement_method");
      const savedRegs = [
        "d0",
        "d1",
        "d2",
        "d3",
        "d4",
        "d5",
        "d6",
        "d7",
        "x0",
        "x1",
        "x2",
        "x3",
        "x4",
        "x5",
        "x6",
        "x7",
        "x8",
        "x9",
        "x10",
        "x11",
        "x12",
        "x13",
        "x14",
        "x15",
        "x16",
        "x17"
      ];
      const numSavedRegs = savedRegs.length;
      for (let i = 0; i !== numSavedRegs; i += 2) {
        writer.putPushRegReg(savedRegs[i], savedRegs[i + 1]);
      }
      writer.putCallAddressWithArguments(artController.replacedMethods.isReplacement, [methodReg]);
      writer.putCmpRegReg("x0", "xzr");
      for (let i = numSavedRegs - 2; i >= 0; i -= 2) {
        writer.putPopRegReg(savedRegs[i], savedRegs[i + 1]);
      }
      writer.putBCondLabel("ne", "runtime_or_replacement_method");
      writer.putBLabel("regular_method");
      relocator.readOne();
      const tailInstruction = relocator.input;
      const tailIsRegular = tailInstruction.address.equals(target.whenRegularMethod);
      writer.putLabel(tailIsRegular ? "regular_method" : "runtime_or_replacement_method");
      relocator.writeOne();
      writer.putBranchAddress(tailInstruction.next);
      writer.putLabel(tailIsRegular ? "runtime_or_replacement_method" : "regular_method");
      writer.putBranchAddress(target.whenTrue);
      writer.flush();
    });
    inlineHooks.push(new InlineHook(address, size, trampoline));
    Memory.patchCode(address, size, (code3) => {
      const writer = new Arm64Writer(code3, { pc: address });
      writer.putLdrRegAddress(scratchReg, trampoline);
      writer.putBrReg(scratchReg);
      writer.flush();
    });
  }
  function makeMethodMangler(methodId) {
    return new MethodMangler(methodId);
  }
  function translateMethod(methodId) {
    return artController.replacedMethods.translate(methodId);
  }
  function backtrace(vm3, options = {}) {
    const { limit = 16 } = options;
    const env = vm3.getEnv();
    if (backtraceModule === null) {
      backtraceModule = makeBacktraceModule(vm3, env);
    }
    return backtraceModule.backtrace(env, limit);
  }
  function makeBacktraceModule(vm3, env) {
    const api2 = getApi();
    const performImpl = Memory.alloc(Process.pointerSize);
    const cm2 = new CModule(`
#include <glib.h>
#include <stdbool.h>
#include <string.h>
#include <gum/gumtls.h>
#include <json-glib/json-glib.h>

typedef struct _ArtBacktrace ArtBacktrace;
typedef struct _ArtStackFrame ArtStackFrame;

typedef struct _ArtStackVisitor ArtStackVisitor;
typedef struct _ArtStackVisitorVTable ArtStackVisitorVTable;

typedef struct _ArtClass ArtClass;
typedef struct _ArtMethod ArtMethod;
typedef struct _ArtThread ArtThread;
typedef struct _ArtContext ArtContext;

typedef struct _JNIEnv JNIEnv;

typedef struct _StdString StdString;
typedef struct _StdTinyString StdTinyString;
typedef struct _StdLargeString StdLargeString;

typedef enum {
  STACK_WALK_INCLUDE_INLINED_FRAMES,
  STACK_WALK_SKIP_INLINED_FRAMES,
} StackWalkKind;

struct _StdTinyString
{
  guint8 unused;
  gchar data[(3 * sizeof (gpointer)) - 1];
};

struct _StdLargeString
{
  gsize capacity;
  gsize size;
  gchar * data;
};

struct _StdString
{
  union
  {
    guint8 flags;
    StdTinyString tiny;
    StdLargeString large;
  };
};

struct _ArtBacktrace
{
  GChecksum * id;
  GArray * frames;
  gchar * frames_json;
};

struct _ArtStackFrame
{
  ArtMethod * method;
  gsize dexpc;
  StdString description;
};

struct _ArtStackVisitorVTable
{
  void (* unused1) (void);
  void (* unused2) (void);
  bool (* visit) (ArtStackVisitor * visitor);
};

struct _ArtStackVisitor
{
  ArtStackVisitorVTable * vtable;

  guint8 padding[512];

  ArtStackVisitorVTable vtable_storage;

  ArtBacktrace * backtrace;
};

struct _ArtMethod
{
  guint32 declaring_class;
  guint32 access_flags;
};

extern GumTlsKey current_backtrace;

extern void (* perform_art_thread_state_transition) (JNIEnv * env);

extern ArtContext * art_make_context (ArtThread * thread);

extern void art_stack_visitor_init (ArtStackVisitor * visitor, ArtThread * thread, void * context, StackWalkKind walk_kind,
    size_t num_frames, bool check_suspended);
extern void art_stack_visitor_walk_stack (ArtStackVisitor * visitor, bool include_transitions);
extern ArtMethod * art_stack_visitor_get_method (ArtStackVisitor * visitor);
extern void art_stack_visitor_describe_location (StdString * description, ArtStackVisitor * visitor);
extern ArtMethod * translate_method (ArtMethod * method);
extern void translate_location (ArtMethod * method, guint32 pc, const gchar ** source_file, gint32 * line_number);
extern void get_class_location (StdString * result, ArtClass * klass);
extern void cxx_delete (void * mem);
extern unsigned long strtoul (const char * str, char ** endptr, int base);

static bool visit_frame (ArtStackVisitor * visitor);
static void art_stack_frame_destroy (ArtStackFrame * frame);

static void append_jni_type_name (GString * s, const gchar * name, gsize length);

static void std_string_destroy (StdString * str);
static gchar * std_string_get_data (StdString * str);

void
init (void)
{
  current_backtrace = gum_tls_key_new ();
}

void
finalize (void)
{
  gum_tls_key_free (current_backtrace);
}

ArtBacktrace *
_create (JNIEnv * env,
         guint limit)
{
  ArtBacktrace * bt;

  bt = g_new (ArtBacktrace, 1);
  bt->id = g_checksum_new (G_CHECKSUM_SHA1);
  bt->frames = (limit != 0)
      ? g_array_sized_new (FALSE, FALSE, sizeof (ArtStackFrame), limit)
      : g_array_new (FALSE, FALSE, sizeof (ArtStackFrame));
  g_array_set_clear_func (bt->frames, (GDestroyNotify) art_stack_frame_destroy);
  bt->frames_json = NULL;

  gum_tls_key_set_value (current_backtrace, bt);

  perform_art_thread_state_transition (env);

  gum_tls_key_set_value (current_backtrace, NULL);

  return bt;
}

void
_on_thread_state_transition_complete (ArtThread * thread)
{
  ArtContext * context;
  ArtStackVisitor visitor = {
    .vtable_storage = {
      .visit = visit_frame,
    },
  };

  context = art_make_context (thread);

  art_stack_visitor_init (&visitor, thread, context, STACK_WALK_SKIP_INLINED_FRAMES, 0, true);
  visitor.vtable = &visitor.vtable_storage;
  visitor.backtrace = gum_tls_key_get_value (current_backtrace);

  art_stack_visitor_walk_stack (&visitor, false);

  cxx_delete (context);
}

static bool
visit_frame (ArtStackVisitor * visitor)
{
  ArtBacktrace * bt = visitor->backtrace;
  ArtStackFrame frame;
  const gchar * description, * dexpc_part;

  frame.method = art_stack_visitor_get_method (visitor);

  art_stack_visitor_describe_location (&frame.description, visitor);

  description = std_string_get_data (&frame.description);
  if (strstr (description, " '<") != NULL)
    goto skip;

  dexpc_part = strstr (description, " at dex PC 0x");
  if (dexpc_part == NULL)
    goto skip;
  frame.dexpc = strtoul (dexpc_part + 13, NULL, 16);

  g_array_append_val (bt->frames, frame);

  g_checksum_update (bt->id, (guchar *) &frame.method, sizeof (frame.method));
  g_checksum_update (bt->id, (guchar *) &frame.dexpc, sizeof (frame.dexpc));

  return true;

skip:
  std_string_destroy (&frame.description);
  return true;
}

static void
art_stack_frame_destroy (ArtStackFrame * frame)
{
  std_string_destroy (&frame->description);
}

void
_destroy (ArtBacktrace * backtrace)
{
  g_free (backtrace->frames_json);
  g_array_free (backtrace->frames, TRUE);
  g_checksum_free (backtrace->id);
  g_free (backtrace);
}

const gchar *
_get_id (ArtBacktrace * backtrace)
{
  return g_checksum_get_string (backtrace->id);
}

const gchar *
_get_frames (ArtBacktrace * backtrace)
{
  GArray * frames = backtrace->frames;
  JsonBuilder * b;
  guint i;
  JsonNode * root;

  if (backtrace->frames_json != NULL)
    return backtrace->frames_json;

  b = json_builder_new_immutable ();

  json_builder_begin_array (b);

  for (i = 0; i != frames->len; i++)
  {
    ArtStackFrame * frame = &g_array_index (frames, ArtStackFrame, i);
    gchar * description, * ret_type, * paren_open, * paren_close, * arg_types, * token, * method_name, * class_name;
    GString * signature;
    gchar * cursor;
    ArtMethod * translated_method;
    StdString location;
    gsize dexpc;
    const gchar * source_file;
    gint32 line_number;

    description = std_string_get_data (&frame->description);

    ret_type = strchr (description, '\\'') + 1;

    paren_open = strchr (ret_type, '(');
    paren_close = strchr (paren_open, ')');
    *paren_open = '\\0';
    *paren_close = '\\0';

    arg_types = paren_open + 1;

    token = strrchr (ret_type, '.');
    *token = '\\0';

    method_name = token + 1;

    token = strrchr (ret_type, ' ');
    *token = '\\0';

    class_name = token + 1;

    signature = g_string_sized_new (128);

    append_jni_type_name (signature, class_name, method_name - class_name - 1);
    g_string_append_c (signature, ',');
    g_string_append (signature, method_name);
    g_string_append (signature, ",(");

    if (arg_types != paren_close)
    {
      for (cursor = arg_types; cursor != NULL;)
      {
        gsize length;
        gchar * next;

        token = strstr (cursor, ", ");
        if (token != NULL)
        {
          length = token - cursor;
          next = token + 2;
        }
        else
        {
          length = paren_close - cursor;
          next = NULL;
        }

        append_jni_type_name (signature, cursor, length);

        cursor = next;
      }
    }

    g_string_append_c (signature, ')');

    append_jni_type_name (signature, ret_type, class_name - ret_type - 1);

    translated_method = translate_method (frame->method);
    dexpc = (translated_method == frame->method) ? frame->dexpc : 0;

    get_class_location (&location, GSIZE_TO_POINTER (translated_method->declaring_class));

    translate_location (translated_method, dexpc, &source_file, &line_number);

    json_builder_begin_object (b);

    json_builder_set_member_name (b, "signature");
    json_builder_add_string_value (b, signature->str);

    json_builder_set_member_name (b, "origin");
    json_builder_add_string_value (b, std_string_get_data (&location));

    json_builder_set_member_name (b, "className");
    json_builder_add_string_value (b, class_name);

    json_builder_set_member_name (b, "methodName");
    json_builder_add_string_value (b, method_name);

    json_builder_set_member_name (b, "methodFlags");
    json_builder_add_int_value (b, translated_method->access_flags);

    json_builder_set_member_name (b, "fileName");
    json_builder_add_string_value (b, source_file);

    json_builder_set_member_name (b, "lineNumber");
    json_builder_add_int_value (b, line_number);

    json_builder_end_object (b);

    std_string_destroy (&location);
    g_string_free (signature, TRUE);
  }

  json_builder_end_array (b);

  root = json_builder_get_root (b);
  backtrace->frames_json = json_to_string (root, FALSE);
  json_node_unref (root);

  return backtrace->frames_json;
}

static void
append_jni_type_name (GString * s,
                      const gchar * name,
                      gsize length)
{
  gchar shorty = '\\0';
  gsize i;

  switch (name[0])
  {
    case 'b':
      if (strncmp (name, "boolean", length) == 0)
        shorty = 'Z';
      else if (strncmp (name, "byte", length) == 0)
        shorty = 'B';
      break;
    case 'c':
      if (strncmp (name, "char", length) == 0)
        shorty = 'C';
      break;
    case 'd':
      if (strncmp (name, "double", length) == 0)
        shorty = 'D';
      break;
    case 'f':
      if (strncmp (name, "float", length) == 0)
        shorty = 'F';
      break;
    case 'i':
      if (strncmp (name, "int", length) == 0)
        shorty = 'I';
      break;
    case 'l':
      if (strncmp (name, "long", length) == 0)
        shorty = 'J';
      break;
    case 's':
      if (strncmp (name, "short", length) == 0)
        shorty = 'S';
      break;
    case 'v':
      if (strncmp (name, "void", length) == 0)
        shorty = 'V';
      break;
  }

  if (shorty != '\\0')
  {
    g_string_append_c (s, shorty);

    return;
  }

  if (length > 2 && name[length - 2] == '[' && name[length - 1] == ']')
  {
    g_string_append_c (s, '[');
    append_jni_type_name (s, name, length - 2);

    return;
  }

  g_string_append_c (s, 'L');

  for (i = 0; i != length; i++)
  {
    gchar ch = name[i];
    if (ch != '.')
      g_string_append_c (s, ch);
    else
      g_string_append_c (s, '/');
  }

  g_string_append_c (s, ';');
}

static void
std_string_destroy (StdString * str)
{
  bool is_large = (str->flags & 1) != 0;
  if (is_large)
    cxx_delete (str->large.data);
}

static gchar *
std_string_get_data (StdString * str)
{
  bool is_large = (str->flags & 1) != 0;
  return is_large ? str->large.data : str->tiny.data;
}
`, {
      current_backtrace: Memory.alloc(Process.pointerSize),
      perform_art_thread_state_transition: performImpl,
      art_make_context: api2["art::Thread::GetLongJumpContext"] ?? api2["art::Context::Create"],
      art_stack_visitor_init: api2["art::StackVisitor::StackVisitor"],
      art_stack_visitor_walk_stack: api2["art::StackVisitor::WalkStack"],
      art_stack_visitor_get_method: api2["art::StackVisitor::GetMethod"],
      art_stack_visitor_describe_location: api2["art::StackVisitor::DescribeLocation"],
      translate_method: artController.replacedMethods.translate,
      translate_location: api2["art::Monitor::TranslateLocation"],
      get_class_location: api2["art::mirror::Class::GetLocation"],
      cxx_delete: api2.$delete,
      strtoul: Process.getModuleByName("libc.so").getExportByName("strtoul")
    });
    const _create = new NativeFunction(cm2._create, "pointer", ["pointer", "uint"], nativeFunctionOptions3);
    const _destroy = new NativeFunction(cm2._destroy, "void", ["pointer"], nativeFunctionOptions3);
    const fastOptions = { exceptions: "propagate", scheduling: "exclusive" };
    const _getId = new NativeFunction(cm2._get_id, "pointer", ["pointer"], fastOptions);
    const _getFrames = new NativeFunction(cm2._get_frames, "pointer", ["pointer"], fastOptions);
    const performThreadStateTransition = makeArtThreadStateTransitionImpl(vm3, env, cm2._on_thread_state_transition_complete);
    cm2._performData = performThreadStateTransition;
    performImpl.writePointer(performThreadStateTransition);
    cm2.backtrace = (env2, limit) => {
      const handle = _create(env2, limit);
      const bt = new Backtrace(handle);
      Script.bindWeak(bt, destroy.bind(null, handle));
      return bt;
    };
    function destroy(handle) {
      _destroy(handle);
    }
    cm2.getId = (handle) => {
      return _getId(handle).readUtf8String();
    };
    cm2.getFrames = (handle) => {
      return JSON.parse(_getFrames(handle).readUtf8String());
    };
    return cm2;
  }
  var Backtrace = class {
    constructor(handle) {
      this.handle = handle;
    }
    get id() {
      return backtraceModule.getId(this.handle);
    }
    get frames() {
      return backtraceModule.getFrames(this.handle);
    }
  };
  function revertGlobalPatches() {
    patchedClasses.forEach((entry) => {
      entry.vtablePtr.writePointer(entry.vtable);
      entry.vtableCountPtr.writeS32(entry.vtableCount);
    });
    patchedClasses.clear();
    for (const interceptor of artQuickInterceptors.splice(0)) {
      interceptor.deactivate();
    }
    for (const hook of inlineHooks.splice(0)) {
      hook.revert();
    }
  }
  function unwrapMethodId(methodId) {
    return unwrapGenericId(methodId, "art::jni::JniIdManager::DecodeMethodId");
  }
  function unwrapFieldId(fieldId) {
    return unwrapGenericId(fieldId, "art::jni::JniIdManager::DecodeFieldId");
  }
  function unwrapGenericId(genericId, apiMethod) {
    const api2 = getApi();
    const runtimeOffset = getArtRuntimeSpec(api2).offset;
    const jniIdManagerOffset = runtimeOffset.jniIdManager;
    const jniIdsIndirectionOffset = runtimeOffset.jniIdsIndirection;
    if (jniIdManagerOffset !== null && jniIdsIndirectionOffset !== null) {
      const runtime2 = api2.artRuntime;
      const jniIdsIndirection = runtime2.add(jniIdsIndirectionOffset).readInt();
      if (jniIdsIndirection !== kPointer) {
        const jniIdManager = runtime2.add(jniIdManagerOffset).readPointer();
        return api2[apiMethod](jniIdManager, genericId);
      }
    }
    return genericId;
  }
  var artQuickCodeReplacementTrampolineWriters = {
    ia32: writeArtQuickCodeReplacementTrampolineIA32,
    x64: writeArtQuickCodeReplacementTrampolineX64,
    arm: writeArtQuickCodeReplacementTrampolineArm,
    arm64: writeArtQuickCodeReplacementTrampolineArm64
  };
  function writeArtQuickCodeReplacementTrampolineIA32(trampoline, target, redirectSize, constraints, vm3) {
    const threadOffsets = getArtThreadSpec(vm3).offset;
    const artMethodOffsets = getArtMethodSpec(vm3).offset;
    let offset;
    Memory.patchCode(trampoline, 128, (code3) => {
      const writer = new X86Writer(code3, { pc: trampoline });
      const relocator = new X86Relocator(target, writer);
      const fxsave = [15, 174, 4, 36];
      const fxrstor = [15, 174, 12, 36];
      writer.putPushax();
      writer.putMovRegReg("ebp", "esp");
      writer.putAndRegU32("esp", 4294967280);
      writer.putSubRegImm("esp", 512);
      writer.putBytes(fxsave);
      writer.putMovRegFsU32Ptr("ebx", threadOffsets.self);
      writer.putCallAddressWithAlignedArguments(artController.replacedMethods.findReplacementFromQuickCode, ["eax", "ebx"]);
      writer.putTestRegReg("eax", "eax");
      writer.putJccShortLabel("je", "restore_registers", "no-hint");
      writer.putMovRegOffsetPtrReg("ebp", 7 * 4, "eax");
      writer.putLabel("restore_registers");
      writer.putBytes(fxrstor);
      writer.putMovRegReg("esp", "ebp");
      writer.putPopax();
      writer.putJccShortLabel("jne", "invoke_replacement", "no-hint");
      do {
        offset = relocator.readOne();
      } while (offset < redirectSize && !relocator.eoi);
      relocator.writeAll();
      if (!relocator.eoi) {
        writer.putJmpAddress(target.add(offset));
      }
      writer.putLabel("invoke_replacement");
      writer.putJmpRegOffsetPtr("eax", artMethodOffsets.quickCode);
      writer.flush();
    });
    return offset;
  }
  function writeArtQuickCodeReplacementTrampolineX64(trampoline, target, redirectSize, constraints, vm3) {
    const threadOffsets = getArtThreadSpec(vm3).offset;
    const artMethodOffsets = getArtMethodSpec(vm3).offset;
    let offset;
    Memory.patchCode(trampoline, 256, (code3) => {
      const writer = new X86Writer(code3, { pc: trampoline });
      const relocator = new X86Relocator(target, writer);
      const fxsave = [15, 174, 4, 36];
      const fxrstor = [15, 174, 12, 36];
      writer.putPushax();
      writer.putMovRegReg("rbp", "rsp");
      writer.putAndRegU32("rsp", 4294967280);
      writer.putSubRegImm("rsp", 512);
      writer.putBytes(fxsave);
      writer.putMovRegGsU32Ptr("rbx", threadOffsets.self);
      writer.putCallAddressWithAlignedArguments(artController.replacedMethods.findReplacementFromQuickCode, ["rdi", "rbx"]);
      writer.putTestRegReg("rax", "rax");
      writer.putJccShortLabel("je", "restore_registers", "no-hint");
      writer.putMovRegOffsetPtrReg("rbp", 8 * 8, "rax");
      writer.putLabel("restore_registers");
      writer.putBytes(fxrstor);
      writer.putMovRegReg("rsp", "rbp");
      writer.putPopax();
      writer.putJccShortLabel("jne", "invoke_replacement", "no-hint");
      do {
        offset = relocator.readOne();
      } while (offset < redirectSize && !relocator.eoi);
      relocator.writeAll();
      if (!relocator.eoi) {
        writer.putJmpAddress(target.add(offset));
      }
      writer.putLabel("invoke_replacement");
      writer.putJmpRegOffsetPtr("rdi", artMethodOffsets.quickCode);
      writer.flush();
    });
    return offset;
  }
  function writeArtQuickCodeReplacementTrampolineArm(trampoline, target, redirectSize, constraints, vm3) {
    const artMethodOffsets = getArtMethodSpec(vm3).offset;
    const targetAddress = target.and(THUMB_BIT_REMOVAL_MASK);
    let offset;
    Memory.patchCode(trampoline, 128, (code3) => {
      const writer = new ThumbWriter(code3, { pc: trampoline });
      const relocator = new ThumbRelocator(targetAddress, writer);
      const vpushFpRegs = [45, 237, 16, 10];
      const vpopFpRegs = [189, 236, 16, 10];
      writer.putPushRegs([
        "r1",
        "r2",
        "r3",
        "r5",
        "r6",
        "r7",
        "r8",
        "r10",
        "r11",
        "lr"
      ]);
      writer.putBytes(vpushFpRegs);
      writer.putSubRegRegImm("sp", "sp", 8);
      writer.putStrRegRegOffset("r0", "sp", 0);
      writer.putCallAddressWithArguments(artController.replacedMethods.findReplacementFromQuickCode, ["r0", "r9"]);
      writer.putCmpRegImm("r0", 0);
      writer.putBCondLabel("eq", "restore_registers");
      writer.putStrRegRegOffset("r0", "sp", 0);
      writer.putLabel("restore_registers");
      writer.putLdrRegRegOffset("r0", "sp", 0);
      writer.putAddRegRegImm("sp", "sp", 8);
      writer.putBytes(vpopFpRegs);
      writer.putPopRegs([
        "lr",
        "r11",
        "r10",
        "r8",
        "r7",
        "r6",
        "r5",
        "r3",
        "r2",
        "r1"
      ]);
      writer.putBCondLabel("ne", "invoke_replacement");
      do {
        offset = relocator.readOne();
      } while (offset < redirectSize && !relocator.eoi);
      relocator.writeAll();
      if (!relocator.eoi) {
        writer.putLdrRegAddress("pc", target.add(offset));
      }
      writer.putLabel("invoke_replacement");
      writer.putLdrRegRegOffset("pc", "r0", artMethodOffsets.quickCode);
      writer.flush();
    });
    return offset;
  }
  function writeArtQuickCodeReplacementTrampolineArm64(trampoline, target, redirectSize, { availableScratchRegs }, vm3) {
    const artMethodOffsets = getArtMethodSpec(vm3).offset;
    let offset;
    Memory.patchCode(trampoline, 256, (code3) => {
      const writer = new Arm64Writer(code3, { pc: trampoline });
      const relocator = new Arm64Relocator(target, writer);
      writer.putPushRegReg("d0", "d1");
      writer.putPushRegReg("d2", "d3");
      writer.putPushRegReg("d4", "d5");
      writer.putPushRegReg("d6", "d7");
      writer.putPushRegReg("x1", "x2");
      writer.putPushRegReg("x3", "x4");
      writer.putPushRegReg("x5", "x6");
      writer.putPushRegReg("x7", "x20");
      writer.putPushRegReg("x21", "x22");
      writer.putPushRegReg("x23", "x24");
      writer.putPushRegReg("x25", "x26");
      writer.putPushRegReg("x27", "x28");
      writer.putPushRegReg("x29", "lr");
      writer.putSubRegRegImm("sp", "sp", 16);
      writer.putStrRegRegOffset("x0", "sp", 0);
      writer.putCallAddressWithArguments(artController.replacedMethods.findReplacementFromQuickCode, ["x0", "x19"]);
      writer.putCmpRegReg("x0", "xzr");
      writer.putBCondLabel("eq", "restore_registers");
      writer.putStrRegRegOffset("x0", "sp", 0);
      writer.putLabel("restore_registers");
      writer.putLdrRegRegOffset("x0", "sp", 0);
      writer.putAddRegRegImm("sp", "sp", 16);
      writer.putPopRegReg("x29", "lr");
      writer.putPopRegReg("x27", "x28");
      writer.putPopRegReg("x25", "x26");
      writer.putPopRegReg("x23", "x24");
      writer.putPopRegReg("x21", "x22");
      writer.putPopRegReg("x7", "x20");
      writer.putPopRegReg("x5", "x6");
      writer.putPopRegReg("x3", "x4");
      writer.putPopRegReg("x1", "x2");
      writer.putPopRegReg("d6", "d7");
      writer.putPopRegReg("d4", "d5");
      writer.putPopRegReg("d2", "d3");
      writer.putPopRegReg("d0", "d1");
      writer.putBCondLabel("ne", "invoke_replacement");
      do {
        offset = relocator.readOne();
      } while (offset < redirectSize && !relocator.eoi);
      relocator.writeAll();
      if (!relocator.eoi) {
        const scratchReg = Array.from(availableScratchRegs)[0];
        writer.putLdrRegAddress(scratchReg, target.add(offset));
        writer.putBrReg(scratchReg);
      }
      writer.putLabel("invoke_replacement");
      writer.putLdrRegRegOffset("x16", "x0", artMethodOffsets.quickCode);
      writer.putBrReg("x16");
      writer.flush();
    });
    return offset;
  }
  var artQuickCodePrologueWriters = {
    ia32: writeArtQuickCodePrologueX86,
    x64: writeArtQuickCodePrologueX86,
    arm: writeArtQuickCodePrologueArm,
    arm64: writeArtQuickCodePrologueArm64
  };
  function writeArtQuickCodePrologueX86(target, trampoline, redirectSize) {
    Memory.patchCode(target, 16, (code3) => {
      const writer = new X86Writer(code3, { pc: target });
      writer.putJmpAddress(trampoline);
      writer.flush();
    });
  }
  function writeArtQuickCodePrologueArm(target, trampoline, redirectSize) {
    const targetAddress = target.and(THUMB_BIT_REMOVAL_MASK);
    Memory.patchCode(targetAddress, 16, (code3) => {
      const writer = new ThumbWriter(code3, { pc: targetAddress });
      writer.putLdrRegAddress("pc", trampoline.or(1));
      writer.flush();
    });
  }
  function writeArtQuickCodePrologueArm64(target, trampoline, redirectSize) {
    Memory.patchCode(target, 16, (code3) => {
      const writer = new Arm64Writer(code3, { pc: target });
      if (redirectSize === 16) {
        writer.putLdrRegAddress("x16", trampoline);
      } else {
        writer.putAdrpRegAddress("x16", trampoline);
      }
      writer.putBrReg("x16");
      writer.flush();
    });
  }
  var artQuickCodeHookRedirectSize = {
    ia32: 5,
    x64: 16,
    arm: 8,
    arm64: 16
  };
  var ArtQuickCodeInterceptor = class {
    constructor(quickCode) {
      this.quickCode = quickCode;
      this.quickCodeAddress = Process.arch === "arm" ? quickCode.and(THUMB_BIT_REMOVAL_MASK) : quickCode;
      this.redirectSize = 0;
      this.trampoline = null;
      this.overwrittenPrologue = null;
      this.overwrittenPrologueLength = 0;
    }
    _canRelocateCode(relocationSize, constraints) {
      const Writer = thunkWriters[Process.arch];
      const Relocator = thunkRelocators[Process.arch];
      const { quickCodeAddress } = this;
      const writer = new Writer(quickCodeAddress);
      const relocator = new Relocator(quickCodeAddress, writer);
      let offset;
      if (Process.arch === "arm64") {
        let availableScratchRegs = /* @__PURE__ */ new Set(["x16", "x17"]);
        do {
          const nextOffset = relocator.readOne();
          const nextScratchRegs = new Set(availableScratchRegs);
          const { read: read2, written } = relocator.input.regsAccessed;
          for (const regs of [read2, written]) {
            for (const reg of regs) {
              let name;
              if (reg.startsWith("w")) {
                name = "x" + reg.substring(1);
              } else {
                name = reg;
              }
              nextScratchRegs.delete(name);
            }
          }
          if (nextScratchRegs.size === 0) {
            break;
          }
          offset = nextOffset;
          availableScratchRegs = nextScratchRegs;
        } while (offset < relocationSize && !relocator.eoi);
        constraints.availableScratchRegs = availableScratchRegs;
      } else {
        do {
          offset = relocator.readOne();
        } while (offset < relocationSize && !relocator.eoi);
      }
      return offset >= relocationSize;
    }
    _allocateTrampoline() {
      if (trampolineAllocator === null) {
        const trampolineSize = pointerSize5 === 4 ? 128 : 256;
        trampolineAllocator = makeAllocator(trampolineSize);
      }
      const maxRedirectSize = artQuickCodeHookRedirectSize[Process.arch];
      let redirectSize, spec;
      let alignment = 1;
      const constraints = {};
      if (pointerSize5 === 4 || this._canRelocateCode(maxRedirectSize, constraints)) {
        redirectSize = maxRedirectSize;
        spec = {};
      } else {
        let maxDistance;
        if (Process.arch === "x64") {
          redirectSize = 5;
          maxDistance = X86_JMP_MAX_DISTANCE;
        } else if (Process.arch === "arm64") {
          redirectSize = 8;
          maxDistance = ARM64_ADRP_MAX_DISTANCE;
          alignment = 4096;
        }
        spec = { near: this.quickCodeAddress, maxDistance };
      }
      this.redirectSize = redirectSize;
      this.trampoline = trampolineAllocator.allocateSlice(spec, alignment);
      return constraints;
    }
    _destroyTrampoline() {
      trampolineAllocator.freeSlice(this.trampoline);
    }
    activate(vm3) {
      const constraints = this._allocateTrampoline();
      const { trampoline, quickCode, redirectSize } = this;
      const writeTrampoline = artQuickCodeReplacementTrampolineWriters[Process.arch];
      const prologueLength = writeTrampoline(trampoline, quickCode, redirectSize, constraints, vm3);
      this.overwrittenPrologueLength = prologueLength;
      this.overwrittenPrologue = Memory.dup(this.quickCodeAddress, prologueLength);
      const writePrologue = artQuickCodePrologueWriters[Process.arch];
      writePrologue(quickCode, trampoline, redirectSize);
    }
    deactivate() {
      const { quickCodeAddress, overwrittenPrologueLength: prologueLength } = this;
      const Writer = thunkWriters[Process.arch];
      Memory.patchCode(quickCodeAddress, prologueLength, (code3) => {
        const writer = new Writer(code3, { pc: quickCodeAddress });
        const { overwrittenPrologue } = this;
        writer.putBytes(overwrittenPrologue.readByteArray(prologueLength));
        writer.flush();
      });
      this._destroyTrampoline();
    }
  };
  function isArtQuickEntrypoint(address) {
    const api2 = getApi();
    const { module: m, artClassLinker } = api2;
    return address.equals(artClassLinker.quickGenericJniTrampoline) || address.equals(artClassLinker.quickToInterpreterBridgeTrampoline) || address.equals(artClassLinker.quickResolutionTrampoline) || address.equals(artClassLinker.quickImtConflictTrampoline) || address.compare(m.base) >= 0 && address.compare(m.base.add(m.size)) < 0;
  }
  var ArtMethodMangler = class {
    constructor(opaqueMethodId) {
      const methodId = unwrapMethodId(opaqueMethodId);
      this.methodId = methodId;
      this.originalMethod = null;
      this.hookedMethodId = methodId;
      this.replacementMethodId = null;
      this.interceptor = null;
    }
    replace(impl, isInstanceMethod, argTypes, vm3, api2) {
      const { kAccCompileDontBother, artNterpEntryPoint } = api2;
      this.originalMethod = fetchArtMethod(this.methodId, vm3);
      const originalFlags = this.originalMethod.accessFlags;
      if ((originalFlags & kAccXposedHookedMethod) !== 0 && xposedIsSupported()) {
        const hookInfo = this.originalMethod.jniCode;
        this.hookedMethodId = hookInfo.add(2 * pointerSize5).readPointer();
        this.originalMethod = fetchArtMethod(this.hookedMethodId, vm3);
      }
      const { hookedMethodId } = this;
      const replacementMethodId = cloneArtMethod(hookedMethodId, vm3);
      this.replacementMethodId = replacementMethodId;
      patchArtMethod(replacementMethodId, {
        jniCode: impl,
        accessFlags: (originalFlags & ~(kAccCriticalNative | kAccFastNative | kAccNterpEntryPointFastPathFlag) | kAccNative | kAccCompileDontBother) >>> 0,
        quickCode: api2.artClassLinker.quickGenericJniTrampoline,
        interpreterCode: api2.artInterpreterToCompiledCodeBridge
      }, vm3);
      let hookedMethodRemovedFlags = kAccFastInterpreterToInterpreterInvoke | kAccSingleImplementation | kAccNterpEntryPointFastPathFlag;
      if ((originalFlags & kAccNative) === 0) {
        hookedMethodRemovedFlags |= kAccSkipAccessChecks;
      }
      patchArtMethod(hookedMethodId, {
        accessFlags: (originalFlags & ~hookedMethodRemovedFlags | kAccCompileDontBother) >>> 0
      }, vm3);
      const quickCode = this.originalMethod.quickCode;
      if (artNterpEntryPoint !== null && quickCode.equals(artNterpEntryPoint)) {
        patchArtMethod(hookedMethodId, {
          quickCode: api2.artQuickToInterpreterBridge
        }, vm3);
      }
      if (!isArtQuickEntrypoint(quickCode)) {
        const interceptor = new ArtQuickCodeInterceptor(quickCode);
        interceptor.activate(vm3);
        this.interceptor = interceptor;
      }
      artController.replacedMethods.set(hookedMethodId, replacementMethodId);
      notifyArtMethodHooked(hookedMethodId, vm3);
    }
    revert(vm3) {
      const { hookedMethodId, interceptor } = this;
      patchArtMethod(hookedMethodId, this.originalMethod, vm3);
      artController.replacedMethods.delete(hookedMethodId);
      if (interceptor !== null) {
        interceptor.deactivate();
        this.interceptor = null;
      }
    }
    resolveTarget(wrapper, isInstanceMethod, env, api2) {
      return this.hookedMethodId;
    }
  };
  function xposedIsSupported() {
    return getAndroidApiLevel() < 28;
  }
  function fetchArtMethod(methodId, vm3) {
    const artMethodSpec = getArtMethodSpec(vm3);
    const artMethodOffset = artMethodSpec.offset;
    return ["jniCode", "accessFlags", "quickCode", "interpreterCode"].reduce((original, name) => {
      const offset = artMethodOffset[name];
      if (offset === void 0) {
        return original;
      }
      const address = methodId.add(offset);
      const read2 = name === "accessFlags" ? readU32 : readPointer;
      original[name] = read2.call(address);
      return original;
    }, {});
  }
  function patchArtMethod(methodId, patches, vm3) {
    const artMethodSpec = getArtMethodSpec(vm3);
    const artMethodOffset = artMethodSpec.offset;
    Object.keys(patches).forEach((name) => {
      const offset = artMethodOffset[name];
      if (offset === void 0) {
        return;
      }
      const address = methodId.add(offset);
      const write3 = name === "accessFlags" ? writeU32 : writePointer;
      write3.call(address, patches[name]);
    });
  }
  var DalvikMethodMangler = class {
    constructor(methodId) {
      this.methodId = methodId;
      this.originalMethod = null;
    }
    replace(impl, isInstanceMethod, argTypes, vm3, api2) {
      const { methodId } = this;
      this.originalMethod = Memory.dup(methodId, DVM_METHOD_SIZE);
      let argsSize = argTypes.reduce((acc, t) => acc + t.size, 0);
      if (isInstanceMethod) {
        argsSize++;
      }
      const accessFlags = (methodId.add(DVM_METHOD_OFFSET_ACCESS_FLAGS).readU32() | kAccNative) >>> 0;
      const registersSize = argsSize;
      const outsSize = 0;
      const insSize = argsSize;
      methodId.add(DVM_METHOD_OFFSET_ACCESS_FLAGS).writeU32(accessFlags);
      methodId.add(DVM_METHOD_OFFSET_REGISTERS_SIZE).writeU16(registersSize);
      methodId.add(DVM_METHOD_OFFSET_OUTS_SIZE).writeU16(outsSize);
      methodId.add(DVM_METHOD_OFFSET_INS_SIZE).writeU16(insSize);
      methodId.add(DVM_METHOD_OFFSET_JNI_ARG_INFO).writeU32(computeDalvikJniArgInfo(methodId));
      api2.dvmUseJNIBridge(methodId, impl);
    }
    revert(vm3) {
      Memory.copy(this.methodId, this.originalMethod, DVM_METHOD_SIZE);
    }
    resolveTarget(wrapper, isInstanceMethod, env, api2) {
      const thread = env.handle.add(DVM_JNI_ENV_OFFSET_SELF).readPointer();
      let objectPtr;
      if (isInstanceMethod) {
        objectPtr = api2.dvmDecodeIndirectRef(thread, wrapper.$h);
      } else {
        const h = wrapper.$borrowClassHandle(env);
        objectPtr = api2.dvmDecodeIndirectRef(thread, h.value);
        h.unref(env);
      }
      let classObject;
      if (isInstanceMethod) {
        classObject = objectPtr.add(DVM_OBJECT_OFFSET_CLAZZ).readPointer();
      } else {
        classObject = objectPtr;
      }
      const classKey = classObject.toString(16);
      let entry = patchedClasses.get(classKey);
      if (entry === void 0) {
        const vtablePtr = classObject.add(DVM_CLASS_OBJECT_OFFSET_VTABLE);
        const vtableCountPtr = classObject.add(DVM_CLASS_OBJECT_OFFSET_VTABLE_COUNT);
        const vtable2 = vtablePtr.readPointer();
        const vtableCount = vtableCountPtr.readS32();
        const vtableSize = vtableCount * pointerSize5;
        const shadowVtable = Memory.alloc(2 * vtableSize);
        Memory.copy(shadowVtable, vtable2, vtableSize);
        vtablePtr.writePointer(shadowVtable);
        entry = {
          classObject,
          vtablePtr,
          vtableCountPtr,
          vtable: vtable2,
          vtableCount,
          shadowVtable,
          shadowVtableCount: vtableCount,
          targetMethods: /* @__PURE__ */ new Map()
        };
        patchedClasses.set(classKey, entry);
      }
      const methodKey = this.methodId.toString(16);
      let targetMethod = entry.targetMethods.get(methodKey);
      if (targetMethod === void 0) {
        targetMethod = Memory.dup(this.originalMethod, DVM_METHOD_SIZE);
        const methodIndex = entry.shadowVtableCount++;
        entry.shadowVtable.add(methodIndex * pointerSize5).writePointer(targetMethod);
        targetMethod.add(DVM_METHOD_OFFSET_METHOD_INDEX).writeU16(methodIndex);
        entry.vtableCountPtr.writeS32(entry.shadowVtableCount);
        entry.targetMethods.set(methodKey, targetMethod);
      }
      return targetMethod;
    }
  };
  function computeDalvikJniArgInfo(methodId) {
    if (Process.arch !== "ia32") {
      return DALVIK_JNI_NO_ARG_INFO;
    }
    const shorty = methodId.add(DVM_METHOD_OFFSET_SHORTY).readPointer().readCString();
    if (shorty === null || shorty.length === 0 || shorty.length > 65535) {
      return DALVIK_JNI_NO_ARG_INFO;
    }
    let returnType;
    switch (shorty[0]) {
      case "V":
        returnType = DALVIK_JNI_RETURN_VOID;
        break;
      case "F":
        returnType = DALVIK_JNI_RETURN_FLOAT;
        break;
      case "D":
        returnType = DALVIK_JNI_RETURN_DOUBLE;
        break;
      case "J":
        returnType = DALVIK_JNI_RETURN_S8;
        break;
      case "Z":
      case "B":
        returnType = DALVIK_JNI_RETURN_S1;
        break;
      case "C":
        returnType = DALVIK_JNI_RETURN_U2;
        break;
      case "S":
        returnType = DALVIK_JNI_RETURN_S2;
        break;
      default:
        returnType = DALVIK_JNI_RETURN_S4;
        break;
    }
    let hints = 0;
    for (let i = shorty.length - 1; i > 0; i--) {
      const ch = shorty[i];
      hints += ch === "D" || ch === "J" ? 2 : 1;
    }
    return returnType << DALVIK_JNI_RETURN_SHIFT | hints;
  }
  function cloneArtMethod(method, vm3) {
    const api2 = getApi();
    if (getAndroidApiLevel() < 23) {
      const thread = api2["art::Thread::CurrentFromGdb"]();
      return api2["art::mirror::Object::Clone"](method, thread);
    }
    return Memory.dup(method, getArtMethodSpec(vm3).size);
  }
  function deoptimizeMethod(vm3, env, method) {
    requestDeoptimization(vm3, env, kSelectiveDeoptimization, method);
  }
  function deoptimizeEverything(vm3, env) {
    requestDeoptimization(vm3, env, kFullDeoptimization);
  }
  function deoptimizeBootImage(vm3, env) {
    const api2 = getApi();
    if (getAndroidApiLevel() < 26) {
      throw new Error("This API is only available on Android >= 8.0");
    }
    withRunnableArtThread(vm3, env, (thread) => {
      api2["art::Runtime::DeoptimizeBootImage"](api2.artRuntime);
    });
  }
  function requestDeoptimization(vm3, env, kind, method) {
    const api2 = getApi();
    if (getAndroidApiLevel() < 24) {
      throw new Error("This API is only available on Android >= 7.0");
    }
    withRunnableArtThread(vm3, env, (thread) => {
      if (getAndroidApiLevel() < 30) {
        if (!api2.isJdwpStarted()) {
          const session = startJdwp(api2);
          jdwpSessions.push(session);
        }
        if (!api2.isDebuggerActive()) {
          api2["art::Dbg::GoActive"]();
        }
        const request = Memory.alloc(8 + pointerSize5);
        request.writeU32(kind);
        switch (kind) {
          case kFullDeoptimization:
            break;
          case kSelectiveDeoptimization:
            request.add(8).writePointer(method);
            break;
          default:
            throw new Error("Unsupported deoptimization kind");
        }
        api2["art::Dbg::RequestDeoptimization"](request);
        api2["art::Dbg::ManageDeoptimization"]();
      } else {
        const instrumentation = api2.artInstrumentation;
        if (instrumentation === null) {
          throw new Error("Unable to find Instrumentation class in ART; please file a bug");
        }
        const enableDeopt = api2["art::Instrumentation::EnableDeoptimization"];
        if (enableDeopt !== void 0) {
          const deoptimizationEnabled = !!instrumentation.add(getArtInstrumentationSpec().offset.deoptimizationEnabled).readU8();
          if (!deoptimizationEnabled) {
            enableDeopt(instrumentation);
          }
        }
        switch (kind) {
          case kFullDeoptimization:
            api2["art::Instrumentation::DeoptimizeEverything"](instrumentation, Memory.allocUtf8String("frida"));
            break;
          case kSelectiveDeoptimization:
            api2["art::Instrumentation::Deoptimize"](instrumentation, method);
            break;
          default:
            throw new Error("Unsupported deoptimization kind");
        }
      }
    });
  }
  var JdwpSession = class {
    constructor() {
      const libart = Process.getModuleByName("libart.so");
      const acceptImpl = libart.getExportByName("_ZN3art4JDWP12JdwpAdbState6AcceptEv");
      const receiveClientFdImpl = libart.getExportByName("_ZN3art4JDWP12JdwpAdbState15ReceiveClientFdEv");
      const controlPair = makeSocketPair();
      const clientPair = makeSocketPair();
      this._controlFd = controlPair[0];
      this._clientFd = clientPair[0];
      let acceptListener = null;
      acceptListener = Interceptor.attach(acceptImpl, function(args) {
        const state = args[0];
        const controlSockPtr = Memory.scanSync(state.add(8252), 256, "00 ff ff ff ff 00")[0].address.add(1);
        controlSockPtr.writeS32(controlPair[1]);
        acceptListener.detach();
      });
      Interceptor.replace(receiveClientFdImpl, new NativeCallback(function(state) {
        Interceptor.revert(receiveClientFdImpl);
        return clientPair[1];
      }, "int", ["pointer"]));
      Interceptor.flush();
      this._handshakeRequest = this._performHandshake();
    }
    async _performHandshake() {
      const input = new UnixInputStream(this._clientFd, { autoClose: false });
      const output = new UnixOutputStream(this._clientFd, { autoClose: false });
      const handshakePacket = [74, 68, 87, 80, 45, 72, 97, 110, 100, 115, 104, 97, 107, 101];
      try {
        await output.writeAll(handshakePacket);
        await input.readAll(handshakePacket.length);
      } catch (e) {
      }
    }
  };
  function startJdwp(api2) {
    const session = new JdwpSession();
    api2["art::Dbg::SetJdwpAllowed"](1);
    const options = makeJdwpOptions();
    api2["art::Dbg::ConfigureJdwp"](options);
    const startDebugger = api2["art::InternalDebuggerControlCallback::StartDebugger"];
    if (startDebugger !== void 0) {
      startDebugger(NULL);
    } else {
      api2["art::Dbg::StartJdwp"]();
    }
    return session;
  }
  function makeJdwpOptions() {
    const kJdwpTransportAndroidAdb = getAndroidApiLevel() < 28 ? 2 : 3;
    const kJdwpPortFirstAvailable = 0;
    const transport = kJdwpTransportAndroidAdb;
    const server = true;
    const suspend = false;
    const port = kJdwpPortFirstAvailable;
    const size = 8 + STD_STRING_SIZE + 2;
    const result = Memory.alloc(size);
    result.writeU32(transport).add(4).writeU8(server ? 1 : 0).add(1).writeU8(suspend ? 1 : 0).add(1).add(STD_STRING_SIZE).writeU16(port);
    return result;
  }
  function makeSocketPair() {
    if (socketpair === null) {
      socketpair = new NativeFunction(
        Process.getModuleByName("libc.so").getExportByName("socketpair"),
        "int",
        ["int", "int", "int", "pointer"]
      );
    }
    const buf = Memory.alloc(8);
    if (socketpair(AF_UNIX, SOCK_STREAM, 0, buf) === -1) {
      throw new Error("Unable to create socketpair for JDWP");
    }
    return [
      buf.readS32(),
      buf.add(4).readS32()
    ];
  }
  function makeAddGlobalRefFallbackForAndroid5(api2) {
    const offset = getArtVMSpec().offset;
    const lock = api2.vm.add(offset.globalsLock);
    const table = api2.vm.add(offset.globals);
    const add = api2["art::IndirectReferenceTable::Add"];
    const acquire = api2["art::ReaderWriterMutex::ExclusiveLock"];
    const release = api2["art::ReaderWriterMutex::ExclusiveUnlock"];
    const IRT_FIRST_SEGMENT = 0;
    return function(vm3, thread, obj) {
      acquire(lock, thread);
      try {
        return add(table, IRT_FIRST_SEGMENT, obj);
      } finally {
        release(lock, thread);
      }
    };
  }
  function makeDecodeGlobalFallback(api2) {
    const decode = api2["art::Thread::DecodeJObject"];
    if (decode === void 0) {
      throw new Error("art::Thread::DecodeJObject is not available; please file a bug");
    }
    return function(vm3, thread, ref) {
      return decode(thread, ref);
    };
  }
  var threadStateTransitionRecompilers = {
    ia32: recompileExceptionClearForX86,
    x64: recompileExceptionClearForX86,
    arm: recompileExceptionClearForArm,
    arm64: recompileExceptionClearForArm64
  };
  function makeArtThreadStateTransitionImpl(vm3, env, callback) {
    const api2 = getApi();
    const envVtable = env.handle.readPointer();
    let exceptionClearImpl;
    const innerExceptionClearImpl = api2.find("_ZN3art3JNIILb1EE14ExceptionClearEP7_JNIEnv");
    if (innerExceptionClearImpl !== null) {
      exceptionClearImpl = innerExceptionClearImpl;
    } else {
      exceptionClearImpl = envVtable.add(ENV_VTABLE_OFFSET_EXCEPTION_CLEAR).readPointer();
    }
    let nextFuncImpl;
    const innerNextFuncImpl = api2.find("_ZN3art3JNIILb1EE10FatalErrorEP7_JNIEnvPKc");
    if (innerNextFuncImpl !== null) {
      nextFuncImpl = innerNextFuncImpl;
    } else {
      nextFuncImpl = envVtable.add(ENV_VTABLE_OFFSET_FATAL_ERROR).readPointer();
    }
    const recompile = threadStateTransitionRecompilers[Process.arch];
    if (recompile === void 0) {
      throw new Error("Not yet implemented for " + Process.arch);
    }
    let perform = null;
    const threadOffsets = getArtThreadSpec(vm3).offset;
    const exceptionOffset = threadOffsets.exception;
    const neuteredOffsets = /* @__PURE__ */ new Set();
    const isReportedOffset = threadOffsets.isExceptionReportedToInstrumentation;
    if (isReportedOffset !== null) {
      neuteredOffsets.add(isReportedOffset);
    }
    const throwLocationStartOffset = threadOffsets.throwLocation;
    if (throwLocationStartOffset !== null) {
      neuteredOffsets.add(throwLocationStartOffset);
      neuteredOffsets.add(throwLocationStartOffset + pointerSize5);
      neuteredOffsets.add(throwLocationStartOffset + 2 * pointerSize5);
    }
    const codeSize = 65536;
    const code3 = Memory.alloc(codeSize);
    Memory.patchCode(code3, codeSize, (buffer) => {
      perform = recompile(buffer, code3, exceptionClearImpl, nextFuncImpl, exceptionOffset, neuteredOffsets, callback);
    });
    perform._code = code3;
    perform._callback = callback;
    return perform;
  }
  function recompileExceptionClearForX86(buffer, pc, exceptionClearImpl, nextFuncImpl, exceptionOffset, neuteredOffsets, callback) {
    const blocks = {};
    const branchTargets = /* @__PURE__ */ new Set();
    const pending = [exceptionClearImpl];
    while (pending.length > 0) {
      let current = pending.shift();
      const alreadyCovered = Object.values(blocks).some(({ begin, end }) => current.compare(begin) >= 0 && current.compare(end) < 0);
      if (alreadyCovered) {
        continue;
      }
      const blockAddressKey = current.toString();
      let block = {
        begin: current
      };
      let lastInsn = null;
      let reachedEndOfBlock = false;
      do {
        if (current.equals(nextFuncImpl)) {
          reachedEndOfBlock = true;
          break;
        }
        const insn = Instruction.parse(current);
        lastInsn = insn;
        const existingBlock = blocks[insn.address.toString()];
        if (existingBlock !== void 0) {
          delete blocks[existingBlock.begin.toString()];
          blocks[blockAddressKey] = existingBlock;
          existingBlock.begin = block.begin;
          block = null;
          break;
        }
        let branchTarget = null;
        switch (insn.mnemonic) {
          case "jmp":
            branchTarget = ptr(insn.operands[0].value);
            reachedEndOfBlock = true;
            break;
          case "je":
          case "jg":
          case "jle":
          case "jne":
          case "js":
            branchTarget = ptr(insn.operands[0].value);
            break;
          case "ret":
            reachedEndOfBlock = true;
            break;
        }
        if (branchTarget !== null) {
          branchTargets.add(branchTarget.toString());
          pending.push(branchTarget);
          pending.sort((a, b) => a.compare(b));
        }
        current = insn.next;
      } while (!reachedEndOfBlock);
      if (block !== null) {
        block.end = lastInsn.address.add(lastInsn.size);
        blocks[blockAddressKey] = block;
      }
    }
    const blocksOrdered = Object.keys(blocks).map((key) => blocks[key]);
    blocksOrdered.sort((a, b) => a.begin.compare(b.begin));
    const entryBlock = blocks[exceptionClearImpl.toString()];
    blocksOrdered.splice(blocksOrdered.indexOf(entryBlock), 1);
    blocksOrdered.unshift(entryBlock);
    const writer = new X86Writer(buffer, { pc });
    let foundCore = false;
    let threadReg = null;
    blocksOrdered.forEach((block) => {
      const size = block.end.sub(block.begin).toInt32();
      const relocator = new X86Relocator(block.begin, writer);
      let offset;
      while ((offset = relocator.readOne()) !== 0) {
        const insn = relocator.input;
        const { mnemonic } = insn;
        const insnAddressId = insn.address.toString();
        if (branchTargets.has(insnAddressId)) {
          writer.putLabel(insnAddressId);
        }
        let keep = true;
        switch (mnemonic) {
          case "jmp":
            writer.putJmpNearLabel(branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "je":
          case "jg":
          case "jle":
          case "jne":
          case "js":
            writer.putJccNearLabel(mnemonic, branchLabelFromOperand(insn.operands[0]), "no-hint");
            keep = false;
            break;
          /*
           * JNI::ExceptionClear(), when checked JNI is off.
           */
          case "mov": {
            const [dst, src] = insn.operands;
            if (dst.type === "mem" && src.type === "imm") {
              const dstValue = dst.value;
              const dstOffset = dstValue.disp;
              if (dstOffset === exceptionOffset && src.value.valueOf() === 0) {
                threadReg = dstValue.base;
                writer.putPushfx();
                writer.putPushax();
                writer.putMovRegReg("xbp", "xsp");
                if (pointerSize5 === 4) {
                  writer.putAndRegU32("esp", 4294967280);
                } else {
                  const scratchReg = threadReg !== "rdi" ? "rdi" : "rsi";
                  writer.putMovRegU64(scratchReg, uint64("0xfffffffffffffff0"));
                  writer.putAndRegReg("rsp", scratchReg);
                }
                writer.putCallAddressWithAlignedArguments(callback, [threadReg]);
                writer.putMovRegReg("xsp", "xbp");
                writer.putPopax();
                writer.putPopfx();
                foundCore = true;
                keep = false;
              } else if (neuteredOffsets.has(dstOffset) && dstValue.base === threadReg) {
                keep = false;
              }
            }
            break;
          }
          /*
           * CheckJNI::ExceptionClear, when checked JNI is on. Wrapper that calls JNI::ExceptionClear().
           */
          case "call": {
            const target = insn.operands[0];
            if (target.type === "mem" && target.value.disp === ENV_VTABLE_OFFSET_EXCEPTION_CLEAR) {
              if (pointerSize5 === 4) {
                writer.putPopReg("eax");
                writer.putMovRegRegOffsetPtr("eax", "eax", 4);
                writer.putPushReg("eax");
              } else {
                writer.putMovRegRegOffsetPtr("rdi", "rdi", 8);
              }
              writer.putCallAddressWithArguments(callback, []);
              foundCore = true;
              keep = false;
            }
            break;
          }
        }
        if (keep) {
          relocator.writeAll();
        } else {
          relocator.skipOne();
        }
        if (offset === size) {
          break;
        }
      }
      relocator.dispose();
    });
    writer.dispose();
    if (!foundCore) {
      throwThreadStateTransitionParseError();
    }
    return new NativeFunction(pc, "void", ["pointer"], nativeFunctionOptions3);
  }
  function recompileExceptionClearForArm(buffer, pc, exceptionClearImpl, nextFuncImpl, exceptionOffset, neuteredOffsets, callback) {
    const blocks = {};
    const branchTargets = /* @__PURE__ */ new Set();
    const thumbBitRemovalMask = ptr(1).not();
    const pending = [exceptionClearImpl];
    while (pending.length > 0) {
      let current = pending.shift();
      const alreadyCovered = Object.values(blocks).some(({ begin: begin2, end }) => current.compare(begin2) >= 0 && current.compare(end) < 0);
      if (alreadyCovered) {
        continue;
      }
      const begin = current.and(thumbBitRemovalMask);
      const blockId = begin.toString();
      const thumbBit = current.and(1);
      let block = {
        begin
      };
      let lastInsn = null;
      let reachedEndOfBlock = false;
      let ifThenBlockRemaining = 0;
      do {
        if (current.equals(nextFuncImpl)) {
          reachedEndOfBlock = true;
          break;
        }
        const insn = Instruction.parse(current);
        const { mnemonic } = insn;
        lastInsn = insn;
        const currentAddress = current.and(thumbBitRemovalMask);
        const insnId = currentAddress.toString();
        const existingBlock = blocks[insnId];
        if (existingBlock !== void 0) {
          delete blocks[existingBlock.begin.toString()];
          blocks[blockId] = existingBlock;
          existingBlock.begin = block.begin;
          block = null;
          break;
        }
        const isOutsideIfThenBlock = ifThenBlockRemaining === 0;
        let branchTarget = null;
        switch (mnemonic) {
          case "b":
            branchTarget = ptr(insn.operands[0].value);
            reachedEndOfBlock = isOutsideIfThenBlock;
            break;
          case "beq.w":
          case "beq":
          case "bne":
          case "bne.w":
          case "bgt":
            branchTarget = ptr(insn.operands[0].value);
            break;
          case "cbz":
          case "cbnz":
            branchTarget = ptr(insn.operands[1].value);
            break;
          case "pop.w":
            if (isOutsideIfThenBlock) {
              reachedEndOfBlock = insn.operands.filter((op) => op.value === "pc").length === 1;
            }
            break;
        }
        switch (mnemonic) {
          case "it":
            ifThenBlockRemaining = 1;
            break;
          case "itt":
            ifThenBlockRemaining = 2;
            break;
          case "ittt":
            ifThenBlockRemaining = 3;
            break;
          case "itttt":
            ifThenBlockRemaining = 4;
            break;
          default:
            if (ifThenBlockRemaining > 0) {
              ifThenBlockRemaining--;
            }
            break;
        }
        if (branchTarget !== null) {
          branchTargets.add(branchTarget.toString());
          pending.push(branchTarget.or(thumbBit));
          pending.sort((a, b) => a.compare(b));
        }
        current = insn.next;
      } while (!reachedEndOfBlock);
      if (block !== null) {
        block.end = lastInsn.address.add(lastInsn.size);
        blocks[blockId] = block;
      }
    }
    const blocksOrdered = Object.keys(blocks).map((key) => blocks[key]);
    blocksOrdered.sort((a, b) => a.begin.compare(b.begin));
    const entryBlock = blocks[exceptionClearImpl.and(thumbBitRemovalMask).toString()];
    blocksOrdered.splice(blocksOrdered.indexOf(entryBlock), 1);
    blocksOrdered.unshift(entryBlock);
    const writer = new ThumbWriter(buffer, { pc });
    let foundCore = false;
    let threadReg = null;
    let realImplReg = null;
    blocksOrdered.forEach((block) => {
      const relocator = new ThumbRelocator(block.begin, writer);
      let address = block.begin;
      const end = block.end;
      let size = 0;
      do {
        const offset = relocator.readOne();
        if (offset === 0) {
          throw new Error("Unexpected end of block");
        }
        const insn = relocator.input;
        address = insn.address;
        size = insn.size;
        const { mnemonic } = insn;
        const insnAddressId = address.toString();
        if (branchTargets.has(insnAddressId)) {
          writer.putLabel(insnAddressId);
        }
        let keep = true;
        switch (mnemonic) {
          case "b":
            writer.putBLabel(branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "beq.w":
            writer.putBCondLabelWide("eq", branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "bne.w":
            writer.putBCondLabelWide("ne", branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "beq":
          case "bne":
          case "bgt":
            writer.putBCondLabelWide(mnemonic.substr(1), branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "cbz": {
            const ops = insn.operands;
            writer.putCbzRegLabel(ops[0].value, branchLabelFromOperand(ops[1]));
            keep = false;
            break;
          }
          case "cbnz": {
            const ops = insn.operands;
            writer.putCbnzRegLabel(ops[0].value, branchLabelFromOperand(ops[1]));
            keep = false;
            break;
          }
          /*
           * JNI::ExceptionClear(), when checked JNI is off.
           */
          case "str":
          case "str.w": {
            const dstValue = insn.operands[1].value;
            const dstOffset = dstValue.disp;
            if (dstOffset === exceptionOffset) {
              threadReg = dstValue.base;
              const nzcvqReg = threadReg !== "r4" ? "r4" : "r5";
              const clobberedRegs = ["r0", "r1", "r2", "r3", nzcvqReg, "r9", "r12", "lr"];
              writer.putPushRegs(clobberedRegs);
              writer.putMrsRegReg(nzcvqReg, "apsr-nzcvq");
              writer.putCallAddressWithArguments(callback, [threadReg]);
              writer.putMsrRegReg("apsr-nzcvq", nzcvqReg);
              writer.putPopRegs(clobberedRegs);
              foundCore = true;
              keep = false;
            } else if (neuteredOffsets.has(dstOffset) && dstValue.base === threadReg) {
              keep = false;
            }
            break;
          }
          /*
           * CheckJNI::ExceptionClear, when checked JNI is on. Wrapper that calls JNI::ExceptionClear().
           */
          case "ldr": {
            const [dstOp, srcOp] = insn.operands;
            if (srcOp.type === "mem") {
              const src = srcOp.value;
              if (src.base[0] === "r" && src.disp === ENV_VTABLE_OFFSET_EXCEPTION_CLEAR) {
                realImplReg = dstOp.value;
              }
            }
            break;
          }
          case "blx":
            if (insn.operands[0].value === realImplReg) {
              writer.putLdrRegRegOffset("r0", "r0", 4);
              writer.putCallAddressWithArguments(callback, ["r0"]);
              foundCore = true;
              realImplReg = null;
              keep = false;
            }
            break;
        }
        if (keep) {
          relocator.writeAll();
        } else {
          relocator.skipOne();
        }
      } while (!address.add(size).equals(end));
      relocator.dispose();
    });
    writer.dispose();
    if (!foundCore) {
      throwThreadStateTransitionParseError();
    }
    return new NativeFunction(pc.or(1), "void", ["pointer"], nativeFunctionOptions3);
  }
  function recompileExceptionClearForArm64(buffer, pc, exceptionClearImpl, nextFuncImpl, exceptionOffset, neuteredOffsets, callback) {
    const blocks = {};
    const branchTargets = /* @__PURE__ */ new Set();
    const pending = [exceptionClearImpl];
    while (pending.length > 0) {
      let current = pending.shift();
      const alreadyCovered = Object.values(blocks).some(({ begin, end }) => current.compare(begin) >= 0 && current.compare(end) < 0);
      if (alreadyCovered) {
        continue;
      }
      const blockAddressKey = current.toString();
      let block = {
        begin: current
      };
      let lastInsn = null;
      let reachedEndOfBlock = false;
      do {
        if (current.equals(nextFuncImpl)) {
          reachedEndOfBlock = true;
          break;
        }
        let insn;
        try {
          insn = Instruction.parse(current);
        } catch (e) {
          if (current.readU32() === 0) {
            reachedEndOfBlock = true;
            break;
          } else {
            throw e;
          }
        }
        lastInsn = insn;
        const existingBlock = blocks[insn.address.toString()];
        if (existingBlock !== void 0) {
          delete blocks[existingBlock.begin.toString()];
          blocks[blockAddressKey] = existingBlock;
          existingBlock.begin = block.begin;
          block = null;
          break;
        }
        let branchTarget = null;
        switch (insn.mnemonic) {
          case "b":
            branchTarget = ptr(insn.operands[0].value);
            reachedEndOfBlock = true;
            break;
          case "b.eq":
          case "b.ne":
          case "b.le":
          case "b.gt":
            branchTarget = ptr(insn.operands[0].value);
            break;
          case "cbz":
          case "cbnz":
            branchTarget = ptr(insn.operands[1].value);
            break;
          case "tbz":
          case "tbnz":
            branchTarget = ptr(insn.operands[2].value);
            break;
          case "ret":
            reachedEndOfBlock = true;
            break;
        }
        if (branchTarget !== null) {
          branchTargets.add(branchTarget.toString());
          pending.push(branchTarget);
          pending.sort((a, b) => a.compare(b));
        }
        current = insn.next;
      } while (!reachedEndOfBlock);
      if (block !== null) {
        block.end = lastInsn.address.add(lastInsn.size);
        blocks[blockAddressKey] = block;
      }
    }
    const blocksOrdered = Object.keys(blocks).map((key) => blocks[key]);
    blocksOrdered.sort((a, b) => a.begin.compare(b.begin));
    const entryBlock = blocks[exceptionClearImpl.toString()];
    blocksOrdered.splice(blocksOrdered.indexOf(entryBlock), 1);
    blocksOrdered.unshift(entryBlock);
    const writer = new Arm64Writer(buffer, { pc });
    writer.putBLabel("performTransition");
    const invokeCallback = pc.add(writer.offset);
    writer.putPushAllXRegisters();
    writer.putCallAddressWithArguments(callback, ["x0"]);
    writer.putPopAllXRegisters();
    writer.putRet();
    writer.putLabel("performTransition");
    let foundCore = false;
    let threadReg = null;
    let realImplReg = null;
    blocksOrdered.forEach((block) => {
      const size = block.end.sub(block.begin).toInt32();
      const relocator = new Arm64Relocator(block.begin, writer);
      let offset;
      while ((offset = relocator.readOne()) !== 0) {
        const insn = relocator.input;
        const { mnemonic } = insn;
        const insnAddressId = insn.address.toString();
        if (branchTargets.has(insnAddressId)) {
          writer.putLabel(insnAddressId);
        }
        let keep = true;
        switch (mnemonic) {
          case "b":
            writer.putBLabel(branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "b.eq":
          case "b.ne":
          case "b.le":
          case "b.gt":
            writer.putBCondLabel(mnemonic.substr(2), branchLabelFromOperand(insn.operands[0]));
            keep = false;
            break;
          case "cbz": {
            const ops = insn.operands;
            writer.putCbzRegLabel(ops[0].value, branchLabelFromOperand(ops[1]));
            keep = false;
            break;
          }
          case "cbnz": {
            const ops = insn.operands;
            writer.putCbnzRegLabel(ops[0].value, branchLabelFromOperand(ops[1]));
            keep = false;
            break;
          }
          case "tbz": {
            const ops = insn.operands;
            writer.putTbzRegImmLabel(ops[0].value, ops[1].value.valueOf(), branchLabelFromOperand(ops[2]));
            keep = false;
            break;
          }
          case "tbnz": {
            const ops = insn.operands;
            writer.putTbnzRegImmLabel(ops[0].value, ops[1].value.valueOf(), branchLabelFromOperand(ops[2]));
            keep = false;
            break;
          }
          /*
           * JNI::ExceptionClear(), when checked JNI is off.
           */
          case "str": {
            const ops = insn.operands;
            const srcReg = ops[0].value;
            const dstValue = ops[1].value;
            const dstOffset = dstValue.disp;
            if (srcReg === "xzr" && dstOffset === exceptionOffset) {
              threadReg = dstValue.base;
              writer.putPushRegReg("x0", "lr");
              writer.putMovRegReg("x0", threadReg);
              writer.putBlImm(invokeCallback);
              writer.putPopRegReg("x0", "lr");
              foundCore = true;
              keep = false;
            } else if (neuteredOffsets.has(dstOffset) && dstValue.base === threadReg) {
              keep = false;
            }
            break;
          }
          /*
           * CheckJNI::ExceptionClear, when checked JNI is on. Wrapper that calls JNI::ExceptionClear().
           */
          case "ldr": {
            const ops = insn.operands;
            const src = ops[1].value;
            if (src.base[0] === "x" && src.disp === ENV_VTABLE_OFFSET_EXCEPTION_CLEAR) {
              realImplReg = ops[0].value;
            }
            break;
          }
          case "blr":
            if (insn.operands[0].value === realImplReg) {
              writer.putLdrRegRegOffset("x0", "x0", 8);
              writer.putCallAddressWithArguments(callback, ["x0"]);
              foundCore = true;
              realImplReg = null;
              keep = false;
            }
            break;
        }
        if (keep) {
          relocator.writeAll();
        } else {
          relocator.skipOne();
        }
        if (offset === size) {
          break;
        }
      }
      relocator.dispose();
    });
    writer.dispose();
    if (!foundCore) {
      throwThreadStateTransitionParseError();
    }
    return new NativeFunction(pc, "void", ["pointer"], nativeFunctionOptions3);
  }
  function throwThreadStateTransitionParseError() {
    throw new Error("Unable to parse ART internals; please file a bug");
  }
  function fixupArtQuickDeliverExceptionBug(api2) {
    const prettyMethod = api2["art::ArtMethod::PrettyMethod"];
    if (prettyMethod === void 0) {
      return;
    }
    Interceptor.attach(prettyMethod.impl, artController.hooks.ArtMethod.prettyMethod);
    Interceptor.flush();
  }
  function branchLabelFromOperand(op) {
    return ptr(op.value).toString();
  }
  function makeCxxMethodWrapperReturningPointerByValueGeneric(address, argTypes) {
    return new NativeFunction(address, "pointer", argTypes, nativeFunctionOptions3);
  }
  function makeCxxMethodWrapperReturningPointerByValueInFirstArg(address, argTypes) {
    const impl = new NativeFunction(address, "void", ["pointer"].concat(argTypes), nativeFunctionOptions3);
    return function() {
      const resultPtr = Memory.alloc(pointerSize5);
      impl(resultPtr, ...arguments);
      return resultPtr.readPointer();
    };
  }
  function makeCxxMethodWrapperReturningStdStringByValue(impl, argTypes) {
    const { arch } = Process;
    switch (arch) {
      case "ia32":
      case "arm64": {
        let thunk;
        if (arch === "ia32") {
          thunk = makeThunk(64, (writer) => {
            const argCount = 1 + argTypes.length;
            const argvSize = argCount * 4;
            writer.putSubRegImm("esp", argvSize);
            for (let i = 0; i !== argCount; i++) {
              const offset = i * 4;
              writer.putMovRegRegOffsetPtr("eax", "esp", argvSize + 4 + offset);
              writer.putMovRegOffsetPtrReg("esp", offset, "eax");
            }
            writer.putCallAddress(impl);
            writer.putAddRegImm("esp", argvSize - 4);
            writer.putRet();
          });
        } else {
          thunk = makeThunk(32, (writer) => {
            writer.putMovRegReg("x8", "x0");
            argTypes.forEach((t, i) => {
              writer.putMovRegReg("x" + i, "x" + (i + 1));
            });
            writer.putLdrRegAddress("x7", impl);
            writer.putBrReg("x7");
          });
        }
        const invokeThunk = new NativeFunction(thunk, "void", ["pointer"].concat(argTypes), nativeFunctionOptions3);
        const wrapper = function(...args) {
          invokeThunk(...args);
        };
        wrapper.handle = thunk;
        wrapper.impl = impl;
        return wrapper;
      }
      default: {
        const result = new NativeFunction(impl, "void", ["pointer"].concat(argTypes), nativeFunctionOptions3);
        result.impl = impl;
        return result;
      }
    }
  }
  var StdString = class {
    constructor() {
      this.handle = Memory.alloc(STD_STRING_SIZE);
    }
    dispose() {
      const [data, isTiny] = this._getData();
      if (!isTiny) {
        getApi().$delete(data);
      }
    }
    disposeToString() {
      const result = this.toString();
      this.dispose();
      return result;
    }
    toString() {
      const [data] = this._getData();
      return data.readUtf8String();
    }
    _getData() {
      const str = this.handle;
      const isTiny = (str.readU8() & 1) === 0;
      const data = isTiny ? str.add(1) : str.add(2 * pointerSize5).readPointer();
      return [data, isTiny];
    }
  };
  var StdVector = class {
    $delete() {
      this.dispose();
      getApi().$delete(this);
    }
    constructor(storage, elementSize) {
      this.handle = storage;
      this._begin = storage;
      this._end = storage.add(pointerSize5);
      this._storage = storage.add(2 * pointerSize5);
      this._elementSize = elementSize;
    }
    init() {
      this.begin = NULL;
      this.end = NULL;
      this.storage = NULL;
    }
    dispose() {
      getApi().$delete(this.begin);
    }
    get begin() {
      return this._begin.readPointer();
    }
    set begin(value) {
      this._begin.writePointer(value);
    }
    get end() {
      return this._end.readPointer();
    }
    set end(value) {
      this._end.writePointer(value);
    }
    get storage() {
      return this._storage.readPointer();
    }
    set storage(value) {
      this._storage.writePointer(value);
    }
    get size() {
      return this.end.sub(this.begin).toInt32() / this._elementSize;
    }
  };
  var HandleVector = class _HandleVector extends StdVector {
    static $new() {
      const vector = new _HandleVector(getApi().$new(STD_VECTOR_SIZE));
      vector.init();
      return vector;
    }
    constructor(storage) {
      super(storage, pointerSize5);
    }
    get handles() {
      const result = [];
      let cur = this.begin;
      const end = this.end;
      while (!cur.equals(end)) {
        result.push(cur.readPointer());
        cur = cur.add(pointerSize5);
      }
      return result;
    }
  };
  var BHS_OFFSET_LINK = 0;
  var BHS_OFFSET_NUM_REFS = pointerSize5;
  var BHS_SIZE = BHS_OFFSET_NUM_REFS + 4;
  var kNumReferencesVariableSized = -1;
  var BaseHandleScope = class _BaseHandleScope {
    $delete() {
      this.dispose();
      getApi().$delete(this);
    }
    constructor(storage) {
      this.handle = storage;
      this._link = storage.add(BHS_OFFSET_LINK);
      this._numberOfReferences = storage.add(BHS_OFFSET_NUM_REFS);
    }
    init(link, numberOfReferences) {
      this.link = link;
      this.numberOfReferences = numberOfReferences;
    }
    dispose() {
    }
    get link() {
      return new _BaseHandleScope(this._link.readPointer());
    }
    set link(value) {
      this._link.writePointer(value);
    }
    get numberOfReferences() {
      return this._numberOfReferences.readS32();
    }
    set numberOfReferences(value) {
      this._numberOfReferences.writeS32(value);
    }
  };
  var VSHS_OFFSET_SELF = alignPointerOffset(BHS_SIZE);
  var VSHS_OFFSET_CURRENT_SCOPE = VSHS_OFFSET_SELF + pointerSize5;
  var VSHS_SIZE = VSHS_OFFSET_CURRENT_SCOPE + pointerSize5;
  var VariableSizedHandleScope = class _VariableSizedHandleScope extends BaseHandleScope {
    static $new(thread, vm3) {
      const scope = new _VariableSizedHandleScope(getApi().$new(VSHS_SIZE));
      scope.init(thread, vm3);
      return scope;
    }
    constructor(storage) {
      super(storage);
      this._self = storage.add(VSHS_OFFSET_SELF);
      this._currentScope = storage.add(VSHS_OFFSET_CURRENT_SCOPE);
      const kLocalScopeSize = 64;
      const kSizeOfReferencesPerScope = kLocalScopeSize - pointerSize5 - 4 - 4;
      const kNumReferencesPerScope = kSizeOfReferencesPerScope / 4;
      this._scopeLayout = FixedSizeHandleScope.layoutForCapacity(kNumReferencesPerScope);
      this._topHandleScopePtr = null;
    }
    init(thread, vm3) {
      const topHandleScopePtr = thread.add(getArtThreadSpec(vm3).offset.topHandleScope);
      this._topHandleScopePtr = topHandleScopePtr;
      super.init(topHandleScopePtr.readPointer(), kNumReferencesVariableSized);
      this.self = thread;
      this.currentScope = FixedSizeHandleScope.$new(this._scopeLayout);
      topHandleScopePtr.writePointer(this);
    }
    dispose() {
      this._topHandleScopePtr.writePointer(this.link);
      let scope;
      while ((scope = this.currentScope) !== null) {
        const next = scope.link;
        scope.$delete();
        this.currentScope = next;
      }
    }
    get self() {
      return this._self.readPointer();
    }
    set self(value) {
      this._self.writePointer(value);
    }
    get currentScope() {
      const storage = this._currentScope.readPointer();
      if (storage.isNull()) {
        return null;
      }
      return new FixedSizeHandleScope(storage, this._scopeLayout);
    }
    set currentScope(value) {
      this._currentScope.writePointer(value);
    }
    newHandle(object) {
      return this.currentScope.newHandle(object);
    }
  };
  var FixedSizeHandleScope = class _FixedSizeHandleScope extends BaseHandleScope {
    static $new(layout) {
      const scope = new _FixedSizeHandleScope(getApi().$new(layout.size), layout);
      scope.init();
      return scope;
    }
    constructor(storage, layout) {
      super(storage);
      const { offset } = layout;
      this._refsStorage = storage.add(offset.refsStorage);
      this._pos = storage.add(offset.pos);
      this._layout = layout;
    }
    init() {
      super.init(NULL, this._layout.numberOfReferences);
      this.pos = 0;
    }
    get pos() {
      return this._pos.readU32();
    }
    set pos(value) {
      this._pos.writeU32(value);
    }
    newHandle(object) {
      const pos = this.pos;
      const handle = this._refsStorage.add(pos * 4);
      handle.writeS32(object.toInt32());
      this.pos = pos + 1;
      return handle;
    }
    static layoutForCapacity(numRefs) {
      const refsStorage = BHS_SIZE;
      const pos = refsStorage + numRefs * 4;
      return {
        size: pos + 4,
        numberOfReferences: numRefs,
        offset: {
          refsStorage,
          pos
        }
      };
    }
  };
  var objectVisitorPredicateFactories = {
    arm: function(needle, onMatch) {
      const size = Process.pageSize;
      const predicate = Memory.alloc(size);
      Memory.protect(predicate, size, "rwx");
      const onMatchCallback = new NativeCallback(onMatch, "void", ["pointer"]);
      predicate._onMatchCallback = onMatchCallback;
      const instructions = [
        26625,
        // ldr r1, [r0]
        18947,
        // ldr r2, =needle
        17041,
        // cmp r1, r2
        53505,
        // bne mismatch
        19202,
        // ldr r3, =onMatch
        18200,
        // bx r3
        18288,
        // bx lr
        48896
        // nop
      ];
      const needleOffset = instructions.length * 2;
      const onMatchOffset = needleOffset + 4;
      const codeSize = onMatchOffset + 4;
      Memory.patchCode(predicate, codeSize, function(address) {
        instructions.forEach((instruction, index) => {
          address.add(index * 2).writeU16(instruction);
        });
        address.add(needleOffset).writeS32(needle);
        address.add(onMatchOffset).writePointer(onMatchCallback);
      });
      return predicate.or(1);
    },
    arm64: function(needle, onMatch) {
      const size = Process.pageSize;
      const predicate = Memory.alloc(size);
      Memory.protect(predicate, size, "rwx");
      const onMatchCallback = new NativeCallback(onMatch, "void", ["pointer"]);
      predicate._onMatchCallback = onMatchCallback;
      const instructions = [
        3107979265,
        // ldr w1, [x0]
        402653378,
        // ldr w2, =needle
        1795293247,
        // cmp w1, w2
        1409286241,
        // b.ne mismatch
        1476395139,
        // ldr x3, =onMatch
        3592355936,
        // br x3
        3596551104
        // ret
      ];
      const needleOffset = instructions.length * 4;
      const onMatchOffset = needleOffset + 4;
      const codeSize = onMatchOffset + 8;
      Memory.patchCode(predicate, codeSize, function(address) {
        instructions.forEach((instruction, index) => {
          address.add(index * 4).writeU32(instruction);
        });
        address.add(needleOffset).writeS32(needle);
        address.add(onMatchOffset).writePointer(onMatchCallback);
      });
      return predicate;
    }
  };
  function makeObjectVisitorPredicate(needle, onMatch) {
    const factory = objectVisitorPredicateFactories[Process.arch] || makeGenericObjectVisitorPredicate;
    return factory(needle, onMatch);
  }
  function makeGenericObjectVisitorPredicate(needle, onMatch) {
    return new NativeCallback((object) => {
      const klass = object.readS32();
      if (klass === needle) {
        onMatch(object);
      }
    }, "void", ["pointer", "pointer"]);
  }
  function alignPointerOffset(offset) {
    const remainder = offset % pointerSize5;
    if (remainder !== 0) {
      return offset + pointerSize5 - remainder;
    }
    return offset;
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/jvm.js
  var jsizeSize2 = 4;
  var { pointerSize: pointerSize6 } = Process;
  var JVM_ACC_NATIVE = 256;
  var JVM_ACC_IS_OLD = 65536;
  var JVM_ACC_IS_OBSOLETE = 131072;
  var JVM_ACC_NOT_C2_COMPILABLE = 33554432;
  var JVM_ACC_NOT_C1_COMPILABLE = 67108864;
  var JVM_ACC_NOT_C2_OSR_COMPILABLE = 134217728;
  var nativeFunctionOptions4 = {
    exceptions: "propagate"
  };
  var getJvmMethodSpec = memoize(_getJvmMethodSpec);
  var getJvmInstanceKlassSpec = memoize(_getJvmInstanceKlassSpec);
  var getJvmThreadSpec = memoize(_getJvmThreadSpec);
  var cachedApi2 = null;
  var manglersScheduled = false;
  var replaceManglers = /* @__PURE__ */ new Map();
  var revertManglers = /* @__PURE__ */ new Map();
  function getApi2() {
    if (cachedApi2 === null) {
      cachedApi2 = _getApi2();
    }
    return cachedApi2;
  }
  function _getApi2() {
    const vmModules = Process.enumerateModules().filter((m) => /jvm.(dll|dylib|so)$/.test(m.name));
    if (vmModules.length === 0) {
      return null;
    }
    const vmModule = vmModules[0];
    const temporaryApi = {
      flavor: "jvm"
    };
    const pending = Process.platform === "windows" ? [{
      module: vmModule,
      functions: {
        JNI_GetCreatedJavaVMs: ["JNI_GetCreatedJavaVMs", "int", ["pointer", "int", "pointer"]],
        JVM_Sleep: ["JVM_Sleep", "void", ["pointer", "pointer", "long"]],
        "VMThread::execute": ["VMThread::execute", "void", ["pointer"]],
        "Method::size": ["Method::size", "int", ["int"]],
        "Method::set_native_function": ["Method::set_native_function", "void", ["pointer", "pointer", "int"]],
        "Method::clear_native_function": ["Method::clear_native_function", "void", ["pointer"]],
        "Method::jmethod_id": ["Method::jmethod_id", "pointer", ["pointer"]],
        "ClassLoaderDataGraph::classes_do": ["ClassLoaderDataGraph::classes_do", "void", ["pointer"]],
        "NMethodSweeper::sweep_code_cache": ["NMethodSweeper::sweep_code_cache", "void", []],
        "OopMapCache::flush_obsolete_entries": ["OopMapCache::flush_obsolete_entries", "void", ["pointer"]]
      },
      variables: {
        "VM_RedefineClasses::`vftable'": function(address) {
          this.vtableRedefineClasses = address;
        },
        "VM_RedefineClasses::doit": function(address) {
          this.redefineClassesDoIt = address;
        },
        "VM_RedefineClasses::doit_prologue": function(address) {
          this.redefineClassesDoItPrologue = address;
        },
        "VM_RedefineClasses::doit_epilogue": function(address) {
          this.redefineClassesDoItEpilogue = address;
        },
        "VM_RedefineClasses::allow_nested_vm_operations": function(address) {
          this.redefineClassesAllow = address;
        },
        "NMethodSweeper::_traversals": function(address) {
          this.traversals = address;
        },
        "NMethodSweeper::_should_sweep": function(address) {
          this.shouldSweep = address;
        }
      },
      optionals: []
    }] : [{
      module: vmModule,
      functions: {
        JNI_GetCreatedJavaVMs: ["JNI_GetCreatedJavaVMs", "int", ["pointer", "int", "pointer"]],
        _ZN6Method4sizeEb: ["Method::size", "int", ["int"]],
        _ZN6Method19set_native_functionEPhb: ["Method::set_native_function", "void", ["pointer", "pointer", "int"]],
        _ZN6Method21clear_native_functionEv: ["Method::clear_native_function", "void", ["pointer"]],
        // JDK >= 17
        _ZN6Method24restore_unshareable_infoEP10JavaThread: ["Method::restore_unshareable_info", "void", ["pointer", "pointer"]],
        // JDK < 17
        _ZN6Method24restore_unshareable_infoEP6Thread: ["Method::restore_unshareable_info", "void", ["pointer", "pointer"]],
        _ZN6Method11link_methodERK12methodHandleP10JavaThread: ["Method::link_method", "void", ["pointer", "pointer", "pointer"]],
        _ZN6Method10jmethod_idEv: ["Method::jmethod_id", "pointer", ["pointer"]],
        _ZN6Method10clear_codeEv: function(address) {
          const clearCode = new NativeFunction(address, "void", ["pointer"], nativeFunctionOptions4);
          this["Method::clear_code"] = function(thisPtr) {
            clearCode(thisPtr);
          };
        },
        _ZN6Method10clear_codeEb: function(address) {
          const clearCode = new NativeFunction(address, "void", ["pointer", "int"], nativeFunctionOptions4);
          const lock = 0;
          this["Method::clear_code"] = function(thisPtr) {
            clearCode(thisPtr, lock);
          };
        },
        // JDK >= 13
        _ZN18VM_RedefineClasses19mark_dependent_codeEP13InstanceKlass: ["VM_RedefineClasses::mark_dependent_code", "void", ["pointer", "pointer"]],
        _ZN18VM_RedefineClasses20flush_dependent_codeEv: ["VM_RedefineClasses::flush_dependent_code", "void", []],
        // JDK < 13
        _ZN18VM_RedefineClasses20flush_dependent_codeEP13InstanceKlassP6Thread: ["VM_RedefineClasses::flush_dependent_code", "void", ["pointer", "pointer", "pointer"]],
        // JDK < 10
        _ZN18VM_RedefineClasses20flush_dependent_codeE19instanceKlassHandleP6Thread: ["VM_RedefineClasses::flush_dependent_code", "void", ["pointer", "pointer", "pointer"]],
        _ZN19ResolvedMethodTable21adjust_method_entriesEPb: ["ResolvedMethodTable::adjust_method_entries", "void", ["pointer"]],
        // JDK < 10
        _ZN15MemberNameTable21adjust_method_entriesEP13InstanceKlassPb: ["MemberNameTable::adjust_method_entries", "void", ["pointer", "pointer", "pointer"]],
        _ZN17ConstantPoolCache21adjust_method_entriesEPb: function(address) {
          const adjustMethod = new NativeFunction(address, "void", ["pointer", "pointer"], nativeFunctionOptions4);
          this["ConstantPoolCache::adjust_method_entries"] = function(thisPtr, holderPtr, tracePtr) {
            adjustMethod(thisPtr, tracePtr);
          };
        },
        // JDK < 13
        _ZN17ConstantPoolCache21adjust_method_entriesEP13InstanceKlassPb: function(address) {
          const adjustMethod = new NativeFunction(address, "void", ["pointer", "pointer", "pointer"], nativeFunctionOptions4);
          this["ConstantPoolCache::adjust_method_entries"] = function(thisPtr, holderPtr, tracePtr) {
            adjustMethod(thisPtr, holderPtr, tracePtr);
          };
        },
        _ZN20ClassLoaderDataGraph10classes_doEP12KlassClosure: ["ClassLoaderDataGraph::classes_do", "void", ["pointer"]],
        _ZN20ClassLoaderDataGraph22clean_deallocate_listsEb: ["ClassLoaderDataGraph::clean_deallocate_lists", "void", ["int"]],
        _ZN10JavaThread27thread_from_jni_environmentEP7JNIEnv_: ["JavaThread::thread_from_jni_environment", "pointer", ["pointer"]],
        _ZN8VMThread7executeEP12VM_Operation: ["VMThread::execute", "void", ["pointer"]],
        _ZN11OopMapCache22flush_obsolete_entriesEv: ["OopMapCache::flush_obsolete_entries", "void", ["pointer"]],
        _ZN14NMethodSweeper11force_sweepEv: ["NMethodSweeper::force_sweep", "void", []],
        _ZN14NMethodSweeper16sweep_code_cacheEv: ["NMethodSweeper::sweep_code_cache", "void", []],
        _ZN14NMethodSweeper17sweep_in_progressEv: ["NMethodSweeper::sweep_in_progress", "bool", []],
        JVM_Sleep: ["JVM_Sleep", "void", ["pointer", "pointer", "long"]]
      },
      variables: {
        // JDK <= 9
        _ZN18VM_RedefineClasses14_the_class_oopE: function(address) {
          this.redefineClass = address;
        },
        // 9 < JDK < 13
        _ZN18VM_RedefineClasses10_the_classE: function(address) {
          this.redefineClass = address;
        },
        // JDK < 13
        _ZN18VM_RedefineClasses25AdjustCpoolCacheAndVtable8do_klassEP5Klass: function(address) {
          this.doKlass = address;
        },
        // JDK >= 13
        _ZN18VM_RedefineClasses22AdjustAndCleanMetadata8do_klassEP5Klass: function(address) {
          this.doKlass = address;
        },
        _ZTV18VM_RedefineClasses: function(address) {
          this.vtableRedefineClasses = address;
        },
        _ZN18VM_RedefineClasses4doitEv: function(address) {
          this.redefineClassesDoIt = address;
        },
        _ZN18VM_RedefineClasses13doit_prologueEv: function(address) {
          this.redefineClassesDoItPrologue = address;
        },
        _ZN18VM_RedefineClasses13doit_epilogueEv: function(address) {
          this.redefineClassesDoItEpilogue = address;
        },
        _ZN18VM_RedefineClassesD0Ev: function(address) {
          this.redefineClassesDispose0 = address;
        },
        _ZN18VM_RedefineClassesD1Ev: function(address) {
          this.redefineClassesDispose1 = address;
        },
        _ZNK18VM_RedefineClasses26allow_nested_vm_operationsEv: function(address) {
          this.redefineClassesAllow = address;
        },
        _ZNK18VM_RedefineClasses14print_on_errorEP12outputStream: function(address) {
          this.redefineClassesOnError = address;
        },
        // JDK >= 17
        _ZN13InstanceKlass33create_new_default_vtable_indicesEiP10JavaThread: function(address) {
          this.createNewDefaultVtableIndices = address;
        },
        // JDK < 17
        _ZN13InstanceKlass33create_new_default_vtable_indicesEiP6Thread: function(address) {
          this.createNewDefaultVtableIndices = address;
        },
        _ZN19Abstract_VM_Version19jre_release_versionEv: function(address) {
          const getVersion = new NativeFunction(address, "pointer", [], nativeFunctionOptions4);
          const versionS = getVersion().readCString();
          this.version = versionS.startsWith("1.8") ? 8 : versionS.startsWith("9.") ? 9 : parseInt(versionS.slice(0, 2), 10);
          this.versionS = versionS;
        },
        _ZN14NMethodSweeper11_traversalsE: function(address) {
          this.traversals = address;
        },
        _ZN14NMethodSweeper21_sweep_fractions_leftE: function(address) {
          this.fractions = address;
        },
        _ZN14NMethodSweeper13_should_sweepE: function(address) {
          this.shouldSweep = address;
        }
      },
      optionals: [
        "_ZN6Method24restore_unshareable_infoEP10JavaThread",
        "_ZN6Method24restore_unshareable_infoEP6Thread",
        "_ZN6Method11link_methodERK12methodHandleP10JavaThread",
        "_ZN6Method10clear_codeEv",
        "_ZN6Method10clear_codeEb",
        "_ZN18VM_RedefineClasses19mark_dependent_codeEP13InstanceKlass",
        "_ZN18VM_RedefineClasses20flush_dependent_codeEv",
        "_ZN18VM_RedefineClasses20flush_dependent_codeEP13InstanceKlassP6Thread",
        "_ZN18VM_RedefineClasses20flush_dependent_codeE19instanceKlassHandleP6Thread",
        "_ZN19ResolvedMethodTable21adjust_method_entriesEPb",
        "_ZN15MemberNameTable21adjust_method_entriesEP13InstanceKlassPb",
        "_ZN17ConstantPoolCache21adjust_method_entriesEPb",
        "_ZN17ConstantPoolCache21adjust_method_entriesEP13InstanceKlassPb",
        "_ZN20ClassLoaderDataGraph22clean_deallocate_listsEb",
        "_ZN10JavaThread27thread_from_jni_environmentEP7JNIEnv_",
        "_ZN14NMethodSweeper11force_sweepEv",
        "_ZN14NMethodSweeper17sweep_in_progressEv",
        "_ZN18VM_RedefineClasses14_the_class_oopE",
        "_ZN18VM_RedefineClasses10_the_classE",
        "_ZN18VM_RedefineClasses25AdjustCpoolCacheAndVtable8do_klassEP5Klass",
        "_ZN18VM_RedefineClasses22AdjustAndCleanMetadata8do_klassEP5Klass",
        "_ZN18VM_RedefineClassesD0Ev",
        "_ZN18VM_RedefineClassesD1Ev",
        "_ZNK18VM_RedefineClasses14print_on_errorEP12outputStream",
        "_ZN13InstanceKlass33create_new_default_vtable_indicesEiP10JavaThread",
        "_ZN13InstanceKlass33create_new_default_vtable_indicesEiP6Thread",
        "_ZN14NMethodSweeper21_sweep_fractions_leftE"
      ]
    }];
    const missing = [];
    pending.forEach(function(api2) {
      const module = api2.module;
      const functions = api2.functions || {};
      const variables = api2.variables || {};
      const optionals = new Set(api2.optionals || []);
      const tmp = module.enumerateExports().reduce(function(result, exp) {
        result[exp.name] = exp;
        return result;
      }, {});
      const exportByName = module.enumerateSymbols().reduce(function(result, exp) {
        result[exp.name] = exp;
        return result;
      }, tmp);
      Object.keys(functions).forEach(function(name) {
        const exp = exportByName[name];
        if (exp !== void 0) {
          const signature = functions[name];
          if (typeof signature === "function") {
            signature.call(temporaryApi, exp.address);
          } else {
            temporaryApi[signature[0]] = new NativeFunction(exp.address, signature[1], signature[2], nativeFunctionOptions4);
          }
        } else {
          if (!optionals.has(name)) {
            missing.push(name);
          }
        }
      });
      Object.keys(variables).forEach(function(name) {
        const exp = exportByName[name];
        if (exp !== void 0) {
          const handler = variables[name];
          handler.call(temporaryApi, exp.address);
        } else {
          if (!optionals.has(name)) {
            missing.push(name);
          }
        }
      });
    });
    if (missing.length > 0) {
      throw new Error("Java API only partially available; please file a bug. Missing: " + missing.join(", "));
    }
    const vms = Memory.alloc(pointerSize6);
    const vmCount = Memory.alloc(jsizeSize2);
    checkJniResult("JNI_GetCreatedJavaVMs", temporaryApi.JNI_GetCreatedJavaVMs(vms, 1, vmCount));
    if (vmCount.readInt() === 0) {
      return null;
    }
    temporaryApi.vm = vms.readPointer();
    const allocatorFunctions = Process.platform === "windows" ? {
      $new: ["??2@YAPEAX_K@Z", "pointer", ["ulong"]],
      $delete: ["??3@YAXPEAX@Z", "void", ["pointer"]]
    } : {
      $new: ["_Znwm", "pointer", ["ulong"]],
      $delete: ["_ZdlPv", "void", ["pointer"]]
    };
    for (const [name, [rawName, retType, argTypes]] of Object.entries(allocatorFunctions)) {
      let address = Module.findGlobalExportByName(rawName);
      if (address === null) {
        address = DebugSymbol.fromName(rawName).address;
        if (address.isNull()) {
          throw new Error(`unable to find C++ allocator API, missing: '${rawName}'`);
        }
      }
      temporaryApi[name] = new NativeFunction(address, retType, argTypes, nativeFunctionOptions4);
    }
    temporaryApi.jvmti = getEnvJvmti(temporaryApi);
    if (temporaryApi["JavaThread::thread_from_jni_environment"] === void 0) {
      temporaryApi["JavaThread::thread_from_jni_environment"] = makeThreadFromJniHelper(temporaryApi);
    }
    return temporaryApi;
  }
  function getEnvJvmti(api2) {
    const vm3 = new VM(api2);
    let env;
    vm3.perform(() => {
      const handle = vm3.tryGetEnvHandle(jvmtiVersion.v1_0);
      if (handle === null) {
        throw new Error("JVMTI not available");
      }
      env = new EnvJvmti(handle, vm3);
      const capaBuf = Memory.alloc(8);
      capaBuf.writeU64(jvmtiCapabilities.canTagObjects);
      const result = env.addCapabilities(capaBuf);
      checkJniResult("getEnvJvmti::AddCapabilities", result);
    });
    return env;
  }
  var threadOffsetParsers = {
    x64: parseX64ThreadOffset
  };
  function makeThreadFromJniHelper(api2) {
    let offset = null;
    const tryParse = threadOffsetParsers[Process.arch];
    if (tryParse !== void 0) {
      const vm3 = new VM(api2);
      const findClassImpl = vm3.perform((env) => env.handle.readPointer().add(6 * pointerSize6).readPointer());
      offset = parseInstructionsAt(findClassImpl, tryParse, { limit: 11 });
    }
    if (offset === null) {
      return () => {
        throw new Error("Unable to make thread_from_jni_environment() helper for the current architecture");
      };
    }
    return (env) => {
      return env.add(offset);
    };
  }
  function parseX64ThreadOffset(insn) {
    if (insn.mnemonic !== "lea") {
      return null;
    }
    const { base, disp } = insn.operands[1].value;
    if (!(base === "rdi" && disp < 0)) {
      return null;
    }
    return disp;
  }
  function ensureClassInitialized2(env, classRef) {
  }
  var JvmMethodMangler = class {
    constructor(methodId) {
      this.methodId = methodId;
      this.method = methodId.readPointer();
      this.originalMethod = null;
      this.newMethod = null;
      this.resolved = null;
      this.impl = null;
      this.key = methodId.toString(16);
    }
    replace(impl, isInstanceMethod, argTypes, vm3, api2) {
      const { key } = this;
      const mangler = revertManglers.get(key);
      if (mangler !== void 0) {
        revertManglers.delete(key);
        this.method = mangler.method;
        this.originalMethod = mangler.originalMethod;
        this.newMethod = mangler.newMethod;
        this.resolved = mangler.resolved;
      }
      this.impl = impl;
      replaceManglers.set(key, this);
      ensureManglersScheduled(vm3);
    }
    revert(vm3) {
      const { key } = this;
      replaceManglers.delete(key);
      revertManglers.set(key, this);
      ensureManglersScheduled(vm3);
    }
    resolveTarget(wrapper, isInstanceMethod, env, api2) {
      const { resolved, originalMethod, methodId } = this;
      if (resolved !== null) {
        return resolved;
      }
      if (originalMethod === null) {
        return methodId;
      }
      const vip = originalMethod.oldMethod.vtableIndexPtr;
      vip.writeS32(-2);
      const jmethodID = Memory.alloc(pointerSize6);
      jmethodID.writePointer(this.method);
      this.resolved = jmethodID;
      return jmethodID;
    }
  };
  function ensureManglersScheduled(vm3) {
    if (!manglersScheduled) {
      manglersScheduled = true;
      Script.nextTick(doManglers, vm3);
    }
  }
  function doManglers(vm3) {
    const localReplaceManglers = new Map(replaceManglers);
    const localRevertManglers = new Map(revertManglers);
    replaceManglers.clear();
    revertManglers.clear();
    manglersScheduled = false;
    vm3.perform((env) => {
      const api2 = getApi2();
      const thread = api2["JavaThread::thread_from_jni_environment"](env.handle);
      let force = false;
      withJvmThread(() => {
        localReplaceManglers.forEach((mangler) => {
          const { method, originalMethod, impl, methodId, newMethod } = mangler;
          if (originalMethod === null) {
            mangler.originalMethod = fetchJvmMethod(method);
            mangler.newMethod = nativeJvmMethod(method, impl, thread);
            installJvmMethod(mangler.newMethod, methodId, thread);
          } else {
            api2["Method::set_native_function"](newMethod.method, impl, 0);
          }
        });
        localRevertManglers.forEach((mangler) => {
          const { originalMethod, methodId, newMethod } = mangler;
          if (originalMethod !== null) {
            revertJvmMethod(originalMethod);
            const revert = originalMethod.oldMethod;
            revert.oldMethod = newMethod;
            installJvmMethod(revert, methodId, thread);
            force = true;
          }
        });
      });
      if (force) {
        forceSweep(env.handle);
      }
    });
  }
  function forceSweep(env) {
    const {
      fractions,
      shouldSweep,
      traversals,
      "NMethodSweeper::sweep_code_cache": sweep,
      "NMethodSweeper::sweep_in_progress": inProgress,
      "NMethodSweeper::force_sweep": force,
      JVM_Sleep: sleep
    } = getApi2();
    if (force !== void 0) {
      Thread.sleep(0.05);
      force();
      Thread.sleep(0.05);
      force();
    } else {
      let trav = traversals.readS64();
      const endTrav = trav + 2;
      while (endTrav > trav) {
        fractions.writeS32(1);
        sleep(env, NULL, 50);
        if (!inProgress()) {
          withJvmThread(() => {
            Thread.sleep(0.05);
          });
        }
        const sweepNotAlreadyInProgress = shouldSweep.readU8() === 0;
        if (sweepNotAlreadyInProgress) {
          fractions.writeS32(1);
          sweep();
        }
        trav = traversals.readS64();
      }
    }
  }
  function withJvmThread(fn, fnPrologue, fnEpilogue) {
    const {
      execute,
      vtable: vtable2,
      vtableSize,
      doItOffset,
      prologueOffset,
      epilogueOffset
    } = getJvmThreadSpec();
    const vtableDup = Memory.dup(vtable2, vtableSize);
    const vmOperation = Memory.alloc(pointerSize6 * 25);
    vmOperation.writePointer(vtableDup);
    const doIt = new NativeCallback(fn, "void", ["pointer"]);
    vtableDup.add(doItOffset).writePointer(doIt);
    let prologue = null;
    if (fnPrologue !== void 0) {
      prologue = new NativeCallback(fnPrologue, "int", ["pointer"]);
      vtableDup.add(prologueOffset).writePointer(prologue);
    }
    let epilogue = null;
    if (fnEpilogue !== void 0) {
      epilogue = new NativeCallback(fnEpilogue, "void", ["pointer"]);
      vtableDup.add(epilogueOffset).writePointer(epilogue);
    }
    execute(vmOperation);
  }
  function _getJvmThreadSpec() {
    const {
      vtableRedefineClasses,
      redefineClassesDoIt,
      redefineClassesDoItPrologue,
      redefineClassesDoItEpilogue,
      redefineClassesOnError,
      redefineClassesAllow,
      redefineClassesDispose0,
      redefineClassesDispose1,
      "VMThread::execute": execute
    } = getApi2();
    const vtablePtr = vtableRedefineClasses.add(2 * pointerSize6);
    const vtableSize = 15 * pointerSize6;
    const vtable2 = Memory.dup(vtablePtr, vtableSize);
    const emptyCallback = new NativeCallback(() => {
    }, "void", ["pointer"]);
    let doItOffset, prologueOffset, epilogueOffset;
    for (let offset = 0; offset !== vtableSize; offset += pointerSize6) {
      const element = vtable2.add(offset);
      const value = element.readPointer();
      if (redefineClassesOnError !== void 0 && value.equals(redefineClassesOnError) || redefineClassesDispose0 !== void 0 && value.equals(redefineClassesDispose0) || redefineClassesDispose1 !== void 0 && value.equals(redefineClassesDispose1)) {
        element.writePointer(emptyCallback);
      } else if (value.equals(redefineClassesDoIt)) {
        doItOffset = offset;
      } else if (value.equals(redefineClassesDoItPrologue)) {
        prologueOffset = offset;
        element.writePointer(redefineClassesAllow);
      } else if (value.equals(redefineClassesDoItEpilogue)) {
        epilogueOffset = offset;
        element.writePointer(emptyCallback);
      }
    }
    return {
      execute,
      emptyCallback,
      vtable: vtable2,
      vtableSize,
      doItOffset,
      prologueOffset,
      epilogueOffset
    };
  }
  function makeMethodMangler2(methodId) {
    return new JvmMethodMangler(methodId);
  }
  function installJvmMethod(method, methodId, thread) {
    const { method: handle, oldMethod: old } = method;
    const api2 = getApi2();
    method.methodsArray.add(method.methodIndex * pointerSize6).writePointer(handle);
    if (method.vtableIndex >= 0) {
      method.vtable.add(method.vtableIndex * pointerSize6).writePointer(handle);
    }
    methodId.writePointer(handle);
    old.accessFlagsPtr.writeU32((old.accessFlags | JVM_ACC_IS_OLD | JVM_ACC_IS_OBSOLETE) >>> 0);
    const flushObs = api2["OopMapCache::flush_obsolete_entries"];
    if (flushObs !== void 0) {
      const { oopMapCache } = method;
      if (!oopMapCache.isNull()) {
        flushObs(oopMapCache);
      }
    }
    const mark = api2["VM_RedefineClasses::mark_dependent_code"];
    const flush = api2["VM_RedefineClasses::flush_dependent_code"];
    if (mark !== void 0) {
      mark(NULL, method.instanceKlass);
      flush();
    } else {
      flush(NULL, method.instanceKlass, thread);
    }
    const traceNamePrinted = Memory.alloc(1);
    traceNamePrinted.writeU8(1);
    api2["ConstantPoolCache::adjust_method_entries"](method.cache, method.instanceKlass, traceNamePrinted);
    const klassClosure = Memory.alloc(3 * pointerSize6);
    const doKlassPtr = Memory.alloc(pointerSize6);
    doKlassPtr.writePointer(api2.doKlass);
    klassClosure.writePointer(doKlassPtr);
    klassClosure.add(pointerSize6).writePointer(thread);
    klassClosure.add(2 * pointerSize6).writePointer(thread);
    if (api2.redefineClass !== void 0) {
      api2.redefineClass.writePointer(method.instanceKlass);
    }
    api2["ClassLoaderDataGraph::classes_do"](klassClosure);
    const rmtAdjustMethodEntries = api2["ResolvedMethodTable::adjust_method_entries"];
    if (rmtAdjustMethodEntries !== void 0) {
      rmtAdjustMethodEntries(traceNamePrinted);
    } else {
      const { memberNames } = method;
      if (!memberNames.isNull()) {
        const mntAdjustMethodEntries = api2["MemberNameTable::adjust_method_entries"];
        if (mntAdjustMethodEntries !== void 0) {
          mntAdjustMethodEntries(memberNames, method.instanceKlass, traceNamePrinted);
        }
      }
    }
    const clean = api2["ClassLoaderDataGraph::clean_deallocate_lists"];
    if (clean !== void 0) {
      clean(0);
    }
  }
  function nativeJvmMethod(method, impl, thread) {
    const api2 = getApi2();
    const newMethod = fetchJvmMethod(method);
    newMethod.constPtr.writePointer(newMethod.const);
    const flags = (newMethod.accessFlags | JVM_ACC_NATIVE | JVM_ACC_NOT_C2_COMPILABLE | JVM_ACC_NOT_C1_COMPILABLE | JVM_ACC_NOT_C2_OSR_COMPILABLE) >>> 0;
    newMethod.accessFlagsPtr.writeU32(flags);
    newMethod.signatureHandler.writePointer(NULL);
    newMethod.adapter.writePointer(NULL);
    newMethod.i2iEntry.writePointer(NULL);
    api2["Method::clear_code"](newMethod.method);
    newMethod.dataPtr.writePointer(NULL);
    newMethod.countersPtr.writePointer(NULL);
    newMethod.stackmapPtr.writePointer(NULL);
    api2["Method::clear_native_function"](newMethod.method);
    api2["Method::set_native_function"](newMethod.method, impl, 0);
    api2["Method::restore_unshareable_info"](newMethod.method, thread);
    if (api2.version >= 17) {
      const methodHandle = Memory.alloc(2 * pointerSize6);
      methodHandle.writePointer(newMethod.method);
      methodHandle.add(pointerSize6).writePointer(thread);
      api2["Method::link_method"](newMethod.method, methodHandle, thread);
    }
    return newMethod;
  }
  function fetchJvmMethod(method) {
    const spec = getJvmMethodSpec();
    const constMethod = method.add(spec.method.constMethodOffset).readPointer();
    const constMethodSize = constMethod.add(spec.constMethod.sizeOffset).readS32() * pointerSize6;
    const newConstMethod = Memory.alloc(constMethodSize + spec.method.size);
    Memory.copy(newConstMethod, constMethod, constMethodSize);
    const newMethod = newConstMethod.add(constMethodSize);
    Memory.copy(newMethod, method, spec.method.size);
    const result = readJvmMethod(newMethod, newConstMethod, constMethodSize);
    const oldMethod = readJvmMethod(method, constMethod, constMethodSize);
    result.oldMethod = oldMethod;
    return result;
  }
  function readJvmMethod(method, constMethod, constMethodSize) {
    const api2 = getApi2();
    const spec = getJvmMethodSpec();
    const constPtr = method.add(spec.method.constMethodOffset);
    const dataPtr = method.add(spec.method.methodDataOffset);
    const countersPtr = method.add(spec.method.methodCountersOffset);
    const accessFlagsPtr = method.add(spec.method.accessFlagsOffset);
    const accessFlags = accessFlagsPtr.readU32();
    const adapter = spec.getAdapterPointer(method, constMethod);
    const i2iEntry = method.add(spec.method.i2iEntryOffset);
    const signatureHandler = method.add(spec.method.signatureHandlerOffset);
    const constantPool = constMethod.add(spec.constMethod.constantPoolOffset).readPointer();
    const stackmapPtr = constMethod.add(spec.constMethod.stackmapDataOffset);
    const instanceKlass = constantPool.add(spec.constantPool.instanceKlassOffset).readPointer();
    const cache = constantPool.add(spec.constantPool.cacheOffset).readPointer();
    const instanceKlassSpec = getJvmInstanceKlassSpec();
    const methods = instanceKlass.add(instanceKlassSpec.methodsOffset).readPointer();
    const methodsCount = methods.readS32();
    const methodsArray = methods.add(pointerSize6);
    const methodIndex = constMethod.add(spec.constMethod.methodIdnumOffset).readU16();
    const vtableIndexPtr = method.add(spec.method.vtableIndexOffset);
    const vtableIndex = vtableIndexPtr.readS32();
    const vtable2 = instanceKlass.add(instanceKlassSpec.vtableOffset);
    const oopMapCache = instanceKlass.add(instanceKlassSpec.oopMapCacheOffset).readPointer();
    const memberNames = api2.version >= 10 ? instanceKlass.add(instanceKlassSpec.memberNamesOffset).readPointer() : NULL;
    return {
      method,
      methodSize: spec.method.size,
      const: constMethod,
      constSize: constMethodSize,
      constPtr,
      dataPtr,
      countersPtr,
      stackmapPtr,
      instanceKlass,
      methodsArray,
      methodsCount,
      methodIndex,
      vtableIndex,
      vtableIndexPtr,
      vtable: vtable2,
      accessFlags,
      accessFlagsPtr,
      adapter,
      i2iEntry,
      signatureHandler,
      memberNames,
      cache,
      oopMapCache
    };
  }
  function revertJvmMethod(method) {
    const { oldMethod: old } = method;
    old.accessFlagsPtr.writeU32(old.accessFlags);
    old.vtableIndexPtr.writeS32(old.vtableIndex);
  }
  function _getJvmMethodSpec() {
    const api2 = getApi2();
    const { version } = api2;
    let adapterHandlerLocation;
    if (version >= 17) {
      adapterHandlerLocation = "method:early";
    } else if (version >= 9 && version <= 16) {
      adapterHandlerLocation = "const-method";
    } else {
      adapterHandlerLocation = "method:late";
    }
    const isNative = 1;
    const methodSize = api2["Method::size"](isNative) * pointerSize6;
    const constMethodOffset = pointerSize6;
    const methodDataOffset = 2 * pointerSize6;
    const methodCountersOffset = 3 * pointerSize6;
    const adapterInMethodEarlyOffset = 4 * pointerSize6;
    const adapterInMethodEarlySize = adapterHandlerLocation === "method:early" ? pointerSize6 : 0;
    const accessFlagsOffset = adapterInMethodEarlyOffset + adapterInMethodEarlySize;
    const vtableIndexOffset = accessFlagsOffset + 4;
    const i2iEntryOffset = vtableIndexOffset + 4 + 8;
    const adapterInMethodLateOffset = i2iEntryOffset + pointerSize6;
    const adapterInMethodOffset = adapterInMethodEarlySize !== 0 ? adapterInMethodEarlyOffset : adapterInMethodLateOffset;
    const nativeFunctionOffset = methodSize - 2 * pointerSize6;
    const signatureHandlerOffset = methodSize - pointerSize6;
    const constantPoolOffset = 8;
    const stackmapDataOffset = constantPoolOffset + pointerSize6;
    const adapterInConstMethodOffset = stackmapDataOffset + pointerSize6;
    const adapterInConstMethodSize = adapterHandlerLocation === "const-method" ? pointerSize6 : 0;
    const constMethodSizeOffset = adapterInConstMethodOffset + adapterInConstMethodSize;
    const methodIdnumOffset = constMethodSizeOffset + 14;
    const cacheOffset = 2 * pointerSize6;
    const instanceKlassOffset = 3 * pointerSize6;
    const getAdapterPointer = adapterInConstMethodSize !== 0 ? function(method, constMethod) {
      return constMethod.add(adapterInConstMethodOffset);
    } : function(method, constMethod) {
      return method.add(adapterInMethodOffset);
    };
    return {
      getAdapterPointer,
      method: {
        size: methodSize,
        constMethodOffset,
        methodDataOffset,
        methodCountersOffset,
        accessFlagsOffset,
        vtableIndexOffset,
        i2iEntryOffset,
        nativeFunctionOffset,
        signatureHandlerOffset
      },
      constMethod: {
        constantPoolOffset,
        stackmapDataOffset,
        sizeOffset: constMethodSizeOffset,
        methodIdnumOffset
      },
      constantPool: {
        cacheOffset,
        instanceKlassOffset
      }
    };
  }
  var vtableOffsetParsers = {
    x64: parseX64VTableOffset
  };
  function _getJvmInstanceKlassSpec() {
    const { version: jvmVersion, createNewDefaultVtableIndices } = getApi2();
    const tryParse = vtableOffsetParsers[Process.arch];
    if (tryParse === void 0) {
      throw new Error(`Missing vtable offset parser for ${Process.arch}`);
    }
    const vtableOffset = parseInstructionsAt(createNewDefaultVtableIndices, tryParse, { limit: 32 });
    if (vtableOffset === null) {
      throw new Error("Unable to deduce vtable offset");
    }
    const oopMultiplier = jvmVersion >= 10 && jvmVersion <= 11 || jvmVersion >= 15 ? 17 : 18;
    const methodsOffset = vtableOffset - 7 * pointerSize6;
    const memberNamesOffset = vtableOffset - 17 * pointerSize6;
    const oopMapCacheOffset = vtableOffset - oopMultiplier * pointerSize6;
    return {
      vtableOffset,
      methodsOffset,
      memberNamesOffset,
      oopMapCacheOffset
    };
  }
  function parseX64VTableOffset(insn) {
    if (insn.mnemonic !== "mov") {
      return null;
    }
    const dst = insn.operands[0];
    if (dst.type !== "mem") {
      return null;
    }
    const { value: dstValue } = dst;
    if (dstValue.scale !== 1) {
      return null;
    }
    const { disp } = dstValue;
    if (disp < 256) {
      return null;
    }
    const defaultVtableIndicesOffset = disp;
    return defaultVtableIndicesOffset + 16;
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/api.js
  var getApi3 = getApi;
  try {
    getAndroidVersion();
  } catch (e) {
    getApi3 = getApi2;
  }
  var api_default = getApi3;

  // ServerProject/tools/node_modules/frida-java-bridge/lib/class-model.js
  var code2 = `#include <json-glib/json-glib.h>
#include <string.h>

#define kAccStatic 0x0008
#define kAccConstructor 0x00010000

typedef struct _Model Model;
typedef struct _EnumerateMethodsContext EnumerateMethodsContext;

typedef struct _JavaApi JavaApi;
typedef struct _JavaClassApi JavaClassApi;
typedef struct _JavaMethodApi JavaMethodApi;
typedef struct _JavaFieldApi JavaFieldApi;

typedef struct _JNIEnv JNIEnv;
typedef guint8 jboolean;
typedef gint32 jint;
typedef jint jsize;
typedef gpointer jobject;
typedef jobject jclass;
typedef jobject jstring;
typedef jobject jarray;
typedef jarray jobjectArray;
typedef gpointer jfieldID;
typedef gpointer jmethodID;

typedef struct _jvmtiEnv jvmtiEnv;
typedef enum
{
  JVMTI_ERROR_NONE = 0
} jvmtiError;

typedef struct _ArtApi ArtApi;
typedef guint32 ArtHeapReference;
typedef struct _ArtObject ArtObject;
typedef struct _ArtClass ArtClass;
typedef struct _ArtClassLinker ArtClassLinker;
typedef struct _ArtClassVisitor ArtClassVisitor;
typedef struct _ArtClassVisitorVTable ArtClassVisitorVTable;
typedef struct _ArtMethod ArtMethod;
typedef struct _ArtString ArtString;

typedef union _StdString StdString;
typedef struct _StdStringShort StdStringShort;
typedef struct _StdStringLong StdStringLong;

typedef void (* ArtVisitClassesFunc) (ArtClassLinker * linker, ArtClassVisitor * visitor);
typedef const char * (* ArtGetClassDescriptorFunc) (ArtClass * klass, StdString * storage);
typedef void (* ArtPrettyMethodFunc) (StdString * result, ArtMethod * method, jboolean with_signature);

struct _Model
{
  GHashTable * members;
};

struct _EnumerateMethodsContext
{
  GPatternSpec * class_query;
  GPatternSpec * method_query;
  jboolean include_signature;
  jboolean ignore_case;
  jboolean skip_system_classes;
  GHashTable * groups;
};

struct _JavaClassApi
{
  jmethodID get_declared_methods;
  jmethodID get_declared_fields;
};

struct _JavaMethodApi
{
  jmethodID get_name;
  jmethodID get_modifiers;
};

struct _JavaFieldApi
{
  jmethodID get_name;
  jmethodID get_modifiers;
};

struct _JavaApi
{
  jvmtiEnv * jvmti;
  JavaClassApi clazz;
  JavaMethodApi method;
  JavaFieldApi field;
};

struct _JNIEnv
{
  gpointer * functions;
};

struct _jvmtiEnv
{
  gpointer * functions;
};

struct _ArtApi
{
  gboolean available;

  guint class_offset_ifields;
  guint class_offset_methods;
  guint class_offset_sfields;
  guint class_offset_copied_methods_offset;

  guint method_size;
  guint method_offset_access_flags;

  guint field_size;
  guint field_offset_access_flags;

  guint alignment_padding;

  ArtClassLinker * linker;
  ArtVisitClassesFunc visit_classes;
  ArtGetClassDescriptorFunc get_class_descriptor;
  ArtPrettyMethodFunc pretty_method;

  void (* free) (gpointer mem);
};

struct _ArtObject
{
  ArtHeapReference klass;
  ArtHeapReference monitor;
};

struct _ArtClass
{
  ArtObject parent;

  ArtHeapReference class_loader;
};

struct _ArtClassVisitor
{
  ArtClassVisitorVTable * vtable;
  gpointer user_data;
};

struct _ArtClassVisitorVTable
{
  void (* reserved1) (ArtClassVisitor * self);
  void (* reserved2) (ArtClassVisitor * self);
  jboolean (* visit) (ArtClassVisitor * self, ArtClass * klass);
};

struct _ArtString
{
  ArtObject parent;

  gint32 count;
  guint32 hash_code;

  union
  {
    guint16 value[0];
    guint8 value_compressed[0];
  };
};

struct _StdStringShort
{
  guint8 size;
  gchar data[(3 * sizeof (gpointer)) - sizeof (guint8)];
};

struct _StdStringLong
{
  gsize capacity;
  gsize size;
  gchar * data;
};

union _StdString
{
  StdStringShort s;
  StdStringLong l;
};

static void model_add_method (Model * self, const gchar * name, jmethodID id, jint modifiers);
static void model_add_field (Model * self, const gchar * name, jfieldID id, jint modifiers);
static void model_free (Model * model);

static jboolean collect_matching_class_methods (ArtClassVisitor * self, ArtClass * klass);
static gchar * finalize_method_groups_to_json (GHashTable * groups);
static GPatternSpec * make_pattern_spec (const gchar * pattern, jboolean ignore_case);
static gchar * class_name_from_signature (const gchar * signature);
static gchar * format_method_signature (const gchar * name, const gchar * signature);
static void append_type (GString * output, const gchar ** type);

static gpointer read_art_array (gpointer object_base, guint field_offset, guint length_size, guint * length);

static void std_string_destroy (StdString * str);
static gchar * std_string_c_str (StdString * self);

extern GMutex lock;
extern GArray * models;
extern JavaApi java_api;
extern ArtApi art_api;

void
init (void)
{
  g_mutex_init (&lock);
  models = g_array_new (FALSE, FALSE, sizeof (Model *));
}

void
finalize (void)
{
  guint n, i;

  n = models->len;
  for (i = 0; i != n; i++)
  {
    Model * model = g_array_index (models, Model *, i);
    model_free (model);
  }

  g_array_unref (models);
  g_mutex_clear (&lock);
}

Model *
model_new (jclass class_handle,
           gpointer class_object,
           JNIEnv * env)
{
  Model * model;
  GHashTable * members;
  jvmtiEnv * jvmti = java_api.jvmti;
  gpointer * funcs = env->functions;
  jmethodID (* from_reflected_method) (JNIEnv *, jobject) = funcs[7];
  jfieldID (* from_reflected_field) (JNIEnv *, jobject) = funcs[8];
  jobject (* to_reflected_method) (JNIEnv *, jclass, jmethodID, jboolean) = funcs[9];
  jobject (* to_reflected_field) (JNIEnv *, jclass, jfieldID, jboolean) = funcs[12];
  void (* delete_local_ref) (JNIEnv *, jobject) = funcs[23];
  jobject (* call_object_method) (JNIEnv *, jobject, jmethodID, ...) = funcs[34];
  jint (* call_int_method) (JNIEnv *, jobject, jmethodID, ...) = funcs[49];
  const char * (* get_string_utf_chars) (JNIEnv *, jstring, jboolean *) = funcs[169];
  void (* release_string_utf_chars) (JNIEnv *, jstring, const char *) = funcs[170];
  jsize (* get_array_length) (JNIEnv *, jarray) = funcs[171];
  jobject (* get_object_array_element) (JNIEnv *, jobjectArray, jsize) = funcs[173];
  jsize n, i;

  model = g_new (Model, 1);

  members = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, g_free);
  model->members = members;

  if (jvmti != NULL)
  {
    gpointer * jf = jvmti->functions - 1;
    jvmtiError (* deallocate) (jvmtiEnv *, void * mem) = jf[47];
    jvmtiError (* get_class_methods) (jvmtiEnv *, jclass, jint *, jmethodID **) = jf[52];
    jvmtiError (* get_class_fields) (jvmtiEnv *, jclass, jint *, jfieldID **) = jf[53];
    jvmtiError (* get_field_name) (jvmtiEnv *, jclass, jfieldID, char **, char **, char **) = jf[60];
    jvmtiError (* get_field_modifiers) (jvmtiEnv *, jclass, jfieldID, jint *) = jf[62];
    jvmtiError (* get_method_name) (jvmtiEnv *, jmethodID, char **, char **, char **) = jf[64];
    jvmtiError (* get_method_modifiers) (jvmtiEnv *, jmethodID, jint *) = jf[66];
    jint method_count;
    jmethodID * methods;
    jint field_count;
    jfieldID * fields;
    char * name;
    jint modifiers;

    get_class_methods (jvmti, class_handle, &method_count, &methods);
    for (i = 0; i != method_count; i++)
    {
      jmethodID method = methods[i];

      get_method_name (jvmti, method, &name, NULL, NULL);
      get_method_modifiers (jvmti, method, &modifiers);

      model_add_method (model, name, method, modifiers);

      deallocate (jvmti, name);
    }
    deallocate (jvmti, methods);

    get_class_fields (jvmti, class_handle, &field_count, &fields);
    for (i = 0; i != field_count; i++)
    {
      jfieldID field = fields[i];

      get_field_name (jvmti, class_handle, field, &name, NULL, NULL);
      get_field_modifiers (jvmti, class_handle, field, &modifiers);

      model_add_field (model, name, field, modifiers);

      deallocate (jvmti, name);
    }
    deallocate (jvmti, fields);
  }
  else if (art_api.available)
  {
    gpointer elements;
    guint n, i;
    const guint field_arrays[] = {
      art_api.class_offset_ifields,
      art_api.class_offset_sfields
    };
    guint field_array_cursor;
    gboolean merged_fields = art_api.class_offset_sfields == 0;

    elements = read_art_array (class_object, art_api.class_offset_methods, sizeof (gsize), NULL);
    n = *(guint16 *) (class_object + art_api.class_offset_copied_methods_offset);
    for (i = 0; i != n; i++)
    {
      jmethodID id;
      guint32 access_flags;
      jboolean is_static;
      jobject method, name;
      const char * name_str;
      jint modifiers;

      id = elements + (i * art_api.method_size);

      access_flags = *(guint32 *) (id + art_api.method_offset_access_flags);
      if ((access_flags & kAccConstructor) != 0)
        continue;
      is_static = (access_flags & kAccStatic) != 0;
      method = to_reflected_method (env, class_handle, id, is_static);
      name = call_object_method (env, method, java_api.method.get_name);
      name_str = get_string_utf_chars (env, name, NULL);
      modifiers = access_flags & 0xffff;

      model_add_method (model, name_str, id, modifiers);

      release_string_utf_chars (env, name, name_str);
      delete_local_ref (env, name);
      delete_local_ref (env, method);
    }

    for (field_array_cursor = 0; field_array_cursor != G_N_ELEMENTS (field_arrays); field_array_cursor++)
    {
      jboolean is_static;

      if (field_arrays[field_array_cursor] == 0)
        continue;

      if (!merged_fields)
        is_static = field_array_cursor == 1;

      elements = read_art_array (class_object, field_arrays[field_array_cursor], sizeof (guint32), &n);
      for (i = 0; i != n; i++)
      {
        jfieldID id;
        guint32 access_flags;
        jobject field, name;
        const char * name_str;
        jint modifiers;

        id = elements + (i * art_api.field_size);

        access_flags = *(guint32 *) (id + art_api.field_offset_access_flags);
        if (merged_fields)
          is_static = (access_flags & kAccStatic) != 0;
        field = to_reflected_field (env, class_handle, id, is_static);
        name = call_object_method (env, field, java_api.field.get_name);
        name_str = get_string_utf_chars (env, name, NULL);
        modifiers = access_flags & 0xffff;

        model_add_field (model, name_str, id, modifiers);

        release_string_utf_chars (env, name, name_str);
        delete_local_ref (env, name);
        delete_local_ref (env, field);
      }
    }
  }
  else
  {
    jobject elements;

    elements = call_object_method (env, class_handle, java_api.clazz.get_declared_methods);
    n = get_array_length (env, elements);
    for (i = 0; i != n; i++)
    {
      jobject method, name;
      const char * name_str;
      jmethodID id;
      jint modifiers;

      method = get_object_array_element (env, elements, i);
      name = call_object_method (env, method, java_api.method.get_name);
      name_str = get_string_utf_chars (env, name, NULL);
      id = from_reflected_method (env, method);
      modifiers = call_int_method (env, method, java_api.method.get_modifiers);

      model_add_method (model, name_str, id, modifiers);

      release_string_utf_chars (env, name, name_str);
      delete_local_ref (env, name);
      delete_local_ref (env, method);
    }
    delete_local_ref (env, elements);

    elements = call_object_method (env, class_handle, java_api.clazz.get_declared_fields);
    n = get_array_length (env, elements);
    for (i = 0; i != n; i++)
    {
      jobject field, name;
      const char * name_str;
      jfieldID id;
      jint modifiers;

      field = get_object_array_element (env, elements, i);
      name = call_object_method (env, field, java_api.field.get_name);
      name_str = get_string_utf_chars (env, name, NULL);
      id = from_reflected_field (env, field);
      modifiers = call_int_method (env, field, java_api.field.get_modifiers);

      model_add_field (model, name_str, id, modifiers);

      release_string_utf_chars (env, name, name_str);
      delete_local_ref (env, name);
      delete_local_ref (env, field);
    }
    delete_local_ref (env, elements);
  }

  g_mutex_lock (&lock);
  g_array_append_val (models, model);
  g_mutex_unlock (&lock);

  return model;
}

static void
model_add_method (Model * self,
                  const gchar * name,
                  jmethodID id,
                  jint modifiers)
{
  GHashTable * members = self->members;
  gchar * key, type;
  const gchar * value;

  if (name[0] == '$')
    key = g_strdup_printf ("_%s", name);
  else
    key = g_strdup (name);

  type = (modifiers & kAccStatic) != 0 ? 's' : 'i';

  value = g_hash_table_lookup (members, key);
  if (value == NULL)
    g_hash_table_insert (members, key, g_strdup_printf ("m:%c0x%zx", type, id));
  else
    g_hash_table_insert (members, key, g_strdup_printf ("%s:%c0x%zx", value, type, id));
}

static void
model_add_field (Model * self,
                 const gchar * name,
                 jfieldID id,
                 jint modifiers)
{
  GHashTable * members = self->members;
  gchar * key, type;

  if (name[0] == '$')
    key = g_strdup_printf ("_%s", name);
  else
    key = g_strdup (name);
  while (g_hash_table_contains (members, key))
  {
    gchar * new_key = g_strdup_printf ("_%s", key);
    g_free (key);
    key = new_key;
  }

  type = (modifiers & kAccStatic) != 0 ? 's' : 'i';

  g_hash_table_insert (members, key, g_strdup_printf ("f:%c0x%zx", type, id));
}

static void
model_free (Model * model)
{
  g_hash_table_unref (model->members);

  g_free (model);
}

gboolean
model_has (Model * self,
           const gchar * member)
{
  return g_hash_table_contains (self->members, member);
}

const gchar *
model_find (Model * self,
            const gchar * member)
{
  return g_hash_table_lookup (self->members, member);
}

gchar *
model_list (Model * self)
{
  GString * result;
  GHashTableIter iter;
  guint i;
  const gchar * name;

  result = g_string_sized_new (128);

  g_string_append_c (result, '[');

  g_hash_table_iter_init (&iter, self->members);
  for (i = 0; g_hash_table_iter_next (&iter, (gpointer *) &name, NULL); i++)
  {
    if (i > 0)
      g_string_append_c (result, ',');

    g_string_append_c (result, '"');
    g_string_append (result, name);
    g_string_append_c (result, '"');
  }

  g_string_append_c (result, ']');

  return g_string_free (result, FALSE);
}

gchar *
enumerate_methods_art (const gchar * class_query,
                       const gchar * method_query,
                       jboolean include_signature,
                       jboolean ignore_case,
                       jboolean skip_system_classes)
{
  gchar * result;
  EnumerateMethodsContext ctx;
  ArtClassVisitor visitor;
  ArtClassVisitorVTable visitor_vtable = { NULL, };

  ctx.class_query = make_pattern_spec (class_query, ignore_case);
  ctx.method_query = make_pattern_spec (method_query, ignore_case);
  ctx.include_signature = include_signature;
  ctx.ignore_case = ignore_case;
  ctx.skip_system_classes = skip_system_classes;
  ctx.groups = g_hash_table_new_full (NULL, NULL, NULL, NULL);

  visitor.vtable = &visitor_vtable;
  visitor.user_data = &ctx;

  visitor_vtable.visit = collect_matching_class_methods;

  art_api.visit_classes (art_api.linker, &visitor);

  result = finalize_method_groups_to_json (ctx.groups);

  g_hash_table_unref (ctx.groups);
  g_pattern_spec_free (ctx.method_query);
  g_pattern_spec_free (ctx.class_query);

  return result;
}

static jboolean
collect_matching_class_methods (ArtClassVisitor * self,
                                ArtClass * klass)
{
  EnumerateMethodsContext * ctx = self->user_data;
  const char * descriptor;
  StdString descriptor_storage = { 0, };
  gchar * class_name = NULL;
  gchar * class_name_copy = NULL;
  const gchar * normalized_class_name;
  JsonBuilder * group;
  size_t class_name_length;
  GHashTable * seen_method_names;
  gpointer elements;
  guint n, i;

  if (ctx->skip_system_classes && klass->class_loader == 0)
    goto skip_class;

  descriptor = art_api.get_class_descriptor (klass, &descriptor_storage);
  if (descriptor[0] != 'L')
    goto skip_class;

  class_name = class_name_from_signature (descriptor);

  if (ctx->ignore_case)
  {
    class_name_copy = g_utf8_strdown (class_name, -1);
    normalized_class_name = class_name_copy;
  }
  else
  {
    normalized_class_name = class_name;
  }

  if (!g_pattern_match_string (ctx->class_query, normalized_class_name))
    goto skip_class;

  group = NULL;
  class_name_length = strlen (class_name);
  seen_method_names = ctx->include_signature ? NULL : g_hash_table_new_full (g_str_hash, g_str_equal, g_free, NULL);

  elements = read_art_array (klass, art_api.class_offset_methods, sizeof (gsize), NULL);
  n = *(guint16 *) ((gpointer) klass + art_api.class_offset_copied_methods_offset);
  for (i = 0; i != n; i++)
  {
    ArtMethod * method;
    guint32 access_flags;
    jboolean is_constructor;
    StdString method_name = { 0, };
    const gchar * bare_method_name;
    gchar * bare_method_name_copy = NULL;
    const gchar * normalized_method_name;
    gchar * normalized_method_name_copy = NULL;

    method = elements + (i * art_api.method_size);

    access_flags = *(guint32 *) ((gpointer) method + art_api.method_offset_access_flags);
    is_constructor = (access_flags & kAccConstructor) != 0;

    art_api.pretty_method (&method_name, method, ctx->include_signature);
    bare_method_name = std_string_c_str (&method_name);
    if (ctx->include_signature)
    {
      const gchar * return_type_end, * name_begin;
      GString * name;

      return_type_end = strchr (bare_method_name, ' ');
      name_begin = return_type_end + 1 + class_name_length + 1;
      if (is_constructor && g_str_has_prefix (name_begin, "<clinit>"))
        goto skip_method;

      name = g_string_sized_new (64);

      if (is_constructor)
      {
        g_string_append (name, "$init");
        g_string_append (name, strchr (name_begin, '>') + 1);
      }
      else
      {
        g_string_append (name, name_begin);
      }
      g_string_append (name, ": ");
      g_string_append_len (name, bare_method_name, return_type_end - bare_method_name);

      bare_method_name_copy = g_string_free (name, FALSE);
      bare_method_name = bare_method_name_copy;
    }
    else
    {
      const gchar * name_begin;

      name_begin = bare_method_name + class_name_length + 1;
      if (is_constructor && strcmp (name_begin, "<clinit>") == 0)
        goto skip_method;

      if (is_constructor)
        bare_method_name = "$init";
      else
        bare_method_name += class_name_length + 1;
    }

    if (seen_method_names != NULL && g_hash_table_contains (seen_method_names, bare_method_name))
      goto skip_method;

    if (ctx->ignore_case)
    {
      normalized_method_name_copy = g_utf8_strdown (bare_method_name, -1);
      normalized_method_name = normalized_method_name_copy;
    }
    else
    {
      normalized_method_name = bare_method_name;
    }

    if (!g_pattern_match_string (ctx->method_query, normalized_method_name))
      goto skip_method;

    if (group == NULL)
    {
      group = g_hash_table_lookup (ctx->groups, GUINT_TO_POINTER (klass->class_loader));
      if (group == NULL)
      {
        group = json_builder_new_immutable ();
        g_hash_table_insert (ctx->groups, GUINT_TO_POINTER (klass->class_loader), group);

        json_builder_begin_object (group);

        json_builder_set_member_name (group, "loader");
        json_builder_add_int_value (group, klass->class_loader);

        json_builder_set_member_name (group, "classes");
        json_builder_begin_array (group);
      }

      json_builder_begin_object (group);

      json_builder_set_member_name (group, "name");
      json_builder_add_string_value (group, class_name);

      json_builder_set_member_name (group, "methods");
      json_builder_begin_array (group);
    }

    json_builder_add_string_value (group, bare_method_name);

    if (seen_method_names != NULL)
      g_hash_table_add (seen_method_names, g_strdup (bare_method_name));

skip_method:
    g_free (normalized_method_name_copy);
    g_free (bare_method_name_copy);
    std_string_destroy (&method_name);
  }

  if (seen_method_names != NULL)
    g_hash_table_unref (seen_method_names);

  if (group == NULL)
    goto skip_class;

  json_builder_end_array (group);
  json_builder_end_object (group);

skip_class:
  g_free (class_name_copy);
  g_free (class_name);
  std_string_destroy (&descriptor_storage);

  return TRUE;
}

gchar *
enumerate_methods_jvm (const gchar * class_query,
                       const gchar * method_query,
                       jboolean include_signature,
                       jboolean ignore_case,
                       jboolean skip_system_classes,
                       JNIEnv * env)
{
  gchar * result;
  GPatternSpec * class_pattern, * method_pattern;
  GHashTable * groups;
  gpointer * ef = env->functions;
  jobject (* new_global_ref) (JNIEnv *, jobject) = ef[21];
  void (* delete_local_ref) (JNIEnv *, jobject) = ef[23];
  jboolean (* is_same_object) (JNIEnv *, jobject, jobject) = ef[24];
  jvmtiEnv * jvmti = java_api.jvmti;
  gpointer * jf = jvmti->functions - 1;
  jvmtiError (* deallocate) (jvmtiEnv *, void * mem) = jf[47];
  jvmtiError (* get_class_signature) (jvmtiEnv *, jclass, char **, char **) = jf[48];
  jvmtiError (* get_class_methods) (jvmtiEnv *, jclass, jint *, jmethodID **) = jf[52];
  jvmtiError (* get_class_loader) (jvmtiEnv *, jclass, jobject *) = jf[57];
  jvmtiError (* get_method_name) (jvmtiEnv *, jmethodID, char **, char **, char **) = jf[64];
  jvmtiError (* get_loaded_classes) (jvmtiEnv *, jint *, jclass **) = jf[78];
  jint class_count, class_index;
  jclass * classes;

  class_pattern = make_pattern_spec (class_query, ignore_case);
  method_pattern = make_pattern_spec (method_query, ignore_case);
  groups = g_hash_table_new_full (NULL, NULL, NULL, NULL);

  if (get_loaded_classes (jvmti, &class_count, &classes) != JVMTI_ERROR_NONE)
    goto emit_results;

  for (class_index = 0; class_index != class_count; class_index++)
  {
    jclass klass = classes[class_index];
    jobject loader = NULL;
    gboolean have_loader = FALSE;
    char * signature = NULL;
    gchar * class_name = NULL;
    gchar * class_name_copy = NULL;
    const gchar * normalized_class_name;
    jint method_count, method_index;
    jmethodID * methods = NULL;
    JsonBuilder * group = NULL;
    GHashTable * seen_method_names = NULL;

    if (skip_system_classes)
    {
      if (get_class_loader (jvmti, klass, &loader) != JVMTI_ERROR_NONE)
        goto skip_class;
      have_loader = TRUE;

      if (loader == NULL)
        goto skip_class;
    }

    if (get_class_signature (jvmti, klass, &signature, NULL) != JVMTI_ERROR_NONE)
      goto skip_class;

    class_name = class_name_from_signature (signature);

    if (ignore_case)
    {
      class_name_copy = g_utf8_strdown (class_name, -1);
      normalized_class_name = class_name_copy;
    }
    else
    {
      normalized_class_name = class_name;
    }

    if (!g_pattern_match_string (class_pattern, normalized_class_name))
      goto skip_class;

    if (get_class_methods (jvmti, klass, &method_count, &methods) != JVMTI_ERROR_NONE)
      goto skip_class;

    if (!include_signature)
      seen_method_names = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, NULL);

    for (method_index = 0; method_index != method_count; method_index++)
    {
      jmethodID method = methods[method_index];
      const gchar * method_name;
      char * method_name_value = NULL;
      char * method_signature_value = NULL;
      gchar * method_name_copy = NULL;
      const gchar * normalized_method_name;
      gchar * normalized_method_name_copy = NULL;

      if (get_method_name (jvmti, method, &method_name_value, include_signature ? &method_signature_value : NULL, NULL) != JVMTI_ERROR_NONE)
        goto skip_method;
      method_name = method_name_value;

      if (method_name[0] == '<')
      {
        if (strcmp (method_name, "<init>") == 0)
          method_name = "$init";
        else if (strcmp (method_name, "<clinit>") == 0)
          goto skip_method;
      }

      if (include_signature)
      {
        method_name_copy = format_method_signature (method_name, method_signature_value);
        method_name = method_name_copy;
      }

      if (seen_method_names != NULL && g_hash_table_contains (seen_method_names, method_name))
        goto skip_method;

      if (ignore_case)
      {
        normalized_method_name_copy = g_utf8_strdown (method_name, -1);
        normalized_method_name = normalized_method_name_copy;
      }
      else
      {
        normalized_method_name = method_name;
      }

      if (!g_pattern_match_string (method_pattern, normalized_method_name))
        goto skip_method;

      if (group == NULL)
      {
        if (!have_loader && get_class_loader (jvmti, klass, &loader) != JVMTI_ERROR_NONE)
          goto skip_method;

        if (loader == NULL)
        {
          group = g_hash_table_lookup (groups, NULL);
        }
        else
        {
          GHashTableIter iter;
          jobject cur_loader;
          JsonBuilder * cur_group;

          g_hash_table_iter_init (&iter, groups);
          while (g_hash_table_iter_next (&iter, (gpointer *) &cur_loader, (gpointer *) &cur_group))
          {
            if (cur_loader != NULL && is_same_object (env, cur_loader, loader))
            {
              group = cur_group;
              break;
            }
          }
        }

        if (group == NULL)
        {
          jobject l;
          gchar * str;

          l = (loader != NULL) ? new_global_ref (env, loader) : NULL;

          group = json_builder_new_immutable ();
          g_hash_table_insert (groups, l, group);

          json_builder_begin_object (group);

          json_builder_set_member_name (group, "loader");
          str = g_strdup_printf ("0x%" G_GSIZE_MODIFIER "x", GPOINTER_TO_SIZE (l));
          json_builder_add_string_value (group, str);
          g_free (str);

          json_builder_set_member_name (group, "classes");
          json_builder_begin_array (group);
        }

        json_builder_begin_object (group);

        json_builder_set_member_name (group, "name");
        json_builder_add_string_value (group, class_name);

        json_builder_set_member_name (group, "methods");
        json_builder_begin_array (group);
      }

      json_builder_add_string_value (group, method_name);

      if (seen_method_names != NULL)
        g_hash_table_add (seen_method_names, g_strdup (method_name));

skip_method:
      g_free (normalized_method_name_copy);
      g_free (method_name_copy);
      deallocate (jvmti, method_signature_value);
      deallocate (jvmti, method_name_value);
    }

skip_class:
    if (group != NULL)
    {
      json_builder_end_array (group);
      json_builder_end_object (group);
    }

    if (seen_method_names != NULL)
      g_hash_table_unref (seen_method_names);

    deallocate (jvmti, methods);

    g_free (class_name_copy);
    g_free (class_name);
    deallocate (jvmti, signature);

    if (loader != NULL)
      delete_local_ref (env, loader);

    delete_local_ref (env, klass);
  }

  deallocate (jvmti, classes);

emit_results:
  result = finalize_method_groups_to_json (groups);

  g_hash_table_unref (groups);
  g_pattern_spec_free (method_pattern);
  g_pattern_spec_free (class_pattern);

  return result;
}

static gchar *
finalize_method_groups_to_json (GHashTable * groups)
{
  GString * result;
  GHashTableIter iter;
  guint i;
  JsonBuilder * group;

  result = g_string_sized_new (1024);

  g_string_append_c (result, '[');

  g_hash_table_iter_init (&iter, groups);
  for (i = 0; g_hash_table_iter_next (&iter, NULL, (gpointer *) &group); i++)
  {
    JsonNode * root;
    gchar * json;

    if (i > 0)
      g_string_append_c (result, ',');

    json_builder_end_array (group);
    json_builder_end_object (group);

    root = json_builder_get_root (group);
    json = json_to_string (root, FALSE);
    g_string_append (result, json);
    g_free (json);
    json_node_unref (root);

    g_object_unref (group);
  }

  g_string_append_c (result, ']');

  return g_string_free (result, FALSE);
}

static GPatternSpec *
make_pattern_spec (const gchar * pattern,
                   jboolean ignore_case)
{
  GPatternSpec * spec;

  if (ignore_case)
  {
    gchar * str = g_utf8_strdown (pattern, -1);
    spec = g_pattern_spec_new (str);
    g_free (str);
  }
  else
  {
    spec = g_pattern_spec_new (pattern);
  }

  return spec;
}

static gchar *
class_name_from_signature (const gchar * descriptor)
{
  gchar * result, * c;

  result = g_strdup (descriptor + 1);

  for (c = result; *c != '\\0'; c++)
  {
    if (*c == '/')
      *c = '.';
  }

  c[-1] = '\\0';

  return result;
}

static gchar *
format_method_signature (const gchar * name,
                         const gchar * signature)
{
  GString * sig;
  const gchar * cursor;
  gint arg_index;

  sig = g_string_sized_new (128);

  g_string_append (sig, name);

  cursor = signature;
  arg_index = -1;
  while (TRUE)
  {
    const gchar c = *cursor;

    if (c == '(')
    {
      g_string_append_c (sig, c);
      cursor++;
      arg_index = 0;
    }
    else if (c == ')')
    {
      g_string_append_c (sig, c);
      cursor++;
      break;
    }
    else
    {
      if (arg_index >= 1)
        g_string_append (sig, ", ");

      append_type (sig, &cursor);

      if (arg_index != -1)
        arg_index++;
    }
  }

  g_string_append (sig, ": ");
  append_type (sig, &cursor);

  return g_string_free (sig, FALSE);
}

static void
append_type (GString * output,
             const gchar ** type)
{
  const gchar * cursor = *type;

  switch (*cursor)
  {
    case 'Z':
      g_string_append (output, "boolean");
      cursor++;
      break;
    case 'B':
      g_string_append (output, "byte");
      cursor++;
      break;
    case 'C':
      g_string_append (output, "char");
      cursor++;
      break;
    case 'S':
      g_string_append (output, "short");
      cursor++;
      break;
    case 'I':
      g_string_append (output, "int");
      cursor++;
      break;
    case 'J':
      g_string_append (output, "long");
      cursor++;
      break;
    case 'F':
      g_string_append (output, "float");
      cursor++;
      break;
    case 'D':
      g_string_append (output, "double");
      cursor++;
      break;
    case 'V':
      g_string_append (output, "void");
      cursor++;
      break;
    case 'L':
    {
      gchar ch;

      cursor++;
      for (; (ch = *cursor) != ';'; cursor++)
      {
        g_string_append_c (output, (ch != '/') ? ch : '.');
      }
      cursor++;

      break;
    }
    case '[':
      *type = cursor + 1;
      append_type (output, type);
      g_string_append (output, "[]");
      return;
    default:
      g_string_append (output, "BUG");
      cursor++;
  }

  *type = cursor;
}

void
dealloc (gpointer mem)
{
  g_free (mem);
}

static gpointer
read_art_array (gpointer object_base,
                guint field_offset,
                guint length_size,
                guint * length)
{
  gpointer result, header;
  guint n;

  header = GSIZE_TO_POINTER (*(guint64 *) (object_base + field_offset));
  if (header != NULL)
  {
    result = header + length_size;
    if (length_size == sizeof (guint32))
      n = *(guint32 *) header;
    else
      n = *(guint64 *) header;
  }
  else
  {
    result = NULL;
    n = 0;
  }

  if (length != NULL)
    *length = n;

  return result;
}

static void
std_string_destroy (StdString * str)
{
  if ((str->l.capacity & 1) != 0)
    art_api.free (str->l.data);
}

static gchar *
std_string_c_str (StdString * self)
{
  if ((self->l.capacity & 1) != 0)
    return self->l.data;

  return self->s.data;
}
`;
  var methodQueryPattern = /(.+)!([^/]+)\/?([isu]+)?/;
  var cm = null;
  var unwrap = null;
  var Model = class _Model {
    static build(handle, env) {
      ensureInitialized(env);
      return unwrap(handle, env, (object) => {
        return new _Model(cm.new(handle, object, env));
      });
    }
    static enumerateMethods(query, api2, env) {
      ensureInitialized(env);
      const params = query.match(methodQueryPattern);
      if (params === null) {
        throw new Error("Invalid query; format is: class!method -- see documentation of Java.enumerateMethods(query) for details");
      }
      const classQuery = Memory.allocUtf8String(params[1]);
      const methodQuery = Memory.allocUtf8String(params[2]);
      let includeSignature = false;
      let ignoreCase = false;
      let skipSystemClasses = false;
      const modifiers = params[3];
      if (modifiers !== void 0) {
        includeSignature = modifiers.indexOf("s") !== -1;
        ignoreCase = modifiers.indexOf("i") !== -1;
        skipSystemClasses = modifiers.indexOf("u") !== -1;
      }
      let result;
      if (api2.jvmti !== null) {
        const json = cm.enumerateMethodsJvm(
          classQuery,
          methodQuery,
          boolToNative(includeSignature),
          boolToNative(ignoreCase),
          boolToNative(skipSystemClasses),
          env
        );
        try {
          result = JSON.parse(json.readUtf8String()).map((group) => {
            const loaderRef = ptr(group.loader);
            group.loader = !loaderRef.isNull() ? loaderRef : null;
            return group;
          });
        } finally {
          cm.dealloc(json);
        }
      } else {
        withRunnableArtThread(env.vm, env, (thread) => {
          const json = cm.enumerateMethodsArt(
            classQuery,
            methodQuery,
            boolToNative(includeSignature),
            boolToNative(ignoreCase),
            boolToNative(skipSystemClasses)
          );
          try {
            const addGlobalReference = api2["art::JavaVMExt::AddGlobalRef"];
            const { vm: vmHandle } = api2;
            result = JSON.parse(json.readUtf8String()).map((group) => {
              const loaderObj = group.loader;
              group.loader = loaderObj !== 0 ? addGlobalReference(vmHandle, thread, ptr(loaderObj)) : null;
              return group;
            });
          } finally {
            cm.dealloc(json);
          }
        });
      }
      return result;
    }
    constructor(handle) {
      this.handle = handle;
    }
    has(member) {
      return cm.has(this.handle, Memory.allocUtf8String(member)) !== 0;
    }
    find(member) {
      return cm.find(this.handle, Memory.allocUtf8String(member)).readUtf8String();
    }
    list() {
      const str = cm.list(this.handle);
      try {
        return JSON.parse(str.readUtf8String());
      } finally {
        cm.dealloc(str);
      }
    }
  };
  function ensureInitialized(env) {
    if (cm === null) {
      cm = compileModule(env);
      unwrap = makeHandleUnwrapper(cm, env.vm);
    }
  }
  function compileModule(env) {
    const api2 = api_default();
    const { jvmti = null } = api2;
    const { pointerSize: pointerSize9 } = Process;
    const lockSize = 8;
    const modelsSize = pointerSize9;
    const javaApiSize = 7 * pointerSize9;
    const artApiSize = 10 * 4 + 5 * pointerSize9;
    const dataSize = lockSize + modelsSize + javaApiSize + artApiSize;
    const data = Memory.alloc(dataSize);
    const lock = data;
    const models = lock.add(lockSize);
    const javaApi = models.add(modelsSize);
    const { getDeclaredMethods, getDeclaredFields } = env.javaLangClass();
    const method = env.javaLangReflectMethod();
    const field = env.javaLangReflectField();
    let j = javaApi;
    [
      jvmti !== null ? jvmti : NULL,
      getDeclaredMethods,
      getDeclaredFields,
      method.getName,
      method.getModifiers,
      field.getName,
      field.getModifiers
    ].forEach((value) => {
      j = j.writePointer(value).add(pointerSize9);
    });
    const artApi = javaApi.add(javaApiSize);
    const { vm: vm3 } = env;
    if (api2.flavor === "art") {
      let artClassOffsets;
      if (jvmti !== null) {
        artClassOffsets = [0, 0, 0, 0];
      } else {
        const c = getArtClassSpec(vm3).offset;
        artClassOffsets = [c.ifields, c.methods, c.sfields, c.copiedMethodsOffset];
      }
      const m = getArtMethodSpec(vm3);
      const f = getArtFieldSpec(vm3);
      let s = artApi;
      [
        1,
        ...artClassOffsets,
        m.size,
        m.offset.accessFlags,
        f.size,
        f.offset.accessFlags,
        4294967295
      ].forEach((value) => {
        s = s.writeUInt(value).add(4);
      });
      [
        api2.artClassLinker.address,
        api2["art::ClassLinker::VisitClasses"],
        api2["art::mirror::Class::GetDescriptor"],
        api2["art::ArtMethod::PrettyMethod"],
        Process.getModuleByName("libc.so").getExportByName("free")
      ].forEach((value, i) => {
        if (value === void 0) {
          value = NULL;
        }
        s = s.writePointer(value).add(pointerSize9);
      });
    }
    const cm2 = new CModule(code2, {
      lock,
      models,
      java_api: javaApi,
      art_api: artApi
    });
    const reentrantOptions = { exceptions: "propagate" };
    const fastOptions = { exceptions: "propagate", scheduling: "exclusive" };
    return {
      handle: cm2,
      new: new NativeFunction(cm2.model_new, "pointer", ["pointer", "pointer", "pointer"], reentrantOptions),
      has: new NativeFunction(cm2.model_has, "bool", ["pointer", "pointer"], fastOptions),
      find: new NativeFunction(cm2.model_find, "pointer", ["pointer", "pointer"], fastOptions),
      list: new NativeFunction(cm2.model_list, "pointer", ["pointer"], fastOptions),
      enumerateMethodsArt: new NativeFunction(
        cm2.enumerate_methods_art,
        "pointer",
        ["pointer", "pointer", "bool", "bool", "bool"],
        reentrantOptions
      ),
      enumerateMethodsJvm: new NativeFunction(cm2.enumerate_methods_jvm, "pointer", [
        "pointer",
        "pointer",
        "bool",
        "bool",
        "bool",
        "pointer"
      ], reentrantOptions),
      dealloc: new NativeFunction(cm2.dealloc, "void", ["pointer"], fastOptions)
    };
  }
  function makeHandleUnwrapper(cm2, vm3) {
    const api2 = api_default();
    if (api2.flavor !== "art") {
      return nullUnwrap;
    }
    const decodeGlobal = api2["art::JavaVMExt::DecodeGlobal"];
    return function(handle, env, fn) {
      let result;
      withRunnableArtThread(vm3, env, (thread) => {
        const object = decodeGlobal(vm3, thread, handle);
        result = fn(object);
      });
      return result;
    };
  }
  function nullUnwrap(handle, env, fn) {
    return fn(NULL);
  }
  function boolToNative(val) {
    return val ? 1 : 0;
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/lru.js
  var LRU = class {
    constructor(capacity, destroy) {
      this.items = /* @__PURE__ */ new Map();
      this.capacity = capacity;
      this.destroy = destroy;
    }
    dispose(env) {
      const { items, destroy } = this;
      items.forEach((val) => {
        destroy(val, env);
      });
      items.clear();
    }
    get(key) {
      const { items } = this;
      const item = items.get(key);
      if (item !== void 0) {
        items.delete(key);
        items.set(key, item);
      }
      return item;
    }
    set(key, val, env) {
      const { items } = this;
      const existingVal = items.get(key);
      if (existingVal !== void 0) {
        items.delete(key);
        this.destroy(existingVal, env);
      } else if (items.size === this.capacity) {
        const oldestKey = items.keys().next().value;
        const oldestVal = items.get(oldestKey);
        items.delete(oldestKey);
        this.destroy(oldestVal, env);
      }
      items.set(key, val);
    }
  };

  // ServerProject/tools/node_modules/frida-java-bridge/lib/mkdex.js
  var kAccPublic2 = 1;
  var kAccNative2 = 256;
  var kAccConstructor = 65536;
  var kEndianTag = 305419896;
  var kClassDefSize = 32;
  var kProtoIdSize = 12;
  var kFieldIdSize = 8;
  var kMethodIdSize = 8;
  var kTypeIdSize = 4;
  var kStringIdSize = 4;
  var kMapItemSize = 12;
  var TYPE_HEADER_ITEM = 0;
  var TYPE_STRING_ID_ITEM = 1;
  var TYPE_TYPE_ID_ITEM = 2;
  var TYPE_PROTO_ID_ITEM = 3;
  var TYPE_FIELD_ID_ITEM = 4;
  var TYPE_METHOD_ID_ITEM = 5;
  var TYPE_CLASS_DEF_ITEM = 6;
  var TYPE_MAP_LIST = 4096;
  var TYPE_TYPE_LIST = 4097;
  var TYPE_ANNOTATION_SET_ITEM = 4099;
  var TYPE_CLASS_DATA_ITEM = 8192;
  var TYPE_CODE_ITEM = 8193;
  var TYPE_STRING_DATA_ITEM = 8194;
  var TYPE_DEBUG_INFO_ITEM = 8195;
  var TYPE_ANNOTATION_ITEM = 8196;
  var TYPE_ANNOTATIONS_DIRECTORY_ITEM = 8198;
  var VALUE_TYPE = 24;
  var VALUE_ARRAY = 28;
  var VISIBILITY_SYSTEM = 2;
  var kDefaultConstructorSize = 24;
  var kDefaultConstructorDebugInfo = Buffer2.from([3, 0, 7, 14, 0]);
  var kDalvikAnnotationTypeThrows = "Ldalvik/annotation/Throws;";
  var kNullTerminator = Buffer2.from([0]);
  function mkdex(spec) {
    const builder = new DexBuilder();
    const fullSpec = Object.assign({}, spec);
    builder.addClass(fullSpec);
    return builder.build();
  }
  var DexBuilder = class {
    constructor() {
      this.classes = [];
    }
    addClass(spec) {
      this.classes.push(spec);
    }
    build() {
      const model = computeModel(this.classes);
      const {
        classes,
        interfaces,
        fields,
        methods,
        protos,
        parameters,
        annotationDirectories,
        annotationSets,
        throwsAnnotations,
        types,
        strings
      } = model;
      let offset = 0;
      const headerOffset = 0;
      const checksumOffset = 8;
      const signatureOffset = 12;
      const signatureSize = 20;
      const headerSize = 112;
      offset += headerSize;
      const stringIdsOffset = offset;
      const stringIdsSize = strings.length * kStringIdSize;
      offset += stringIdsSize;
      const typeIdsOffset = offset;
      const typeIdsSize = types.length * kTypeIdSize;
      offset += typeIdsSize;
      const protoIdsOffset = offset;
      const protoIdsSize = protos.length * kProtoIdSize;
      offset += protoIdsSize;
      const fieldIdsOffset = offset;
      const fieldIdsSize = fields.length * kFieldIdSize;
      offset += fieldIdsSize;
      const methodIdsOffset = offset;
      const methodIdsSize = methods.length * kMethodIdSize;
      offset += methodIdsSize;
      const classDefsOffset = offset;
      const classDefsSize = classes.length * kClassDefSize;
      offset += classDefsSize;
      const dataOffset = offset;
      const annotationSetOffsets = annotationSets.map((set) => {
        const setOffset = offset;
        set.offset = setOffset;
        offset += 4 + set.items.length * 4;
        return setOffset;
      });
      const javaCodeItems = classes.reduce((result, klass) => {
        const constructorMethods = klass.classData.constructorMethods;
        constructorMethods.forEach((method) => {
          const [, accessFlags, superConstructor] = method;
          if ((accessFlags & kAccNative2) === 0 && superConstructor >= 0) {
            method.push(offset);
            result.push({ offset, superConstructor });
            offset += kDefaultConstructorSize;
          }
        });
        return result;
      }, []);
      annotationDirectories.forEach((dir) => {
        dir.offset = offset;
        offset += 16 + dir.methods.length * 8;
      });
      const interfaceOffsets = interfaces.map((iface) => {
        offset = align(offset, 4);
        const ifaceOffset = offset;
        iface.offset = ifaceOffset;
        offset += 4 + 2 * iface.types.length;
        return ifaceOffset;
      });
      const parameterOffsets = parameters.map((param) => {
        offset = align(offset, 4);
        const paramOffset = offset;
        param.offset = paramOffset;
        offset += 4 + 2 * param.types.length;
        return paramOffset;
      });
      const stringChunks = [];
      const stringOffsets = strings.map((str) => {
        const strOffset = offset;
        const header = Buffer2.from(createUleb128(str.length));
        const data = Buffer2.from(str, "utf8");
        const chunk = Buffer2.concat([header, data, kNullTerminator]);
        stringChunks.push(chunk);
        offset += chunk.length;
        return strOffset;
      });
      const debugInfoOffsets = javaCodeItems.map((codeItem) => {
        const debugOffset = offset;
        offset += kDefaultConstructorDebugInfo.length;
        return debugOffset;
      });
      const throwsAnnotationBlobs = throwsAnnotations.map((annotation) => {
        const blob = makeThrowsAnnotation(annotation);
        annotation.offset = offset;
        offset += blob.length;
        return blob;
      });
      const classDataBlobs = classes.map((klass, index) => {
        klass.classData.offset = offset;
        const blob = makeClassData(klass);
        offset += blob.length;
        return blob;
      });
      const linkSize = 0;
      const linkOffset = 0;
      offset = align(offset, 4);
      const mapOffset = offset;
      const typeListLength = interfaces.length + parameters.length;
      const mapNumItems = 4 + (fields.length > 0 ? 1 : 0) + 2 + annotationSets.length + javaCodeItems.length + annotationDirectories.length + (typeListLength > 0 ? 1 : 0) + 1 + debugInfoOffsets.length + throwsAnnotations.length + classes.length + 1;
      const mapSize = 4 + mapNumItems * kMapItemSize;
      offset += mapSize;
      const dataSize = offset - dataOffset;
      const fileSize = offset;
      const dex = Buffer2.alloc(fileSize);
      dex.write("dex\n035");
      dex.writeUInt32LE(fileSize, 32);
      dex.writeUInt32LE(headerSize, 36);
      dex.writeUInt32LE(kEndianTag, 40);
      dex.writeUInt32LE(linkSize, 44);
      dex.writeUInt32LE(linkOffset, 48);
      dex.writeUInt32LE(mapOffset, 52);
      dex.writeUInt32LE(strings.length, 56);
      dex.writeUInt32LE(stringIdsOffset, 60);
      dex.writeUInt32LE(types.length, 64);
      dex.writeUInt32LE(typeIdsOffset, 68);
      dex.writeUInt32LE(protos.length, 72);
      dex.writeUInt32LE(protoIdsOffset, 76);
      dex.writeUInt32LE(fields.length, 80);
      dex.writeUInt32LE(fields.length > 0 ? fieldIdsOffset : 0, 84);
      dex.writeUInt32LE(methods.length, 88);
      dex.writeUInt32LE(methodIdsOffset, 92);
      dex.writeUInt32LE(classes.length, 96);
      dex.writeUInt32LE(classDefsOffset, 100);
      dex.writeUInt32LE(dataSize, 104);
      dex.writeUInt32LE(dataOffset, 108);
      stringOffsets.forEach((offset2, index) => {
        dex.writeUInt32LE(offset2, stringIdsOffset + index * kStringIdSize);
      });
      types.forEach((id, index) => {
        dex.writeUInt32LE(id, typeIdsOffset + index * kTypeIdSize);
      });
      protos.forEach((proto, index) => {
        const [shortyIndex, returnTypeIndex, params] = proto;
        const protoOffset = protoIdsOffset + index * kProtoIdSize;
        dex.writeUInt32LE(shortyIndex, protoOffset);
        dex.writeUInt32LE(returnTypeIndex, protoOffset + 4);
        dex.writeUInt32LE(params !== null ? params.offset : 0, protoOffset + 8);
      });
      fields.forEach((field, index) => {
        const [classIndex, typeIndex, nameIndex] = field;
        const fieldOffset = fieldIdsOffset + index * kFieldIdSize;
        dex.writeUInt16LE(classIndex, fieldOffset);
        dex.writeUInt16LE(typeIndex, fieldOffset + 2);
        dex.writeUInt32LE(nameIndex, fieldOffset + 4);
      });
      methods.forEach((method, index) => {
        const [classIndex, protoIndex, nameIndex] = method;
        const methodOffset = methodIdsOffset + index * kMethodIdSize;
        dex.writeUInt16LE(classIndex, methodOffset);
        dex.writeUInt16LE(protoIndex, methodOffset + 2);
        dex.writeUInt32LE(nameIndex, methodOffset + 4);
      });
      classes.forEach((klass, index) => {
        const { interfaces: interfaces2, annotationsDirectory } = klass;
        const interfacesOffset = interfaces2 !== null ? interfaces2.offset : 0;
        const annotationsOffset = annotationsDirectory !== null ? annotationsDirectory.offset : 0;
        const staticValuesOffset = 0;
        const classOffset = classDefsOffset + index * kClassDefSize;
        dex.writeUInt32LE(klass.index, classOffset);
        dex.writeUInt32LE(klass.accessFlags, classOffset + 4);
        dex.writeUInt32LE(klass.superClassIndex, classOffset + 8);
        dex.writeUInt32LE(interfacesOffset, classOffset + 12);
        dex.writeUInt32LE(klass.sourceFileIndex, classOffset + 16);
        dex.writeUInt32LE(annotationsOffset, classOffset + 20);
        dex.writeUInt32LE(klass.classData.offset, classOffset + 24);
        dex.writeUInt32LE(staticValuesOffset, classOffset + 28);
      });
      annotationSets.forEach((set, index) => {
        const { items } = set;
        const setOffset = annotationSetOffsets[index];
        dex.writeUInt32LE(items.length, setOffset);
        items.forEach((item, index2) => {
          dex.writeUInt32LE(item.offset, setOffset + 4 + index2 * 4);
        });
      });
      javaCodeItems.forEach((codeItem, index) => {
        const { offset: offset2, superConstructor } = codeItem;
        const registersSize = 1;
        const insSize = 1;
        const outsSize = 1;
        const triesSize = 0;
        const insnsSize = 4;
        dex.writeUInt16LE(registersSize, offset2);
        dex.writeUInt16LE(insSize, offset2 + 2);
        dex.writeUInt16LE(outsSize, offset2 + 4);
        dex.writeUInt16LE(triesSize, offset2 + 6);
        dex.writeUInt32LE(debugInfoOffsets[index], offset2 + 8);
        dex.writeUInt32LE(insnsSize, offset2 + 12);
        dex.writeUInt16LE(4208, offset2 + 16);
        dex.writeUInt16LE(superConstructor, offset2 + 18);
        dex.writeUInt16LE(0, offset2 + 20);
        dex.writeUInt16LE(14, offset2 + 22);
      });
      annotationDirectories.forEach((dir) => {
        const dirOffset = dir.offset;
        const classAnnotationsOffset = 0;
        const fieldsSize = 0;
        const annotatedMethodsSize = dir.methods.length;
        const annotatedParametersSize = 0;
        dex.writeUInt32LE(classAnnotationsOffset, dirOffset);
        dex.writeUInt32LE(fieldsSize, dirOffset + 4);
        dex.writeUInt32LE(annotatedMethodsSize, dirOffset + 8);
        dex.writeUInt32LE(annotatedParametersSize, dirOffset + 12);
        dir.methods.forEach((method, index) => {
          const entryOffset = dirOffset + 16 + index * 8;
          const [methodIndex, annotationSet] = method;
          dex.writeUInt32LE(methodIndex, entryOffset);
          dex.writeUInt32LE(annotationSet.offset, entryOffset + 4);
        });
      });
      interfaces.forEach((iface, index) => {
        const ifaceOffset = interfaceOffsets[index];
        dex.writeUInt32LE(iface.types.length, ifaceOffset);
        iface.types.forEach((type, typeIndex) => {
          dex.writeUInt16LE(type, ifaceOffset + 4 + typeIndex * 2);
        });
      });
      parameters.forEach((param, index) => {
        const paramOffset = parameterOffsets[index];
        dex.writeUInt32LE(param.types.length, paramOffset);
        param.types.forEach((type, typeIndex) => {
          dex.writeUInt16LE(type, paramOffset + 4 + typeIndex * 2);
        });
      });
      stringChunks.forEach((chunk, index) => {
        chunk.copy(dex, stringOffsets[index]);
      });
      debugInfoOffsets.forEach((debugInfoOffset) => {
        kDefaultConstructorDebugInfo.copy(dex, debugInfoOffset);
      });
      throwsAnnotationBlobs.forEach((annotationBlob, index) => {
        annotationBlob.copy(dex, throwsAnnotations[index].offset);
      });
      classDataBlobs.forEach((classDataBlob, index) => {
        classDataBlob.copy(dex, classes[index].classData.offset);
      });
      dex.writeUInt32LE(mapNumItems, mapOffset);
      const mapItems = [
        [TYPE_HEADER_ITEM, 1, headerOffset],
        [TYPE_STRING_ID_ITEM, strings.length, stringIdsOffset],
        [TYPE_TYPE_ID_ITEM, types.length, typeIdsOffset],
        [TYPE_PROTO_ID_ITEM, protos.length, protoIdsOffset]
      ];
      if (fields.length > 0) {
        mapItems.push([TYPE_FIELD_ID_ITEM, fields.length, fieldIdsOffset]);
      }
      mapItems.push([TYPE_METHOD_ID_ITEM, methods.length, methodIdsOffset]);
      mapItems.push([TYPE_CLASS_DEF_ITEM, classes.length, classDefsOffset]);
      annotationSets.forEach((set, index) => {
        mapItems.push([TYPE_ANNOTATION_SET_ITEM, set.items.length, annotationSetOffsets[index]]);
      });
      javaCodeItems.forEach((codeItem) => {
        mapItems.push([TYPE_CODE_ITEM, 1, codeItem.offset]);
      });
      annotationDirectories.forEach((dir) => {
        mapItems.push([TYPE_ANNOTATIONS_DIRECTORY_ITEM, 1, dir.offset]);
      });
      if (typeListLength > 0) {
        mapItems.push([TYPE_TYPE_LIST, typeListLength, interfaceOffsets.concat(parameterOffsets)[0]]);
      }
      mapItems.push([TYPE_STRING_DATA_ITEM, strings.length, stringOffsets[0]]);
      debugInfoOffsets.forEach((debugInfoOffset) => {
        mapItems.push([TYPE_DEBUG_INFO_ITEM, 1, debugInfoOffset]);
      });
      throwsAnnotations.forEach((annotation) => {
        mapItems.push([TYPE_ANNOTATION_ITEM, 1, annotation.offset]);
      });
      classes.forEach((klass) => {
        mapItems.push([TYPE_CLASS_DATA_ITEM, 1, klass.classData.offset]);
      });
      mapItems.push([TYPE_MAP_LIST, 1, mapOffset]);
      mapItems.forEach((item, index) => {
        const [type, size, offset2] = item;
        const itemOffset = mapOffset + 4 + index * kMapItemSize;
        dex.writeUInt16LE(type, itemOffset);
        dex.writeUInt32LE(size, itemOffset + 4);
        dex.writeUInt32LE(offset2, itemOffset + 8);
      });
      const hash = new Checksum("sha1");
      hash.update(dex.slice(signatureOffset + signatureSize));
      Buffer2.from(hash.getDigest()).copy(dex, signatureOffset);
      dex.writeUInt32LE(adler32(dex, signatureOffset), checksumOffset);
      return dex;
    }
  };
  function makeClassData(klass) {
    const { instanceFields, constructorMethods, virtualMethods } = klass.classData;
    const staticFieldsSize = 0;
    return Buffer2.from([
      staticFieldsSize
    ].concat(createUleb128(instanceFields.length)).concat(createUleb128(constructorMethods.length)).concat(createUleb128(virtualMethods.length)).concat(instanceFields.reduce((result, [indexDiff, accessFlags]) => {
      return result.concat(createUleb128(indexDiff)).concat(createUleb128(accessFlags));
    }, [])).concat(constructorMethods.reduce((result, [indexDiff, accessFlags, , codeOffset]) => {
      return result.concat(createUleb128(indexDiff)).concat(createUleb128(accessFlags)).concat(createUleb128(codeOffset || 0));
    }, [])).concat(virtualMethods.reduce((result, [indexDiff, accessFlags]) => {
      const codeOffset = 0;
      return result.concat(createUleb128(indexDiff)).concat(createUleb128(accessFlags)).concat([codeOffset]);
    }, [])));
  }
  function makeThrowsAnnotation(annotation) {
    const { thrownTypes } = annotation;
    return Buffer2.from(
      [
        VISIBILITY_SYSTEM
      ].concat(createUleb128(annotation.type)).concat([1]).concat(createUleb128(annotation.value)).concat([VALUE_ARRAY, thrownTypes.length]).concat(thrownTypes.reduce((result, type) => {
        result.push(VALUE_TYPE, type);
        return result;
      }, []))
    );
  }
  function computeModel(classes) {
    const strings = /* @__PURE__ */ new Set();
    const types = /* @__PURE__ */ new Set();
    const protos = {};
    const fields = [];
    const methods = [];
    const throwsAnnotations = {};
    const javaConstructors = /* @__PURE__ */ new Set();
    const superConstructors = /* @__PURE__ */ new Set();
    classes.forEach((klass) => {
      const { name, superClass, sourceFileName } = klass;
      strings.add("this");
      strings.add(name);
      types.add(name);
      strings.add(superClass);
      types.add(superClass);
      strings.add(sourceFileName);
      klass.interfaces.forEach((iface) => {
        strings.add(iface);
        types.add(iface);
      });
      klass.fields.forEach((field) => {
        const [fieldName, fieldType] = field;
        strings.add(fieldName);
        strings.add(fieldType);
        types.add(fieldType);
        fields.push([klass.name, fieldType, fieldName]);
      });
      if (!klass.methods.some(([methodName]) => methodName === "<init>")) {
        klass.methods.unshift(["<init>", "V", []]);
        javaConstructors.add(name);
      }
      klass.methods.forEach((method) => {
        const [methodName, retType, argTypes, thrownTypes = [], accessFlags] = method;
        strings.add(methodName);
        const protoId = addProto(retType, argTypes);
        let throwsAnnotationId = null;
        if (thrownTypes.length > 0) {
          const typesNormalized = thrownTypes.slice();
          typesNormalized.sort();
          throwsAnnotationId = typesNormalized.join("|");
          let throwsAnnotation = throwsAnnotations[throwsAnnotationId];
          if (throwsAnnotation === void 0) {
            throwsAnnotation = {
              id: throwsAnnotationId,
              types: typesNormalized
            };
            throwsAnnotations[throwsAnnotationId] = throwsAnnotation;
          }
          strings.add(kDalvikAnnotationTypeThrows);
          types.add(kDalvikAnnotationTypeThrows);
          thrownTypes.forEach((type) => {
            strings.add(type);
            types.add(type);
          });
          strings.add("value");
        }
        methods.push([klass.name, protoId, methodName, throwsAnnotationId, accessFlags]);
        if (methodName === "<init>") {
          superConstructors.add(name + "|" + protoId);
          const superConstructorId = superClass + "|" + protoId;
          if (javaConstructors.has(name) && !superConstructors.has(superConstructorId)) {
            methods.push([superClass, protoId, methodName, null, 0]);
            superConstructors.add(superConstructorId);
          }
        }
      });
    });
    function addProto(retType, argTypes) {
      const signature = [retType].concat(argTypes);
      const id = signature.join("|");
      if (protos[id] !== void 0) {
        return id;
      }
      strings.add(retType);
      types.add(retType);
      argTypes.forEach((argType) => {
        strings.add(argType);
        types.add(argType);
      });
      const shorty = signature.map(typeToShorty).join("");
      strings.add(shorty);
      protos[id] = [id, shorty, retType, argTypes];
      return id;
    }
    const stringItems = Array.from(strings);
    stringItems.sort();
    const stringToIndex = stringItems.reduce((result, string, index) => {
      result[string] = index;
      return result;
    }, {});
    const typeItems = Array.from(types).map((name) => stringToIndex[name]);
    typeItems.sort(compareNumbers);
    const typeToIndex = typeItems.reduce((result, stringIndex, typeIndex) => {
      result[stringItems[stringIndex]] = typeIndex;
      return result;
    }, {});
    const literalProtoItems = Object.keys(protos).map((id) => protos[id]);
    literalProtoItems.sort(compareProtoItems);
    const parameters = {};
    const protoItems = literalProtoItems.map((item) => {
      const [, shorty, retType, argTypes] = item;
      let params;
      if (argTypes.length > 0) {
        const argTypesSig = argTypes.join("|");
        params = parameters[argTypesSig];
        if (params === void 0) {
          params = {
            types: argTypes.map((type) => typeToIndex[type]),
            offset: -1
          };
          parameters[argTypesSig] = params;
        }
      } else {
        params = null;
      }
      return [
        stringToIndex[shorty],
        typeToIndex[retType],
        params
      ];
    });
    const protoToIndex = literalProtoItems.reduce((result, item, index) => {
      const [id] = item;
      result[id] = index;
      return result;
    }, {});
    const parameterItems = Object.keys(parameters).map((id) => parameters[id]);
    const fieldItems = fields.map((field) => {
      const [klass, fieldType, fieldName] = field;
      return [
        typeToIndex[klass],
        typeToIndex[fieldType],
        stringToIndex[fieldName]
      ];
    });
    fieldItems.sort(compareFieldItems);
    const methodItems = methods.map((method) => {
      const [klass, protoId, name, annotationsId, accessFlags] = method;
      return [
        typeToIndex[klass],
        protoToIndex[protoId],
        stringToIndex[name],
        annotationsId,
        accessFlags
      ];
    });
    methodItems.sort(compareMethodItems);
    const throwsAnnotationItems = Object.keys(throwsAnnotations).map((id) => throwsAnnotations[id]).map((item) => {
      return {
        id: item.id,
        type: typeToIndex[kDalvikAnnotationTypeThrows],
        value: stringToIndex.value,
        thrownTypes: item.types.map((type) => typeToIndex[type]),
        offset: -1
      };
    });
    const annotationSetItems = throwsAnnotationItems.map((item) => {
      return {
        id: item.id,
        items: [item],
        offset: -1
      };
    });
    const annotationSetIdToIndex = annotationSetItems.reduce((result, item, index) => {
      result[item.id] = index;
      return result;
    }, {});
    const interfaceLists = {};
    const annotationDirectories = [];
    const classItems = classes.map((klass) => {
      const classIndex = typeToIndex[klass.name];
      const accessFlags = kAccPublic2;
      const superClassIndex = typeToIndex[klass.superClass];
      let ifaceList;
      const ifaces = klass.interfaces.map((type) => typeToIndex[type]);
      if (ifaces.length > 0) {
        ifaces.sort(compareNumbers);
        const ifacesId = ifaces.join("|");
        ifaceList = interfaceLists[ifacesId];
        if (ifaceList === void 0) {
          ifaceList = {
            types: ifaces,
            offset: -1
          };
          interfaceLists[ifacesId] = ifaceList;
        }
      } else {
        ifaceList = null;
      }
      const sourceFileIndex = stringToIndex[klass.sourceFileName];
      const classMethods = methodItems.reduce((result, method, index) => {
        const [holder, protoIndex, name, annotationsId, accessFlags2] = method;
        if (holder === classIndex) {
          result.push([index, name, annotationsId, protoIndex, accessFlags2]);
        }
        return result;
      }, []);
      let annotationsDirectory = null;
      const methodAnnotations = classMethods.filter(([, , annotationsId]) => {
        return annotationsId !== null;
      }).map(([index, , annotationsId]) => {
        return [index, annotationSetItems[annotationSetIdToIndex[annotationsId]]];
      });
      if (methodAnnotations.length > 0) {
        annotationsDirectory = {
          methods: methodAnnotations,
          offset: -1
        };
        annotationDirectories.push(annotationsDirectory);
      }
      const instanceFields = fieldItems.reduce((result, field, index) => {
        const [holder] = field;
        if (holder === classIndex) {
          result.push([index > 0 ? 1 : 0, kAccPublic2]);
        }
        return result;
      }, []);
      const constructorNameIndex = stringToIndex["<init>"];
      const constructorMethods = classMethods.filter(([, name]) => name === constructorNameIndex).map(([index, , , protoIndex]) => {
        if (javaConstructors.has(klass.name)) {
          let superConstructor = -1;
          const numMethodItems = methodItems.length;
          for (let i = 0; i !== numMethodItems; i++) {
            const [methodClass, methodProto, methodName] = methodItems[i];
            if (methodClass === superClassIndex && methodName === constructorNameIndex && methodProto === protoIndex) {
              superConstructor = i;
              break;
            }
          }
          return [index, kAccPublic2 | kAccConstructor, superConstructor];
        } else {
          return [index, kAccPublic2 | kAccConstructor | kAccNative2, -1];
        }
      });
      const virtualMethods = compressClassMethodIndexes(classMethods.filter(([, name]) => name !== constructorNameIndex).map(([index, , , , accessFlags2]) => {
        return [index, accessFlags2 | kAccPublic2 | kAccNative2];
      }));
      const classData = {
        instanceFields,
        constructorMethods,
        virtualMethods,
        offset: -1
      };
      return {
        index: classIndex,
        accessFlags,
        superClassIndex,
        interfaces: ifaceList,
        sourceFileIndex,
        annotationsDirectory,
        classData
      };
    });
    const interfaceItems = Object.keys(interfaceLists).map((id) => interfaceLists[id]);
    return {
      classes: classItems,
      interfaces: interfaceItems,
      fields: fieldItems,
      methods: methodItems,
      protos: protoItems,
      parameters: parameterItems,
      annotationDirectories,
      annotationSets: annotationSetItems,
      throwsAnnotations: throwsAnnotationItems,
      types: typeItems,
      strings: stringItems
    };
  }
  function compressClassMethodIndexes(items) {
    let previousIndex = 0;
    return items.map(([index, accessFlags], elementIndex) => {
      let result;
      if (elementIndex === 0) {
        result = [index, accessFlags];
      } else {
        result = [index - previousIndex, accessFlags];
      }
      previousIndex = index;
      return result;
    });
  }
  function compareNumbers(a, b) {
    return a - b;
  }
  function compareProtoItems(a, b) {
    const [, , aRetType, aArgTypes] = a;
    const [, , bRetType, bArgTypes] = b;
    if (aRetType < bRetType) {
      return -1;
    }
    if (aRetType > bRetType) {
      return 1;
    }
    const aArgTypesSig = aArgTypes.join("|");
    const bArgTypesSig = bArgTypes.join("|");
    if (aArgTypesSig < bArgTypesSig) {
      return -1;
    }
    if (aArgTypesSig > bArgTypesSig) {
      return 1;
    }
    return 0;
  }
  function compareFieldItems(a, b) {
    const [aClass, aType, aName] = a;
    const [bClass, bType, bName] = b;
    if (aClass !== bClass) {
      return aClass - bClass;
    }
    if (aName !== bName) {
      return aName - bName;
    }
    return aType - bType;
  }
  function compareMethodItems(a, b) {
    const [aClass, aProto, aName] = a;
    const [bClass, bProto, bName] = b;
    if (aClass !== bClass) {
      return aClass - bClass;
    }
    if (aName !== bName) {
      return aName - bName;
    }
    return aProto - bProto;
  }
  function typeToShorty(type) {
    const firstCharacter = type[0];
    return firstCharacter === "L" || firstCharacter === "[" ? "L" : type;
  }
  function createUleb128(value) {
    if (value <= 127) {
      return [value];
    }
    const result = [];
    let moreSlicesNeeded = false;
    do {
      let slice2 = value & 127;
      value >>= 7;
      moreSlicesNeeded = value !== 0;
      if (moreSlicesNeeded) {
        slice2 |= 128;
      }
      result.push(slice2);
    } while (moreSlicesNeeded);
    return result;
  }
  function align(value, alignment) {
    const alignmentDelta = value % alignment;
    if (alignmentDelta === 0) {
      return value;
    }
    return value + alignment - alignmentDelta;
  }
  function adler32(buffer, offset) {
    let a = 1;
    let b = 0;
    const length = buffer.length;
    for (let i = offset; i < length; i++) {
      a = (a + buffer[i]) % 65521;
      b = (b + a) % 65521;
    }
    return (b << 16 | a) >>> 0;
  }
  var mkdex_default = mkdex;

  // ServerProject/tools/node_modules/frida-java-bridge/lib/types.js
  var JNILocalRefType = 1;
  var vm = null;
  var primitiveArrayHandler = null;
  function initialize(_vm) {
    vm = _vm;
  }
  function getType(typeName, unbox, factory) {
    let type = getPrimitiveType(typeName);
    if (type === null) {
      if (typeName.indexOf("[") === 0) {
        type = getArrayType(typeName, unbox, factory);
      } else {
        if (typeName[0] === "L" && typeName[typeName.length - 1] === ";") {
          typeName = typeName.substring(1, typeName.length - 1);
        }
        type = getObjectType(typeName, unbox, factory);
      }
    }
    return Object.assign({ className: typeName }, type);
  }
  var primitiveTypes = {
    boolean: {
      name: "Z",
      type: "uint8",
      size: 1,
      byteSize: 1,
      defaultValue: false,
      isCompatible(v) {
        return typeof v === "boolean";
      },
      fromJni(v) {
        return !!v;
      },
      toJni(v) {
        return v ? 1 : 0;
      },
      read(address) {
        return address.readU8();
      },
      write(address, value) {
        address.writeU8(value);
      },
      toString() {
        return this.name;
      }
    },
    byte: {
      name: "B",
      type: "int8",
      size: 1,
      byteSize: 1,
      defaultValue: 0,
      isCompatible(v) {
        return Number.isInteger(v) && v >= -128 && v <= 127;
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readS8();
      },
      write(address, value) {
        address.writeS8(value);
      },
      toString() {
        return this.name;
      }
    },
    char: {
      name: "C",
      type: "uint16",
      size: 1,
      byteSize: 2,
      defaultValue: 0,
      isCompatible(v) {
        if (typeof v !== "string" || v.length !== 1) {
          return false;
        }
        const code3 = v.charCodeAt(0);
        return code3 >= 0 && code3 <= 65535;
      },
      fromJni(c) {
        return String.fromCharCode(c);
      },
      toJni(s) {
        return s.charCodeAt(0);
      },
      read(address) {
        return address.readU16();
      },
      write(address, value) {
        address.writeU16(value);
      },
      toString() {
        return this.name;
      }
    },
    short: {
      name: "S",
      type: "int16",
      size: 1,
      byteSize: 2,
      defaultValue: 0,
      isCompatible(v) {
        return Number.isInteger(v) && v >= -32768 && v <= 32767;
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readS16();
      },
      write(address, value) {
        address.writeS16(value);
      },
      toString() {
        return this.name;
      }
    },
    int: {
      name: "I",
      type: "int32",
      size: 1,
      byteSize: 4,
      defaultValue: 0,
      isCompatible(v) {
        return Number.isInteger(v) && v >= -2147483648 && v <= 2147483647;
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readS32();
      },
      write(address, value) {
        address.writeS32(value);
      },
      toString() {
        return this.name;
      }
    },
    long: {
      name: "J",
      type: "int64",
      size: 2,
      byteSize: 8,
      defaultValue: 0,
      isCompatible(v) {
        return typeof v === "number" || v instanceof Int64;
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readS64();
      },
      write(address, value) {
        address.writeS64(value);
      },
      toString() {
        return this.name;
      }
    },
    float: {
      name: "F",
      type: "float",
      size: 1,
      byteSize: 4,
      defaultValue: 0,
      isCompatible(v) {
        return typeof v === "number";
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readFloat();
      },
      write(address, value) {
        address.writeFloat(value);
      },
      toString() {
        return this.name;
      }
    },
    double: {
      name: "D",
      type: "double",
      size: 2,
      byteSize: 8,
      defaultValue: 0,
      isCompatible(v) {
        return typeof v === "number";
      },
      fromJni: identity,
      toJni: identity,
      read(address) {
        return address.readDouble();
      },
      write(address, value) {
        address.writeDouble(value);
      },
      toString() {
        return this.name;
      }
    },
    void: {
      name: "V",
      type: "void",
      size: 0,
      byteSize: 0,
      defaultValue: void 0,
      isCompatible(v) {
        return v === void 0;
      },
      fromJni() {
        return void 0;
      },
      toJni() {
        return NULL;
      },
      toString() {
        return this.name;
      }
    }
  };
  var primitiveTypesNames = new Set(Object.values(primitiveTypes).map((t) => t.name));
  function getPrimitiveType(name) {
    const result = primitiveTypes[name];
    return result !== void 0 ? result : null;
  }
  function getObjectType(typeName, unbox, factory) {
    const cache = factory._types[unbox ? 1 : 0];
    let type = cache[typeName];
    if (type !== void 0) {
      return type;
    }
    if (typeName === "java.lang.Object") {
      type = getJavaLangObjectType(factory);
    } else {
      type = getAnyObjectType(typeName, unbox, factory);
    }
    cache[typeName] = type;
    return type;
  }
  function getJavaLangObjectType(factory) {
    return {
      name: "Ljava/lang/Object;",
      type: "pointer",
      size: 1,
      defaultValue: NULL,
      isCompatible(v) {
        if (v === null) {
          return true;
        }
        if (v === void 0) {
          return false;
        }
        const isWrapper = v.$h instanceof NativePointer;
        if (isWrapper) {
          return true;
        }
        return typeof v === "string";
      },
      fromJni(h, env, owned) {
        if (h.isNull()) {
          return null;
        }
        return factory.cast(h, factory.use("java.lang.Object"), owned);
      },
      toJni(o, env) {
        if (o === null) {
          return NULL;
        }
        if (typeof o === "string") {
          return env.newStringUtf(o);
        }
        return o.$h;
      }
    };
  }
  function getAnyObjectType(typeName, unbox, factory) {
    let cachedClass = null;
    let cachedIsInstance = null;
    let cachedIsDefaultString = null;
    function getClass() {
      if (cachedClass === null) {
        cachedClass = factory.use(typeName).class;
      }
      return cachedClass;
    }
    function isInstance(v) {
      const klass = getClass();
      if (cachedIsInstance === null) {
        cachedIsInstance = klass.isInstance.overload("java.lang.Object");
      }
      return cachedIsInstance.call(klass, v);
    }
    function typeIsDefaultString() {
      if (cachedIsDefaultString === null) {
        const x = getClass();
        cachedIsDefaultString = factory.use("java.lang.String").class.isAssignableFrom(x);
      }
      return cachedIsDefaultString;
    }
    return {
      name: makeJniObjectTypeName(typeName),
      type: "pointer",
      size: 1,
      defaultValue: NULL,
      isCompatible(v) {
        if (v === null) {
          return true;
        }
        if (v === void 0) {
          return false;
        }
        const isWrapper = v.$h instanceof NativePointer;
        if (isWrapper) {
          return isInstance(v);
        }
        return typeof v === "string" && typeIsDefaultString();
      },
      fromJni(h, env, owned) {
        if (h.isNull()) {
          return null;
        }
        if (typeIsDefaultString() && unbox) {
          return env.stringFromJni(h);
        }
        return factory.cast(h, factory.use(typeName), owned);
      },
      toJni(o, env) {
        if (o === null) {
          return NULL;
        }
        if (typeof o === "string") {
          return env.newStringUtf(o);
        }
        return o.$h;
      },
      toString() {
        return this.name;
      }
    };
  }
  var primitiveArrayTypes = [
    ["Z", "boolean"],
    ["B", "byte"],
    ["C", "char"],
    ["D", "double"],
    ["F", "float"],
    ["I", "int"],
    ["J", "long"],
    ["S", "short"]
  ].reduce((result, [shorty, name]) => {
    result["[" + shorty] = makePrimitiveArrayType("[" + shorty, name);
    return result;
  }, {});
  function makePrimitiveArrayType(shorty, name) {
    const envProto = Env.prototype;
    const nameTitled = toTitleCase(name);
    const spec = {
      typeName: name,
      newArray: envProto["new" + nameTitled + "Array"],
      setRegion: envProto["set" + nameTitled + "ArrayRegion"],
      getElements: envProto["get" + nameTitled + "ArrayElements"],
      releaseElements: envProto["release" + nameTitled + "ArrayElements"]
    };
    return {
      name: shorty,
      type: "pointer",
      size: 1,
      defaultValue: NULL,
      isCompatible(v) {
        return isCompatiblePrimitiveArray(v, name);
      },
      fromJni(h, env, owned) {
        return fromJniPrimitiveArray(h, spec, env, owned);
      },
      toJni(arr, env) {
        return toJniPrimitiveArray(arr, spec, env);
      }
    };
  }
  function getArrayType(typeName, unbox, factory) {
    const primitiveType = primitiveArrayTypes[typeName];
    if (primitiveType !== void 0) {
      return primitiveType;
    }
    if (typeName.indexOf("[") !== 0) {
      throw new Error("Unsupported type: " + typeName);
    }
    let elementTypeName = typeName.substring(1);
    const elementType = getType(elementTypeName, unbox, factory);
    let numInternalArrays = 0;
    const end = elementTypeName.length;
    while (numInternalArrays !== end && elementTypeName[numInternalArrays] === "[") {
      numInternalArrays++;
    }
    elementTypeName = elementTypeName.substring(numInternalArrays);
    if (elementTypeName[0] === "L" && elementTypeName[elementTypeName.length - 1] === ";") {
      elementTypeName = elementTypeName.substring(1, elementTypeName.length - 1);
    }
    let internalElementTypeName = elementTypeName.replace(/\./g, "/");
    if (primitiveTypesNames.has(internalElementTypeName)) {
      internalElementTypeName = "[".repeat(numInternalArrays) + internalElementTypeName;
    } else {
      internalElementTypeName = "[".repeat(numInternalArrays) + "L" + internalElementTypeName + ";";
    }
    const internalTypeName = "[" + internalElementTypeName;
    elementTypeName = "[".repeat(numInternalArrays) + elementTypeName;
    return {
      name: typeName.replace(/\./g, "/"),
      type: "pointer",
      size: 1,
      defaultValue: NULL,
      isCompatible(v) {
        if (v === null) {
          return true;
        }
        if (typeof v !== "object" || v.length === void 0) {
          return false;
        }
        return v.every(function(element) {
          return elementType.isCompatible(element);
        });
      },
      fromJni(arr, env, owned) {
        if (arr.isNull()) {
          return null;
        }
        const result = [];
        const n = env.getArrayLength(arr);
        for (let i = 0; i !== n; i++) {
          const element = env.getObjectArrayElement(arr, i);
          try {
            result.push(elementType.fromJni(element, env));
          } finally {
            env.deleteLocalRef(element);
          }
        }
        try {
          result.$w = factory.cast(arr, factory.use(internalTypeName), owned);
        } catch (e) {
          factory.use("java.lang.reflect.Array").newInstance(factory.use(elementTypeName).class, 0);
          result.$w = factory.cast(arr, factory.use(internalTypeName), owned);
        }
        result.$dispose = disposeObjectArray;
        return result;
      },
      toJni(elements, env) {
        if (elements === null) {
          return NULL;
        }
        if (!(elements instanceof Array)) {
          throw new Error("Expected an array");
        }
        const wrapper = elements.$w;
        if (wrapper !== void 0) {
          return wrapper.$h;
        }
        const n = elements.length;
        const klassObj = factory.use(elementTypeName);
        const classHandle = klassObj.$borrowClassHandle(env);
        try {
          const result = env.newObjectArray(n, classHandle.value, NULL);
          env.throwIfExceptionPending();
          for (let i = 0; i !== n; i++) {
            const handle = elementType.toJni(elements[i], env);
            try {
              env.setObjectArrayElement(result, i, handle);
            } finally {
              if (elementType.type === "pointer" && env.getObjectRefType(handle) === JNILocalRefType) {
                env.deleteLocalRef(handle);
              }
            }
            env.throwIfExceptionPending();
          }
          return result;
        } finally {
          classHandle.unref(env);
        }
      }
    };
  }
  function disposeObjectArray() {
    const n = this.length;
    for (let i = 0; i !== n; i++) {
      const obj = this[i];
      if (obj === null) {
        continue;
      }
      const dispose = obj.$dispose;
      if (dispose === void 0) {
        break;
      }
      dispose.call(obj);
    }
    this.$w.$dispose();
  }
  function fromJniPrimitiveArray(arr, spec, env, owned) {
    if (arr.isNull()) {
      return null;
    }
    const type = getPrimitiveType(spec.typeName);
    const length = env.getArrayLength(arr);
    return new PrimitiveArray(arr, spec, type, length, env, owned);
  }
  function toJniPrimitiveArray(arr, spec, env) {
    if (arr === null) {
      return NULL;
    }
    const handle = arr.$h;
    if (handle !== void 0) {
      return handle;
    }
    const length = arr.length;
    const type = getPrimitiveType(spec.typeName);
    const result = spec.newArray.call(env, length);
    if (result.isNull()) {
      throw new Error("Unable to construct array");
    }
    if (length > 0) {
      const elementSize = type.byteSize;
      const writeElement = type.write;
      const unparseElementValue = type.toJni;
      const elements = Memory.alloc(length * type.byteSize);
      for (let index = 0; index !== length; index++) {
        writeElement(elements.add(index * elementSize), unparseElementValue(arr[index]));
      }
      spec.setRegion.call(env, result, 0, length, elements);
      env.throwIfExceptionPending();
    }
    return result;
  }
  function isCompatiblePrimitiveArray(value, typeName) {
    if (value === null) {
      return true;
    }
    if (value instanceof PrimitiveArray) {
      return value.$s.typeName === typeName;
    }
    const isArrayLike = typeof value === "object" && value.length !== void 0;
    if (!isArrayLike) {
      return false;
    }
    const elementType = getPrimitiveType(typeName);
    return Array.prototype.every.call(value, (element) => elementType.isCompatible(element));
  }
  function PrimitiveArray(handle, spec, type, length, env, owned = true) {
    if (owned) {
      const h = env.newGlobalRef(handle);
      this.$h = h;
      this.$r = Script.bindWeak(this, env.vm.makeHandleDestructor(h));
    } else {
      this.$h = handle;
      this.$r = null;
    }
    this.$s = spec;
    this.$t = type;
    this.length = length;
    return new Proxy(this, primitiveArrayHandler);
  }
  primitiveArrayHandler = {
    has(target, property) {
      if (property in target) {
        return true;
      }
      return target.tryParseIndex(property) !== null;
    },
    get(target, property, receiver) {
      const index = target.tryParseIndex(property);
      if (index === null) {
        return target[property];
      }
      return target.readElement(index);
    },
    set(target, property, value, receiver) {
      const index = target.tryParseIndex(property);
      if (index === null) {
        target[property] = value;
        return true;
      }
      target.writeElement(index, value);
      return true;
    },
    ownKeys(target) {
      const keys = [];
      const { length } = target;
      for (let i = 0; i !== length; i++) {
        const key = i.toString();
        keys.push(key);
      }
      keys.push("length");
      return keys;
    },
    getOwnPropertyDescriptor(target, property) {
      const index = target.tryParseIndex(property);
      if (index !== null) {
        return {
          writable: true,
          configurable: true,
          enumerable: true
        };
      }
      return Object.getOwnPropertyDescriptor(target, property);
    }
  };
  Object.defineProperties(PrimitiveArray.prototype, {
    $dispose: {
      enumerable: true,
      value() {
        const ref = this.$r;
        if (ref !== null) {
          this.$r = null;
          Script.unbindWeak(ref);
        }
      }
    },
    $clone: {
      value(env) {
        return new PrimitiveArray(this.$h, this.$s, this.$t, this.length, env);
      }
    },
    tryParseIndex: {
      value(rawIndex) {
        if (typeof rawIndex === "symbol") {
          return null;
        }
        const index = parseInt(rawIndex);
        if (isNaN(index) || index < 0 || index >= this.length) {
          return null;
        }
        return index;
      }
    },
    readElement: {
      value(index) {
        return this.withElements((elements) => {
          const type = this.$t;
          return type.fromJni(type.read(elements.add(index * type.byteSize)));
        });
      }
    },
    writeElement: {
      value(index, value) {
        const { $h: handle, $s: spec, $t: type } = this;
        const env = vm.getEnv();
        const element = Memory.alloc(type.byteSize);
        type.write(element, type.toJni(value));
        spec.setRegion.call(env, handle, index, 1, element);
      }
    },
    withElements: {
      value(perform) {
        const { $h: handle, $s: spec } = this;
        const env = vm.getEnv();
        const elements = spec.getElements.call(env, handle);
        if (elements.isNull()) {
          throw new Error("Unable to get array elements");
        }
        try {
          return perform(elements);
        } finally {
          spec.releaseElements.call(env, handle, elements);
        }
      }
    },
    toJSON: {
      value() {
        const { length, $t: type } = this;
        const { byteSize: elementSize, fromJni, read: read2 } = type;
        return this.withElements((elements) => {
          const values = [];
          for (let i = 0; i !== length; i++) {
            const value = fromJni(read2(elements.add(i * elementSize)));
            values.push(value);
          }
          return values;
        });
      }
    },
    toString: {
      value() {
        return this.toJSON().toString();
      }
    }
  });
  function makeJniObjectTypeName(typeName) {
    return "L" + typeName.replace(/\./g, "/") + ";";
  }
  function toTitleCase(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
  }
  function identity(value) {
    return value;
  }

  // ServerProject/tools/node_modules/frida-java-bridge/lib/class-factory.js
  var jsizeSize3 = 4;
  var {
    ensureClassInitialized: ensureClassInitialized3,
    makeMethodMangler: makeMethodMangler3
  } = android_exports;
  var kAccStatic2 = 8;
  var CONSTRUCTOR_METHOD = 1;
  var STATIC_METHOD = 2;
  var INSTANCE_METHOD = 3;
  var STATIC_FIELD = 1;
  var INSTANCE_FIELD = 2;
  var STRATEGY_VIRTUAL = 1;
  var STRATEGY_DIRECT = 2;
  var PENDING_USE = Symbol("PENDING_USE");
  var DEFAULT_CACHE_DIR = "/data/local/tmp";
  var {
    getCurrentThreadId,
    pointerSize: pointerSize7
  } = Process;
  var factoryCache = {
    state: "empty",
    factories: [],
    loaders: null,
    Integer: null
  };
  var vm2 = null;
  var api = null;
  var isArtVm = null;
  var wrapperHandler = null;
  var dispatcherPrototype = null;
  var methodPrototype = null;
  var valueOfPrototype = null;
  var cachedLoaderInvoke = null;
  var cachedLoaderMethod = null;
  var ignoredThreads = /* @__PURE__ */ new Map();
  var ClassFactory = class _ClassFactory {
    static _initialize(_vm, _api) {
      vm2 = _vm;
      api = _api;
      isArtVm = _api.flavor === "art";
      if (_api.flavor === "jvm") {
        ensureClassInitialized3 = ensureClassInitialized2;
        makeMethodMangler3 = makeMethodMangler2;
      }
    }
    static _disposeAll(env) {
      factoryCache.factories.forEach((factory) => {
        factory._dispose(env);
      });
    }
    static get(classLoader) {
      const cache = getFactoryCache();
      const defaultFactory = cache.factories[0];
      if (classLoader === null) {
        return defaultFactory;
      }
      const indexObj = cache.loaders.get(classLoader);
      if (indexObj !== null) {
        const index = defaultFactory.cast(indexObj, cache.Integer);
        return cache.factories[index.intValue()];
      }
      const factory = new _ClassFactory();
      factory.loader = classLoader;
      factory.cacheDir = defaultFactory.cacheDir;
      addFactoryToCache(factory, classLoader);
      return factory;
    }
    constructor() {
      this.cacheDir = DEFAULT_CACHE_DIR;
      this.codeCacheDir = DEFAULT_CACHE_DIR + "/dalvik-cache";
      this.tempFileNaming = {
        prefix: "frida",
        suffix: ""
      };
      this._classes = {};
      this._classHandles = new LRU(10, releaseClassHandle);
      this._patchedMethods = /* @__PURE__ */ new Set();
      this._loader = null;
      this._types = [{}, {}];
      factoryCache.factories.push(this);
    }
    _dispose(env) {
      Array.from(this._patchedMethods).forEach((method) => {
        method.implementation = null;
      });
      this._patchedMethods.clear();
      revertGlobalPatches();
      this._classHandles.dispose(env);
      this._classes = {};
    }
    get loader() {
      return this._loader;
    }
    set loader(value) {
      const isInitial = this._loader === null && value !== null;
      this._loader = value;
      if (isInitial && factoryCache.state === "ready" && this === factoryCache.factories[0]) {
        addFactoryToCache(this, value);
      }
    }
    use(className, options = {}) {
      const allowCached = options.cache !== "skip";
      let C = allowCached ? this._getUsedClass(className) : void 0;
      if (C === void 0) {
        try {
          const env = vm2.getEnv();
          const { _loader: loader } = this;
          const getClassHandle = loader !== null ? makeLoaderClassHandleGetter(className, loader, env) : makeBasicClassHandleGetter(className);
          C = this._make(className, getClassHandle, env);
        } finally {
          if (allowCached) {
            this._setUsedClass(className, C);
          }
        }
      }
      return C;
    }
    _getUsedClass(className) {
      let c;
      while ((c = this._classes[className]) === PENDING_USE) {
        Thread.sleep(0.05);
      }
      if (c === void 0) {
        this._classes[className] = PENDING_USE;
      }
      return c;
    }
    _setUsedClass(className, c) {
      if (c !== void 0) {
        this._classes[className] = c;
      } else {
        delete this._classes[className];
      }
    }
    _make(name, getClassHandle, env) {
      const C = makeClassWrapperConstructor();
      const proto = Object.create(Wrapper.prototype, {
        [Symbol.for("n")]: {
          value: name
        },
        $n: {
          get() {
            return this[Symbol.for("n")];
          }
        },
        [Symbol.for("C")]: {
          value: C
        },
        $C: {
          get() {
            return this[Symbol.for("C")];
          }
        },
        [Symbol.for("w")]: {
          value: null,
          writable: true
        },
        $w: {
          get() {
            return this[Symbol.for("w")];
          },
          set(val) {
            this[Symbol.for("w")] = val;
          }
        },
        [Symbol.for("_s")]: {
          writable: true
        },
        $_s: {
          get() {
            return this[Symbol.for("_s")];
          },
          set(val) {
            this[Symbol.for("_s")] = val;
          }
        },
        [Symbol.for("c")]: {
          value: [null]
        },
        $c: {
          get() {
            return this[Symbol.for("c")];
          }
        },
        [Symbol.for("m")]: {
          value: /* @__PURE__ */ new Map()
        },
        $m: {
          get() {
            return this[Symbol.for("m")];
          }
        },
        [Symbol.for("l")]: {
          value: null,
          writable: true
        },
        $l: {
          get() {
            return this[Symbol.for("l")];
          },
          set(val) {
            this[Symbol.for("l")] = val;
          }
        },
        [Symbol.for("gch")]: {
          value: getClassHandle
        },
        $gch: {
          get() {
            return this[Symbol.for("gch")];
          }
        },
        [Symbol.for("f")]: {
          value: this
        },
        $f: {
          get() {
            return this[Symbol.for("f")];
          }
        }
      });
      C.prototype = proto;
      const classWrapper = new C(null);
      proto[Symbol.for("w")] = classWrapper;
      proto.$w = classWrapper;
      const h = classWrapper.$borrowClassHandle(env);
      try {
        const classHandle = h.value;
        ensureClassInitialized3(env, classHandle);
        proto.$l = Model.build(classHandle, env);
      } finally {
        h.unref(env);
      }
      return classWrapper;
    }
    retain(obj) {
      const env = vm2.getEnv();
      return obj.$clone(env);
    }
    cast(obj, klass, owned) {
      const env = vm2.getEnv();
      let handle = obj.$h;
      if (handle === void 0) {
        handle = obj;
      }
      const h = klass.$borrowClassHandle(env);
      try {
        const isValidCast = env.isInstanceOf(handle, h.value);
        if (!isValidCast) {
          throw new Error(`Cast from '${env.getObjectClassName(handle)}' to '${klass.$n}' isn't possible`);
        }
      } finally {
        h.unref(env);
      }
      const C = klass.$C;
      return new C(handle, STRATEGY_VIRTUAL, env, owned);
    }
    wrap(handle, klass, env) {
      const C = klass.$C;
      const wrapper = new C(handle, STRATEGY_VIRTUAL, env, false);
      wrapper.$r = Script.bindWeak(wrapper, vm2.makeHandleDestructor(handle));
      return wrapper;
    }
    array(type, elements) {
      const env = vm2.getEnv();
      const primitiveType = getPrimitiveType(type);
      if (primitiveType !== null) {
        type = primitiveType.name;
      }
      const arrayType = getArrayType("[" + type, false, this);
      const rawArray = arrayType.toJni(elements, env);
      return arrayType.fromJni(rawArray, env, true);
    }
    registerClass(spec) {
      const env = vm2.getEnv();
      const tempHandles = [];
      try {
        const Class = this.use("java.lang.Class");
        const Method = env.javaLangReflectMethod();
        const invokeObjectMethodNoArgs = env.vaMethod("pointer", []);
        const className = spec.name;
        const interfaces = spec.implements || [];
        const superClass = spec.superClass || this.use("java.lang.Object");
        const dexFields = [];
        const dexMethods = [];
        const dexSpec = {
          name: makeJniObjectTypeName(className),
          sourceFileName: makeSourceFileName(className),
          superClass: makeJniObjectTypeName(superClass.$n),
          interfaces: interfaces.map((iface) => makeJniObjectTypeName(iface.$n)),
          fields: dexFields,
          methods: dexMethods
        };
        const allInterfaces = interfaces.slice();
        interfaces.forEach((iface) => {
          Array.prototype.slice.call(iface.class.getInterfaces()).forEach((baseIface) => {
            const baseIfaceName = this.cast(baseIface, Class).getCanonicalName();
            allInterfaces.push(this.use(baseIfaceName));
          });
        });
        const fields = spec.fields || {};
        Object.getOwnPropertyNames(fields).forEach((name) => {
          const fieldType = this._getType(fields[name]);
          dexFields.push([name, fieldType.name]);
        });
        const baseMethods = {};
        const pendingOverloads = {};
        allInterfaces.forEach((iface) => {
          const h = iface.$borrowClassHandle(env);
          tempHandles.push(h);
          const ifaceHandle = h.value;
          iface.$ownMembers.filter((name) => {
            return iface[name].overloads !== void 0;
          }).forEach((name) => {
            const method = iface[name];
            const overloads = method.overloads;
            const overloadIds = overloads.map((overload) => makeOverloadId(name, overload.returnType, overload.argumentTypes));
            baseMethods[name] = [method, overloadIds, ifaceHandle];
            overloads.forEach((overload, index) => {
              const id = overloadIds[index];
              pendingOverloads[id] = [overload, ifaceHandle];
            });
          });
        });
        const methods = spec.methods || {};
        const methodNames = Object.keys(methods);
        const methodEntries = methodNames.reduce((result, name) => {
          const entry = methods[name];
          const rawName = name === "$init" ? "<init>" : name;
          if (entry instanceof Array) {
            result.push(...entry.map((e) => [rawName, e]));
          } else {
            result.push([rawName, entry]);
          }
          return result;
        }, []);
        const implMethods = [];
        methodEntries.forEach(([name, methodValue]) => {
          let type = INSTANCE_METHOD;
          let returnType;
          let argumentTypes;
          let thrownTypeNames = [];
          let impl;
          if (typeof methodValue === "function") {
            const m = baseMethods[name];
            if (m !== void 0 && Array.isArray(m)) {
              const [baseMethod, overloadIds, parentTypeHandle] = m;
              if (overloadIds.length > 1) {
                throw new Error(`More than one overload matching '${name}': signature must be specified`);
              }
              delete pendingOverloads[overloadIds[0]];
              const overload = baseMethod.overloads[0];
              type = overload.type;
              returnType = overload.returnType;
              argumentTypes = overload.argumentTypes;
              impl = methodValue;
              const reflectedMethod = env.toReflectedMethod(parentTypeHandle, overload.handle, 0);
              const thrownTypes = invokeObjectMethodNoArgs(env.handle, reflectedMethod, Method.getGenericExceptionTypes);
              thrownTypeNames = readTypeNames(env, thrownTypes).map(makeJniObjectTypeName);
              env.deleteLocalRef(thrownTypes);
              env.deleteLocalRef(reflectedMethod);
            } else {
              returnType = this._getType("void");
              argumentTypes = [];
              impl = methodValue;
            }
          } else {
            if (methodValue.isStatic) {
              type = STATIC_METHOD;
            }
            returnType = this._getType(methodValue.returnType || "void");
            argumentTypes = (methodValue.argumentTypes || []).map((name2) => this._getType(name2));
            impl = methodValue.implementation;
            if (typeof impl !== "function") {
              throw new Error("Expected a function implementation for method: " + name);
            }
            const id = makeOverloadId(name, returnType, argumentTypes);
            const pendingOverload = pendingOverloads[id];
            if (pendingOverload !== void 0) {
              const [overload, parentTypeHandle] = pendingOverload;
              delete pendingOverloads[id];
              type = overload.type;
              returnType = overload.returnType;
              argumentTypes = overload.argumentTypes;
              const reflectedMethod = env.toReflectedMethod(parentTypeHandle, overload.handle, 0);
              const thrownTypes = invokeObjectMethodNoArgs(env.handle, reflectedMethod, Method.getGenericExceptionTypes);
              thrownTypeNames = readTypeNames(env, thrownTypes).map(makeJniObjectTypeName);
              env.deleteLocalRef(thrownTypes);
              env.deleteLocalRef(reflectedMethod);
            }
          }
          const returnTypeName = returnType.name;
          const argumentTypeNames = argumentTypes.map((t) => t.name);
          const signature = "(" + argumentTypeNames.join("") + ")" + returnTypeName;
          dexMethods.push([name, returnTypeName, argumentTypeNames, thrownTypeNames, type === STATIC_METHOD ? kAccStatic2 : 0]);
          implMethods.push([name, signature, type, returnType, argumentTypes, impl]);
        });
        const unimplementedMethodIds = Object.keys(pendingOverloads);
        if (unimplementedMethodIds.length > 0) {
          throw new Error("Missing implementation for: " + unimplementedMethodIds.join(", "));
        }
        const dex = DexFile.fromBuffer(mkdex_default(dexSpec), this);
        try {
          dex.load();
        } finally {
          dex.file.delete();
        }
        const classWrapper = this.use(spec.name);
        const numMethods = methodEntries.length;
        if (numMethods > 0) {
          const methodElementSize = 3 * pointerSize7;
          const methodElements = Memory.alloc(numMethods * methodElementSize);
          const nativeMethods = [];
          const temporaryHandles = [];
          implMethods.forEach(([name, signature, type, returnType, argumentTypes, impl], index) => {
            const rawName = Memory.allocUtf8String(name);
            const rawSignature = Memory.allocUtf8String(signature);
            const rawImpl = implement(name, classWrapper, type, returnType, argumentTypes, impl);
            methodElements.add(index * methodElementSize).writePointer(rawName);
            methodElements.add(index * methodElementSize + pointerSize7).writePointer(rawSignature);
            methodElements.add(index * methodElementSize + 2 * pointerSize7).writePointer(rawImpl);
            temporaryHandles.push(rawName, rawSignature);
            nativeMethods.push(rawImpl);
          });
          const h = classWrapper.$borrowClassHandle(env);
          tempHandles.push(h);
          const classHandle = h.value;
          env.registerNatives(classHandle, methodElements, numMethods);
          env.throwIfExceptionPending();
          classWrapper.$nativeMethods = nativeMethods;
        }
        return classWrapper;
      } finally {
        tempHandles.forEach((h) => {
          h.unref(env);
        });
      }
    }
    choose(specifier, callbacks) {
      const env = vm2.getEnv();
      const { flavor } = api;
      if (flavor === "jvm") {
        this._chooseObjectsJvm(specifier, env, callbacks);
      } else if (flavor === "art") {
        const legacyApiMissing = api["art::gc::Heap::VisitObjects"] === void 0;
        if (legacyApiMissing) {
          const preA12ApiMissing = api["art::gc::Heap::GetInstances"] === void 0;
          if (preA12ApiMissing) {
            return this._chooseObjectsJvm(specifier, env, callbacks);
          }
        }
        withRunnableArtThread(vm2, env, (thread) => {
          if (legacyApiMissing) {
            this._chooseObjectsArtPreA12(specifier, env, thread, callbacks);
          } else {
            this._chooseObjectsArtLegacy(specifier, env, thread, callbacks);
          }
        });
      } else {
        this._chooseObjectsDalvik(specifier, env, callbacks);
      }
    }
    _chooseObjectsJvm(className, env, callbacks) {
      const classWrapper = this.use(className);
      const { jvmti } = api;
      const JVMTI_ITERATION_CONTINUE = 1;
      const JVMTI_HEAP_OBJECT_EITHER = 3;
      const h = classWrapper.$borrowClassHandle(env);
      const tag = int64(h.value.toString());
      try {
        const heapObjectCallback = new NativeCallback((classTag, size, tagPtr2, userData) => {
          tagPtr2.writeS64(tag);
          return JVMTI_ITERATION_CONTINUE;
        }, "int", ["int64", "int64", "pointer", "pointer"]);
        jvmti.iterateOverInstancesOfClass(h.value, JVMTI_HEAP_OBJECT_EITHER, heapObjectCallback, h.value);
        const tagPtr = Memory.alloc(8);
        tagPtr.writeS64(tag);
        const countPtr = Memory.alloc(jsizeSize3);
        const objectsPtr = Memory.alloc(pointerSize7);
        jvmti.getObjectsWithTags(1, tagPtr, countPtr, objectsPtr, NULL);
        const count = countPtr.readS32();
        const objects = objectsPtr.readPointer();
        const handles = [];
        for (let i = 0; i !== count; i++) {
          handles.push(objects.add(i * pointerSize7).readPointer());
        }
        jvmti.deallocate(objects);
        try {
          for (const handle of handles) {
            const instance = this.cast(handle, classWrapper);
            const result = callbacks.onMatch(instance);
            if (result === "stop") {
              break;
            }
          }
          callbacks.onComplete();
        } finally {
          handles.forEach((handle) => {
            env.deleteLocalRef(handle);
          });
        }
      } finally {
        h.unref(env);
      }
    }
    _chooseObjectsArtPreA12(className, env, thread, callbacks) {
      const classWrapper = this.use(className);
      const scope = VariableSizedHandleScope.$new(thread, vm2);
      let needle;
      const h = classWrapper.$borrowClassHandle(env);
      try {
        const object = api["art::JavaVMExt::DecodeGlobal"](api.vm, thread, h.value);
        needle = scope.newHandle(object);
      } finally {
        h.unref(env);
      }
      const maxCount = 0;
      const instances = HandleVector.$new();
      api["art::gc::Heap::GetInstances"](api.artHeap, scope, needle, maxCount, instances);
      const instanceHandles = instances.handles.map((handle) => env.newGlobalRef(handle));
      instances.$delete();
      scope.$delete();
      try {
        for (const handle of instanceHandles) {
          const instance = this.cast(handle, classWrapper);
          const result = callbacks.onMatch(instance);
          if (result === "stop") {
            break;
          }
        }
        callbacks.onComplete();
      } finally {
        instanceHandles.forEach((handle) => {
          env.deleteGlobalRef(handle);
        });
      }
    }
    _chooseObjectsArtLegacy(className, env, thread, callbacks) {
      const classWrapper = this.use(className);
      const instanceHandles = [];
      const addGlobalReference = api["art::JavaVMExt::AddGlobalRef"];
      const vmHandle = api.vm;
      let needle;
      const h = classWrapper.$borrowClassHandle(env);
      try {
        needle = api["art::JavaVMExt::DecodeGlobal"](vmHandle, thread, h.value).toInt32();
      } finally {
        h.unref(env);
      }
      const collectMatchingInstanceHandles = makeObjectVisitorPredicate(needle, (object) => {
        instanceHandles.push(addGlobalReference(vmHandle, thread, object));
      });
      api["art::gc::Heap::VisitObjects"](api.artHeap, collectMatchingInstanceHandles, NULL);
      try {
        for (const handle of instanceHandles) {
          const instance = this.cast(handle, classWrapper);
          const result = callbacks.onMatch(instance);
          if (result === "stop") {
            break;
          }
        }
      } finally {
        instanceHandles.forEach((handle) => {
          env.deleteGlobalRef(handle);
        });
      }
      callbacks.onComplete();
    }
    _chooseObjectsDalvik(className, callerEnv, callbacks) {
      const classWrapper = this.use(className);
      if (api.addLocalReference === null) {
        const libdvm = Process.getModuleByName("libdvm.so");
        let pattern;
        switch (Process.arch) {
          case "arm":
            pattern = "2d e9 f0 41 05 46 15 4e 0c 46 7e 44 11 b3 43 68";
            break;
          case "ia32":
            pattern = "8d 64 24 d4 89 5c 24 1c 89 74 24 20 e8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 85 d2";
            break;
        }
        Memory.scan(libdvm.base, libdvm.size, pattern, {
          onMatch: (address, size) => {
            let wrapper;
            if (Process.arch === "arm") {
              address = address.or(1);
              wrapper = new NativeFunction(address, "pointer", ["pointer", "pointer"]);
            } else {
              const thunk = Memory.alloc(Process.pageSize);
              Memory.patchCode(thunk, 16, (code3) => {
                const cw = new X86Writer(code3, { pc: thunk });
                cw.putMovRegRegOffsetPtr("eax", "esp", 4);
                cw.putMovRegRegOffsetPtr("edx", "esp", 8);
                cw.putJmpAddress(address);
                cw.flush();
              });
              wrapper = new NativeFunction(thunk, "pointer", ["pointer", "pointer"]);
              wrapper._thunk = thunk;
            }
            api.addLocalReference = wrapper;
            vm2.perform((env) => {
              enumerateInstances(this, env);
            });
            return "stop";
          },
          onError(reason) {
          },
          onComplete() {
            if (api.addLocalReference === null) {
              callbacks.onComplete();
            }
          }
        });
      } else {
        enumerateInstances(this, callerEnv);
      }
      function enumerateInstances(factory, env) {
        const { DVM_JNI_ENV_OFFSET_SELF: DVM_JNI_ENV_OFFSET_SELF2 } = android_exports;
        const thread = env.handle.add(DVM_JNI_ENV_OFFSET_SELF2).readPointer();
        let ptrClassObject;
        const h = classWrapper.$borrowClassHandle(env);
        try {
          ptrClassObject = api.dvmDecodeIndirectRef(thread, h.value);
        } finally {
          h.unref(env);
        }
        const pattern = ptrClassObject.toMatchPattern();
        const heapSourceBase = api.dvmHeapSourceGetBase();
        const heapSourceLimit = api.dvmHeapSourceGetLimit();
        const size = heapSourceLimit.sub(heapSourceBase).toInt32();
        Memory.scan(heapSourceBase, size, pattern, {
          onMatch: (address, size2) => {
            if (api.dvmIsValidObject(address)) {
              vm2.perform((env2) => {
                const thread2 = env2.handle.add(DVM_JNI_ENV_OFFSET_SELF2).readPointer();
                let instance;
                const localReference = api.addLocalReference(thread2, address);
                try {
                  instance = factory.cast(localReference, classWrapper);
                } finally {
                  env2.deleteLocalRef(localReference);
                }
                const result = callbacks.onMatch(instance);
                if (result === "stop") {
                  return "stop";
                }
              });
            }
          },
          onError(reason) {
          },
          onComplete() {
            callbacks.onComplete();
          }
        });
      }
    }
    openClassFile(filePath) {
      return new DexFile(filePath, null, this);
    }
    _getType(typeName, unbox = true) {
      return getType(typeName, unbox, this);
    }
  };
  function makeClassWrapperConstructor() {
    return function(handle, strategy, env, owned) {
      return Wrapper.call(this, handle, strategy, env, owned);
    };
  }
  function Wrapper(handle, strategy, env, owned = true) {
    if (handle !== null) {
      if (owned) {
        const h = env.newGlobalRef(handle);
        this.$h = h;
        this.$r = Script.bindWeak(this, vm2.makeHandleDestructor(h));
      } else {
        this.$h = handle;
        this.$r = null;
      }
    } else {
      this.$h = null;
      this.$r = null;
    }
    this.$t = strategy;
    return new Proxy(this, wrapperHandler);
  }
  wrapperHandler = {
    has(target, property) {
      if (property in target) {
        return true;
      }
      return target.$has(property);
    },
    get(target, property, receiver) {
      if (typeof property !== "string" || property.startsWith("$") || property === "class") {
        return target[property];
      }
      const unwrap2 = target.$find(property);
      if (unwrap2 !== null) {
        return unwrap2(receiver);
      }
      return target[property];
    },
    set(target, property, value, receiver) {
      target[property] = value;
      return true;
    },
    ownKeys(target) {
      return target.$list();
    },
    getOwnPropertyDescriptor(target, property) {
      if (Object.prototype.hasOwnProperty.call(target, property)) {
        return Object.getOwnPropertyDescriptor(target, property);
      }
      return {
        writable: false,
        configurable: true,
        enumerable: true
      };
    }
  };
  Object.defineProperties(Wrapper.prototype, {
    [Symbol.for("new")]: {
      enumerable: false,
      get() {
        return this.$getCtor("allocAndInit");
      }
    },
    $new: {
      enumerable: true,
      get() {
        return this[Symbol.for("new")];
      }
    },
    [Symbol.for("alloc")]: {
      enumerable: false,
      value() {
        const env = vm2.getEnv();
        const h = this.$borrowClassHandle(env);
        try {
          const obj = env.allocObject(h.value);
          const factory = this.$f;
          return factory.cast(obj, this);
        } finally {
          h.unref(env);
        }
      }
    },
    $alloc: {
      enumerable: true,
      get() {
        return this[Symbol.for("alloc")];
      }
    },
    [Symbol.for("init")]: {
      enumerable: false,
      get() {
        return this.$getCtor("initOnly");
      }
    },
    $init: {
      enumerable: true,
      get() {
        return this[Symbol.for("init")];
      }
    },
    [Symbol.for("dispose")]: {
      enumerable: false,
      value() {
        const ref = this.$r;
        if (ref !== null) {
          this.$r = null;
          Script.unbindWeak(ref);
        }
        if (this.$h !== null) {
          this.$h = void 0;
        }
      }
    },
    $dispose: {
      enumerable: true,
      get() {
        return this[Symbol.for("dispose")];
      }
    },
    [Symbol.for("clone")]: {
      enumerable: false,
      value(env) {
        const C = this.$C;
        return new C(this.$h, this.$t, env);
      }
    },
    $clone: {
      value(env) {
        return this[Symbol.for("clone")](env);
      }
    },
    [Symbol.for("class")]: {
      enumerable: false,
      get() {
        const env = vm2.getEnv();
        const h = this.$borrowClassHandle(env);
        try {
          const factory = this.$f;
          return factory.cast(h.value, factory.use("java.lang.Class"));
        } finally {
          h.unref(env);
        }
      }
    },
    class: {
      enumerable: true,
      get() {
        return this[Symbol.for("class")];
      }
    },
    [Symbol.for("className")]: {
      enumerable: false,
      get() {
        const handle = this.$h;
        if (handle === null) {
          return this.$n;
        }
        return vm2.getEnv().getObjectClassName(handle);
      }
    },
    $className: {
      enumerable: true,
      get() {
        return this[Symbol.for("className")];
      }
    },
    [Symbol.for("ownMembers")]: {
      enumerable: false,
      get() {
        const model = this.$l;
        return model.list();
      }
    },
    $ownMembers: {
      enumerable: true,
      get() {
        return this[Symbol.for("ownMembers")];
      }
    },
    [Symbol.for("super")]: {
      enumerable: false,
      get() {
        const env = vm2.getEnv();
        const C = this.$s.$C;
        return new C(this.$h, STRATEGY_DIRECT, env);
      }
    },
    $super: {
      enumerable: true,
      get() {
        return this[Symbol.for("super")];
      }
    },
    [Symbol.for("s")]: {
      enumerable: false,
      get() {
        const proto = Object.getPrototypeOf(this);
        let superWrapper = proto.$_s;
        if (superWrapper === void 0) {
          const env = vm2.getEnv();
          const h = this.$borrowClassHandle(env);
          try {
            const superHandle = env.getSuperclass(h.value);
            if (!superHandle.isNull()) {
              try {
                const superClassName = env.getClassName(superHandle);
                const factory = proto.$f;
                superWrapper = factory._getUsedClass(superClassName);
                if (superWrapper === void 0) {
                  try {
                    const getSuperClassHandle = makeSuperHandleGetter(this);
                    superWrapper = factory._make(superClassName, getSuperClassHandle, env);
                  } finally {
                    factory._setUsedClass(superClassName, superWrapper);
                  }
                }
              } finally {
                env.deleteLocalRef(superHandle);
              }
            } else {
              superWrapper = null;
            }
          } finally {
            h.unref(env);
          }
          proto.$_s = superWrapper;
        }
        return superWrapper;
      }
    },
    $s: {
      get() {
        return this[Symbol.for("s")];
      }
    },
    [Symbol.for("isSameObject")]: {
      enumerable: false,
      value(obj) {
        const env = vm2.getEnv();
        return env.isSameObject(obj.$h, this.$h);
      }
    },
    $isSameObject: {
      value(obj) {
        return this[Symbol.for("isSameObject")](obj);
      }
    },
    [Symbol.for("getCtor")]: {
      enumerable: false,
      value(type) {
        const slot = this.$c;
        let ctor = slot[0];
        if (ctor === null) {
          const env = vm2.getEnv();
          const h = this.$borrowClassHandle(env);
          try {
            ctor = makeConstructor(h.value, this.$w, env);
            slot[0] = ctor;
          } finally {
            h.unref(env);
          }
        }
        return ctor[type];
      }
    },
    $getCtor: {
      value(type) {
        return this[Symbol.for("getCtor")](type);
      }
    },
    [Symbol.for("borrowClassHandle")]: {
      enumerable: false,
      value(env) {
        const className = this.$n;
        const classHandles = this.$f._classHandles;
        let handle = classHandles.get(className);
        if (handle === void 0) {
          handle = new ClassHandle(this.$gch(env), env);
          classHandles.set(className, handle, env);
        }
        return handle.ref();
      }
    },
    $borrowClassHandle: {
      value(env) {
        return this[Symbol.for("borrowClassHandle")](env);
      }
    },
    [Symbol.for("copyClassHandle")]: {
      enumerable: false,
      value(env) {
        const h = this.$borrowClassHandle(env);
        try {
          return env.newLocalRef(h.value);
        } finally {
          h.unref(env);
        }
      }
    },
    $copyClassHandle: {
      value(env) {
        return this[Symbol.for("copyClassHandle")](env);
      }
    },
    [Symbol.for("getHandle")]: {
      enumerable: false,
      value(env) {
        const handle = this.$h;
        const isDisposed = handle === void 0;
        if (isDisposed) {
          throw new Error("Wrapper is disposed; perhaps it was borrowed from a hook instead of calling Java.retain() to make a long-lived wrapper?");
        }
        return handle;
      }
    },
    $getHandle: {
      value(env) {
        return this[Symbol.for("getHandle")](env);
      }
    },
    [Symbol.for("list")]: {
      enumerable: false,
      value() {
        const superWrapper = this.$s;
        const superMembers = superWrapper !== null ? superWrapper.$list() : [];
        const model = this.$l;
        return Array.from(new Set(superMembers.concat(model.list())));
      }
    },
    $list: {
      get() {
        return this[Symbol.for("list")];
      }
    },
    [Symbol.for("has")]: {
      enumerable: false,
      value(member) {
        const members = this.$m;
        if (members.has(member)) {
          return true;
        }
        const model = this.$l;
        if (model.has(member)) {
          return true;
        }
        const superWrapper = this.$s;
        if (superWrapper !== null && superWrapper.$has(member)) {
          return true;
        }
        return false;
      }
    },
    $has: {
      value(member) {
        return this[Symbol.for("has")](member);
      }
    },
    [Symbol.for("find")]: {
      enumerable: false,
      value(member) {
        const members = this.$m;
        let value = members.get(member);
        if (value !== void 0) {
          return value;
        }
        const model = this.$l;
        const spec = model.find(member);
        if (spec !== null) {
          const env = vm2.getEnv();
          const h = this.$borrowClassHandle(env);
          try {
            value = makeMember(member, spec, h.value, this.$w, env);
          } finally {
            h.unref(env);
          }
          members.set(member, value);
          return value;
        }
        const superWrapper = this.$s;
        if (superWrapper !== null) {
          return superWrapper.$find(member);
        }
        return null;
      }
    },
    $find: {
      value(member) {
        return this[Symbol.for("find")](member);
      }
    },
    [Symbol.for("toJSON")]: {
      enumerable: false,
      value() {
        const wrapperName = this.$n;
        const handle = this.$h;
        if (handle === null) {
          return `<class: ${wrapperName}>`;
        }
        const actualName = this.$className;
        if (wrapperName === actualName) {
          return `<instance: ${wrapperName}>`;
        }
        return `<instance: ${wrapperName}, $className: ${actualName}>`;
      }
    },
    toJSON: {
      get() {
        return this[Symbol.for("toJSON")];
      }
    }
  });
  function ClassHandle(value, env) {
    this.value = env.newGlobalRef(value);
    env.deleteLocalRef(value);
    this.refs = 1;
  }
  ClassHandle.prototype.ref = function() {
    this.refs++;
    return this;
  };
  ClassHandle.prototype.unref = function(env) {
    if (--this.refs === 0) {
      env.deleteGlobalRef(this.value);
    }
  };
  function releaseClassHandle(handle, env) {
    handle.unref(env);
  }
  function makeBasicClassHandleGetter(className) {
    const canonicalClassName = className.replace(/\./g, "/");
    return function(env) {
      const tid = getCurrentThreadId();
      ignore(tid);
      try {
        return env.findClass(canonicalClassName);
      } finally {
        unignore(tid);
      }
    };
  }
  function makeLoaderClassHandleGetter(className, usedLoader, callerEnv) {
    if (cachedLoaderMethod === null) {
      cachedLoaderInvoke = callerEnv.vaMethod("pointer", ["pointer"]);
      cachedLoaderMethod = usedLoader.loadClass.overload("java.lang.String").handle;
    }
    callerEnv = null;
    return function(env) {
      const classNameValue = env.newStringUtf(className);
      const tid = getCurrentThreadId();
      ignore(tid);
      try {
        const result = cachedLoaderInvoke(env.handle, usedLoader.$h, cachedLoaderMethod, classNameValue);
        env.throwIfExceptionPending();
        return result;
      } finally {
        unignore(tid);
        env.deleteLocalRef(classNameValue);
      }
    };
  }
  function makeSuperHandleGetter(classWrapper) {
    return function(env) {
      const h = classWrapper.$borrowClassHandle(env);
      try {
        return env.getSuperclass(h.value);
      } finally {
        h.unref(env);
      }
    };
  }
  function makeConstructor(classHandle, classWrapper, env) {
    const { $n: className, $f: factory } = classWrapper;
    const methodName = basename(className);
    const Class = env.javaLangClass();
    const Constructor = env.javaLangReflectConstructor();
    const invokeObjectMethodNoArgs = env.vaMethod("pointer", []);
    const invokeUInt8MethodNoArgs = env.vaMethod("uint8", []);
    const jsCtorMethods = [];
    const jsInitMethods = [];
    const jsRetType = factory._getType(className, false);
    const jsVoidType = factory._getType("void", false);
    const constructors = invokeObjectMethodNoArgs(env.handle, classHandle, Class.getDeclaredConstructors);
    try {
      const n = env.getArrayLength(constructors);
      if (n !== 0) {
        for (let i = 0; i !== n; i++) {
          let methodId, types;
          const constructor = env.getObjectArrayElement(constructors, i);
          try {
            methodId = env.fromReflectedMethod(constructor);
            types = invokeObjectMethodNoArgs(env.handle, constructor, Constructor.getGenericParameterTypes);
          } finally {
            env.deleteLocalRef(constructor);
          }
          let jsArgTypes;
          try {
            jsArgTypes = readTypeNames(env, types).map((name) => factory._getType(name));
          } finally {
            env.deleteLocalRef(types);
          }
          jsCtorMethods.push(makeMethod(methodName, classWrapper, CONSTRUCTOR_METHOD, methodId, jsRetType, jsArgTypes, env));
          jsInitMethods.push(makeMethod(methodName, classWrapper, INSTANCE_METHOD, methodId, jsVoidType, jsArgTypes, env));
        }
      } else {
        const isInterface = invokeUInt8MethodNoArgs(env.handle, classHandle, Class.isInterface);
        if (isInterface) {
          throw new Error("cannot instantiate an interface");
        }
        const defaultClass = env.javaLangObject();
        const defaultConstructor = env.getMethodId(defaultClass, "<init>", "()V");
        jsCtorMethods.push(makeMethod(methodName, classWrapper, CONSTRUCTOR_METHOD, defaultConstructor, jsRetType, [], env));
        jsInitMethods.push(makeMethod(methodName, classWrapper, INSTANCE_METHOD, defaultConstructor, jsVoidType, [], env));
      }
    } finally {
      env.deleteLocalRef(constructors);
    }
    if (jsInitMethods.length === 0) {
      throw new Error("no supported overloads");
    }
    return {
      allocAndInit: makeMethodDispatcher(jsCtorMethods),
      initOnly: makeMethodDispatcher(jsInitMethods)
    };
  }
  function makeMember(name, spec, classHandle, classWrapper, env) {
    if (spec.startsWith("m")) {
      return makeMethodFromSpec(name, spec, classHandle, classWrapper, env);
    }
    return makeFieldFromSpec(name, spec, classHandle, classWrapper, env);
  }
  function makeMethodFromSpec(name, spec, classHandle, classWrapper, env) {
    const { $f: factory } = classWrapper;
    const overloads = spec.split(":").slice(1);
    const Method = env.javaLangReflectMethod();
    const invokeObjectMethodNoArgs = env.vaMethod("pointer", []);
    const invokeUInt8MethodNoArgs = env.vaMethod("uint8", []);
    const methods = overloads.map((params) => {
      const type = params[0] === "s" ? STATIC_METHOD : INSTANCE_METHOD;
      const methodId = ptr(params.substr(1));
      let jsRetType;
      const jsArgTypes = [];
      const handle = env.toReflectedMethod(classHandle, methodId, type === STATIC_METHOD ? 1 : 0);
      try {
        const isVarArgs = !!invokeUInt8MethodNoArgs(env.handle, handle, Method.isVarArgs);
        const retType = invokeObjectMethodNoArgs(env.handle, handle, Method.getGenericReturnType);
        env.throwIfExceptionPending();
        try {
          jsRetType = factory._getType(env.getTypeName(retType));
        } finally {
          env.deleteLocalRef(retType);
        }
        const argTypes = invokeObjectMethodNoArgs(env.handle, handle, Method.getParameterTypes);
        try {
          const n = env.getArrayLength(argTypes);
          for (let i = 0; i !== n; i++) {
            const t = env.getObjectArrayElement(argTypes, i);
            let argClassName;
            try {
              argClassName = isVarArgs && i === n - 1 ? env.getArrayTypeName(t) : env.getTypeName(t);
            } finally {
              env.deleteLocalRef(t);
            }
            const argType = factory._getType(argClassName);
            jsArgTypes.push(argType);
          }
        } finally {
          env.deleteLocalRef(argTypes);
        }
      } catch (e) {
        return null;
      } finally {
        env.deleteLocalRef(handle);
      }
      return makeMethod(name, classWrapper, type, methodId, jsRetType, jsArgTypes, env);
    }).filter((m) => m !== null);
    if (methods.length === 0) {
      throw new Error("No supported overloads");
    }
    if (name === "valueOf") {
      ensureDefaultValueOfImplemented(methods);
    }
    const result = makeMethodDispatcher(methods);
    return function(receiver) {
      return result;
    };
  }
  function makeMethodDispatcher(overloads) {
    const m = makeMethodDispatcherCallable();
    Object.setPrototypeOf(m, dispatcherPrototype);
    m._o = overloads;
    return m;
  }
  function makeMethodDispatcherCallable() {
    const m = function() {
      return m.invoke(this, arguments);
    };
    return m;
  }
  dispatcherPrototype = Object.create(Function.prototype, {
    overloads: {
      enumerable: true,
      get() {
        return this._o;
      }
    },
    overload: {
      value(...args) {
        const overloads = this._o;
        const numArgs = args.length;
        const signature = args.join(":");
        for (let i = 0; i !== overloads.length; i++) {
          const method = overloads[i];
          const { argumentTypes } = method;
          if (argumentTypes.length !== numArgs) {
            continue;
          }
          const s = argumentTypes.map((t) => t.className).join(":");
          if (s === signature) {
            return method;
          }
        }
        throwOverloadError(this.methodName, this.overloads, "specified argument types do not match any of:");
      }
    },
    methodName: {
      enumerable: true,
      get() {
        return this._o[0].methodName;
      }
    },
    holder: {
      enumerable: true,
      get() {
        return this._o[0].holder;
      }
    },
    type: {
      enumerable: true,
      get() {
        return this._o[0].type;
      }
    },
    handle: {
      enumerable: true,
      get() {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].handle;
      }
    },
    implementation: {
      enumerable: true,
      get() {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].implementation;
      },
      set(fn) {
        throwIfDispatcherAmbiguous(this);
        this._o[0].implementation = fn;
      }
    },
    returnType: {
      enumerable: true,
      get() {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].returnType;
      }
    },
    argumentTypes: {
      enumerable: true,
      get() {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].argumentTypes;
      }
    },
    canInvokeWith: {
      enumerable: true,
      get(args) {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].canInvokeWith;
      }
    },
    clone: {
      enumerable: true,
      value(options) {
        throwIfDispatcherAmbiguous(this);
        return this._o[0].clone(options);
      }
    },
    invoke: {
      value(receiver, args) {
        const overloads = this._o;
        const isInstance = receiver.$h !== null;
        for (let i = 0; i !== overloads.length; i++) {
          const method = overloads[i];
          if (!method.canInvokeWith(args)) {
            continue;
          }
          if (method.type === INSTANCE_METHOD && !isInstance) {
            const name = this.methodName;
            if (name === "toString") {
              return `<class: ${receiver.$n}>`;
            }
            throw new Error(name + ": cannot call instance method without an instance");
          }
          return method.apply(receiver, args);
        }
        if (this.methodName === "toString") {
          return `<class: ${receiver.$n}>`;
        }
        throwOverloadError(this.methodName, this.overloads, "argument types do not match any of:");
      }
    }
  });
  function makeOverloadId(name, returnType, argumentTypes) {
    return `${returnType.className} ${name}(${argumentTypes.map((t) => t.className).join(", ")})`;
  }
  function throwIfDispatcherAmbiguous(dispatcher) {
    const methods = dispatcher._o;
    if (methods.length > 1) {
      throwOverloadError(methods[0].methodName, methods, "has more than one overload, use .overload(<signature>) to choose from:");
    }
  }
  function throwOverloadError(name, methods, message) {
    const methodsSortedByArity = methods.slice().sort((a, b) => a.argumentTypes.length - b.argumentTypes.length);
    const overloads = methodsSortedByArity.map((m) => {
      const argTypes = m.argumentTypes;
      if (argTypes.length > 0) {
        return ".overload('" + m.argumentTypes.map((t) => t.className).join("', '") + "')";
      } else {
        return ".overload()";
      }
    });
    throw new Error(`${name}(): ${message}
	${overloads.join("\n	")}`);
  }
  function makeMethod(methodName, classWrapper, type, methodId, retType, argTypes, env, invocationOptions) {
    const rawRetType = retType.type;
    const rawArgTypes = argTypes.map((t) => t.type);
    if (env === null) {
      env = vm2.getEnv();
    }
    let callVirtually, callDirectly;
    if (type === INSTANCE_METHOD) {
      callVirtually = env.vaMethod(rawRetType, rawArgTypes, invocationOptions);
      callDirectly = env.nonvirtualVaMethod(rawRetType, rawArgTypes, invocationOptions);
    } else if (type === STATIC_METHOD) {
      callVirtually = env.staticVaMethod(rawRetType, rawArgTypes, invocationOptions);
      callDirectly = callVirtually;
    } else {
      callVirtually = env.constructor(rawArgTypes, invocationOptions);
      callDirectly = callVirtually;
    }
    return makeMethodInstance([methodName, classWrapper, type, methodId, retType, argTypes, callVirtually, callDirectly]);
  }
  function makeMethodInstance(params) {
    const m = makeMethodCallable();
    Object.setPrototypeOf(m, methodPrototype);
    m._p = params;
    return m;
  }
  function makeMethodCallable() {
    const m = function() {
      return m.invoke(this, arguments);
    };
    return m;
  }
  methodPrototype = Object.create(Function.prototype, {
    methodName: {
      enumerable: true,
      get() {
        return this._p[0];
      }
    },
    holder: {
      enumerable: true,
      get() {
        return this._p[1];
      }
    },
    type: {
      enumerable: true,
      get() {
        return this._p[2];
      }
    },
    handle: {
      enumerable: true,
      get() {
        return this._p[3];
      }
    },
    implementation: {
      enumerable: true,
      get() {
        const replacement = this._r;
        return replacement !== void 0 ? replacement : null;
      },
      set(fn) {
        const params = this._p;
        const holder = params[1];
        const type = params[2];
        if (type === CONSTRUCTOR_METHOD) {
          throw new Error("Reimplementing $new is not possible; replace implementation of $init instead");
        }
        const existingReplacement = this._r;
        if (existingReplacement !== void 0) {
          holder.$f._patchedMethods.delete(this);
          const mangler = existingReplacement._m;
          mangler.revert(vm2);
          this._r = void 0;
        }
        if (fn !== null) {
          const [methodName, classWrapper, type2, methodId, retType, argTypes] = params;
          const replacement = implement(methodName, classWrapper, type2, retType, argTypes, fn, this);
          const mangler = makeMethodMangler3(methodId);
          replacement._m = mangler;
          this._r = replacement;
          mangler.replace(replacement, type2 === INSTANCE_METHOD, argTypes, vm2, api);
          holder.$f._patchedMethods.add(this);
        }
      }
    },
    returnType: {
      enumerable: true,
      get() {
        return this._p[4];
      }
    },
    argumentTypes: {
      enumerable: true,
      get() {
        return this._p[5];
      }
    },
    canInvokeWith: {
      enumerable: true,
      value(args) {
        const argTypes = this._p[5];
        if (args.length !== argTypes.length) {
          return false;
        }
        return argTypes.every((t, i) => {
          return t.isCompatible(args[i]);
        });
      }
    },
    clone: {
      enumerable: true,
      value(options) {
        const params = this._p.slice(0, 6);
        return makeMethod(...params, null, options);
      }
    },
    invoke: {
      value(receiver, args) {
        const env = vm2.getEnv();
        const params = this._p;
        const type = params[2];
        const retType = params[4];
        const argTypes = params[5];
        const replacement = this._r;
        const isInstanceMethod = type === INSTANCE_METHOD;
        const numArgs = args.length;
        const frameCapacity = 2 + numArgs;
        env.pushLocalFrame(frameCapacity);
        let borrowedHandle = null;
        try {
          let jniThis;
          if (isInstanceMethod) {
            jniThis = receiver.$getHandle();
          } else {
            borrowedHandle = receiver.$borrowClassHandle(env);
            jniThis = borrowedHandle.value;
          }
          let methodId;
          let strategy = receiver.$t;
          if (replacement === void 0) {
            methodId = params[3];
          } else {
            const mangler = replacement._m;
            methodId = mangler.resolveTarget(receiver, isInstanceMethod, env, api);
            if (isArtVm) {
              const pendingCalls = replacement._c;
              if (pendingCalls.has(getCurrentThreadId())) {
                strategy = STRATEGY_DIRECT;
              }
            }
          }
          const jniArgs = [
            env.handle,
            jniThis,
            methodId
          ];
          for (let i = 0; i !== numArgs; i++) {
            jniArgs.push(argTypes[i].toJni(args[i], env));
          }
          let jniCall;
          if (strategy === STRATEGY_VIRTUAL) {
            jniCall = params[6];
          } else {
            jniCall = params[7];
            if (isInstanceMethod) {
              jniArgs.splice(2, 0, receiver.$copyClassHandle(env));
            }
          }
          const jniRetval = jniCall.apply(null, jniArgs);
          env.throwIfExceptionPending();
          return retType.fromJni(jniRetval, env, true);
        } finally {
          if (borrowedHandle !== null) {
            borrowedHandle.unref(env);
          }
          env.popLocalFrame(NULL);
        }
      }
    },
    toString: {
      enumerable: true,
      value() {
        return `function ${this.methodName}(${this.argumentTypes.map((t) => t.className).join(", ")}): ${this.returnType.className}`;
      }
    }
  });
  function implement(methodName, classWrapper, type, retType, argTypes, handler, fallback = null) {
    const pendingCalls = /* @__PURE__ */ new Set();
    const f = makeMethodImplementation([methodName, classWrapper, type, retType, argTypes, handler, fallback, pendingCalls]);
    const impl = new NativeCallback(f, retType.type, ["pointer", "pointer"].concat(argTypes.map((t) => t.type)));
    impl._c = pendingCalls;
    return impl;
  }
  function makeMethodImplementation(params) {
    return function() {
      return handleMethodInvocation(arguments, params);
    };
  }
  function handleMethodInvocation(jniArgs, params) {
    const env = new Env(jniArgs[0], vm2);
    const [methodName, classWrapper, type, retType, argTypes, handler, fallback, pendingCalls] = params;
    const ownedObjects = [];
    let self;
    if (type === INSTANCE_METHOD) {
      const C = classWrapper.$C;
      self = new C(jniArgs[1], STRATEGY_VIRTUAL, env, false);
    } else {
      self = classWrapper;
    }
    const tid = getCurrentThreadId();
    env.pushLocalFrame(3);
    let haveFrame = true;
    vm2.link(tid, env);
    try {
      pendingCalls.add(tid);
      let fn;
      if (fallback === null || !ignoredThreads.has(tid)) {
        fn = handler;
      } else {
        fn = fallback;
      }
      const args = [];
      const numArgs = jniArgs.length - 2;
      for (let i = 0; i !== numArgs; i++) {
        const t = argTypes[i];
        const value = t.fromJni(jniArgs[2 + i], env, false);
        args.push(value);
        ownedObjects.push(value);
      }
      const retval = fn.apply(self, args);
      if (!retType.isCompatible(retval)) {
        throw new Error(`Implementation for ${methodName} expected return value compatible with ${retType.className}`);
      }
      let jniRetval = retType.toJni(retval, env);
      if (retType.type === "pointer") {
        jniRetval = env.popLocalFrame(jniRetval);
        haveFrame = false;
        ownedObjects.push(retval);
      }
      return jniRetval;
    } catch (e) {
      const jniException = e.$h;
      if (jniException !== void 0) {
        env.throw(jniException);
      } else {
        Script.nextTick(() => {
          throw e;
        });
      }
      return retType.defaultValue;
    } finally {
      vm2.unlink(tid);
      if (haveFrame) {
        env.popLocalFrame(NULL);
      }
      pendingCalls.delete(tid);
      ownedObjects.forEach((obj) => {
        if (obj === null) {
          return;
        }
        const dispose = obj.$dispose;
        if (dispose !== void 0) {
          dispose.call(obj);
        }
      });
    }
  }
  function ensureDefaultValueOfImplemented(methods) {
    const { holder, type } = methods[0];
    const hasDefaultValueOf = methods.some((m) => m.type === type && m.argumentTypes.length === 0);
    if (hasDefaultValueOf) {
      return;
    }
    methods.push(makeValueOfMethod([holder, type]));
  }
  function makeValueOfMethod(params) {
    const m = makeValueOfCallable();
    Object.setPrototypeOf(m, valueOfPrototype);
    m._p = params;
    return m;
  }
  function makeValueOfCallable() {
    const m = function() {
      return this;
    };
    return m;
  }
  valueOfPrototype = Object.create(Function.prototype, {
    methodName: {
      enumerable: true,
      get() {
        return "valueOf";
      }
    },
    holder: {
      enumerable: true,
      get() {
        return this._p[0];
      }
    },
    type: {
      enumerable: true,
      get() {
        return this._p[1];
      }
    },
    handle: {
      enumerable: true,
      get() {
        return NULL;
      }
    },
    implementation: {
      enumerable: true,
      get() {
        return null;
      },
      set(fn) {
      }
    },
    returnType: {
      enumerable: true,
      get() {
        const classWrapper = this.holder;
        return classWrapper.$f.use(classWrapper.$n);
      }
    },
    argumentTypes: {
      enumerable: true,
      get() {
        return [];
      }
    },
    canInvokeWith: {
      enumerable: true,
      value(args) {
        return args.length === 0;
      }
    },
    clone: {
      enumerable: true,
      value(options) {
        throw new Error("Invalid operation");
      }
    }
  });
  function makeFieldFromSpec(name, spec, classHandle, classWrapper, env) {
    const type = spec[2] === "s" ? STATIC_FIELD : INSTANCE_FIELD;
    const id = ptr(spec.substr(3));
    const { $f: factory } = classWrapper;
    let fieldType;
    const field = env.toReflectedField(classHandle, id, type === STATIC_FIELD ? 1 : 0);
    try {
      fieldType = env.vaMethod("pointer", [])(env.handle, field, env.javaLangReflectField().getGenericType);
      env.throwIfExceptionPending();
    } finally {
      env.deleteLocalRef(field);
    }
    let rtype;
    try {
      rtype = factory._getType(env.getTypeName(fieldType));
    } finally {
      env.deleteLocalRef(fieldType);
    }
    let getValue, setValue;
    const rtypeJni = rtype.type;
    if (type === STATIC_FIELD) {
      getValue = env.getStaticField(rtypeJni);
      setValue = env.setStaticField(rtypeJni);
    } else {
      getValue = env.getField(rtypeJni);
      setValue = env.setField(rtypeJni);
    }
    return makeFieldFromParams([type, rtype, id, getValue, setValue]);
  }
  function makeFieldFromParams(params) {
    return function(receiver) {
      return new Field([receiver].concat(params));
    };
  }
  function Field(params) {
    this._p = params;
  }
  Object.defineProperties(Field.prototype, {
    value: {
      enumerable: true,
      get() {
        const [holder, type, rtype, id, getValue] = this._p;
        const env = vm2.getEnv();
        env.pushLocalFrame(4);
        let borrowedHandle = null;
        try {
          let jniThis;
          if (type === INSTANCE_FIELD) {
            jniThis = holder.$getHandle();
            if (jniThis === null) {
              throw new Error("Cannot access an instance field without an instance");
            }
          } else {
            borrowedHandle = holder.$borrowClassHandle(env);
            jniThis = borrowedHandle.value;
          }
          const jniRetval = getValue(env.handle, jniThis, id);
          env.throwIfExceptionPending();
          return rtype.fromJni(jniRetval, env, true);
        } finally {
          if (borrowedHandle !== null) {
            borrowedHandle.unref(env);
          }
          env.popLocalFrame(NULL);
        }
      },
      set(value) {
        const [holder, type, rtype, id, , setValue] = this._p;
        const env = vm2.getEnv();
        env.pushLocalFrame(4);
        let borrowedHandle = null;
        try {
          let jniThis;
          if (type === INSTANCE_FIELD) {
            jniThis = holder.$getHandle();
            if (jniThis === null) {
              throw new Error("Cannot access an instance field without an instance");
            }
          } else {
            borrowedHandle = holder.$borrowClassHandle(env);
            jniThis = borrowedHandle.value;
          }
          if (!rtype.isCompatible(value)) {
            throw new Error(`Expected value compatible with ${rtype.className}`);
          }
          const jniValue = rtype.toJni(value, env);
          setValue(env.handle, jniThis, id, jniValue);
          env.throwIfExceptionPending();
        } finally {
          if (borrowedHandle !== null) {
            borrowedHandle.unref(env);
          }
          env.popLocalFrame(NULL);
        }
      }
    },
    holder: {
      enumerable: true,
      get() {
        return this._p[0];
      }
    },
    fieldType: {
      enumerable: true,
      get() {
        return this._p[1];
      }
    },
    fieldReturnType: {
      enumerable: true,
      get() {
        return this._p[2];
      }
    },
    toString: {
      enumerable: true,
      value() {
        const inlineString = `Java.Field{holder: ${this.holder}, fieldType: ${this.fieldType}, fieldReturnType: ${this.fieldReturnType}, value: ${this.value}}`;
        if (inlineString.length < 200) {
          return inlineString;
        }
        const multilineString = `Java.Field{
	holder: ${this.holder},
	fieldType: ${this.fieldType},
	fieldReturnType: ${this.fieldReturnType},
	value: ${this.value},
}`;
        return multilineString.split("\n").map((l) => l.length > 200 ? l.slice(0, l.indexOf(" ") + 1) + "...," : l).join("\n");
      }
    }
  });
  var DexFile = class _DexFile {
    static fromBuffer(buffer, factory) {
      const fileValue = createTemporaryDex(factory);
      const filePath = fileValue.getCanonicalPath().toString();
      const file = new File(filePath, "w");
      file.write(buffer.buffer);
      file.close();
      setReadOnlyDex(filePath, factory);
      return new _DexFile(filePath, fileValue, factory);
    }
    constructor(path, file, factory) {
      this.path = path;
      this.file = file;
      this._factory = factory;
    }
    load() {
      const { _factory: factory } = this;
      const { codeCacheDir } = factory;
      const DexClassLoader = factory.use("dalvik.system.DexClassLoader");
      const JFile = factory.use("java.io.File");
      let file = this.file;
      if (file === null) {
        file = factory.use("java.io.File").$new(this.path);
      }
      if (!file.exists()) {
        throw new Error("File not found");
      }
      JFile.$new(codeCacheDir).mkdirs();
      factory.loader = DexClassLoader.$new(file.getCanonicalPath(), codeCacheDir, null, factory.loader);
      vm2.preventDetachDueToClassLoader();
    }
    getClassNames() {
      const { _factory: factory } = this;
      const DexFile2 = factory.use("dalvik.system.DexFile");
      const optimizedDex = createTemporaryDex(factory);
      const dx = DexFile2.loadDex(this.path, optimizedDex.getCanonicalPath(), 0);
      const classNames = [];
      const enumeratorClassNames = dx.entries();
      while (enumeratorClassNames.hasMoreElements()) {
        classNames.push(enumeratorClassNames.nextElement().toString());
      }
      return classNames;
    }
  };
  function createTemporaryDex(factory) {
    const { cacheDir, tempFileNaming } = factory;
    const JFile = factory.use("java.io.File");
    const cacheDirValue = JFile.$new(cacheDir);
    cacheDirValue.mkdirs();
    return JFile.createTempFile(tempFileNaming.prefix, tempFileNaming.suffix + ".dex", cacheDirValue);
  }
  function setReadOnlyDex(filePath, factory) {
    const JFile = factory.use("java.io.File");
    const file = JFile.$new(filePath);
    file.setWritable(false, false);
  }
  function getFactoryCache() {
    switch (factoryCache.state) {
      case "empty": {
        factoryCache.state = "pending";
        const defaultFactory = factoryCache.factories[0];
        const HashMap = defaultFactory.use("java.util.HashMap");
        const Integer = defaultFactory.use("java.lang.Integer");
        factoryCache.loaders = HashMap.$new();
        factoryCache.Integer = Integer;
        const loader = defaultFactory.loader;
        if (loader !== null) {
          addFactoryToCache(defaultFactory, loader);
        }
        factoryCache.state = "ready";
        return factoryCache;
      }
      case "pending":
        do {
          Thread.sleep(0.05);
        } while (factoryCache.state === "pending");
        return factoryCache;
      case "ready":
        return factoryCache;
    }
  }
  function addFactoryToCache(factory, loader) {
    const { factories, loaders, Integer } = factoryCache;
    const index = Integer.$new(factories.indexOf(factory));
    loaders.put(loader, index);
    for (let l = loader.getParent(); l !== null; l = l.getParent()) {
      if (loaders.containsKey(l)) {
        break;
      }
      loaders.put(l, index);
    }
  }
  function ignore(threadId) {
    let count = ignoredThreads.get(threadId);
    if (count === void 0) {
      count = 0;
    }
    count++;
    ignoredThreads.set(threadId, count);
  }
  function unignore(threadId) {
    let count = ignoredThreads.get(threadId);
    if (count === void 0) {
      throw new Error(`Thread ${threadId} is not ignored`);
    }
    count--;
    if (count === 0) {
      ignoredThreads.delete(threadId);
    } else {
      ignoredThreads.set(threadId, count);
    }
  }
  function basename(className) {
    return className.slice(className.lastIndexOf(".") + 1);
  }
  function readTypeNames(env, types) {
    const names = [];
    const n = env.getArrayLength(types);
    for (let i = 0; i !== n; i++) {
      const t = env.getObjectArrayElement(types, i);
      try {
        names.push(env.getTypeName(t));
      } finally {
        env.deleteLocalRef(t);
      }
    }
    return names;
  }
  function makeSourceFileName(className) {
    const tokens = className.split(".");
    return tokens[tokens.length - 1] + ".java";
  }

  // ServerProject/tools/node_modules/frida-java-bridge/index.js
  var jsizeSize4 = 4;
  var pointerSize8 = Process.pointerSize;
  var Runtime = class {
    ACC_PUBLIC = 1;
    ACC_PRIVATE = 2;
    ACC_PROTECTED = 4;
    ACC_STATIC = 8;
    ACC_FINAL = 16;
    ACC_SYNCHRONIZED = 32;
    ACC_BRIDGE = 64;
    ACC_VARARGS = 128;
    ACC_NATIVE = 256;
    ACC_ABSTRACT = 1024;
    ACC_STRICT = 2048;
    ACC_SYNTHETIC = 4096;
    constructor() {
      this.classFactory = null;
      this.ClassFactory = ClassFactory;
      this.vm = null;
      this.api = null;
      this._initialized = false;
      this._apiError = null;
      this._wakeupHandler = null;
      this._pollListener = null;
      this._pendingMainOps = [];
      this._pendingVmOps = [];
      this._cachedIsAppProcess = null;
      try {
        this._tryInitialize();
      } catch (e) {
      }
    }
    _tryInitialize() {
      if (this._initialized) {
        return true;
      }
      if (this._apiError !== null) {
        throw this._apiError;
      }
      let api2;
      try {
        api2 = api_default();
        this.api = api2;
      } catch (e) {
        this._apiError = e;
        throw e;
      }
      if (api2 === null) {
        return false;
      }
      const vm3 = new VM(api2);
      this.vm = vm3;
      initialize(vm3);
      ClassFactory._initialize(vm3, api2);
      this.classFactory = new ClassFactory();
      this._initialized = true;
      return true;
    }
    _dispose() {
      if (this.api === null) {
        return;
      }
      const { vm: vm3 } = this;
      vm3.perform((env) => {
        ClassFactory._disposeAll(env);
        Env.dispose(env);
      });
      Script.nextTick(() => {
        VM.dispose(vm3);
      });
    }
    get available() {
      return this._tryInitialize();
    }
    get androidVersion() {
      return getAndroidVersion();
    }
    synchronized(obj, fn) {
      const { $h: objHandle = obj } = obj;
      if (!(objHandle instanceof NativePointer)) {
        throw new Error("Java.synchronized: the first argument `obj` must be either a pointer or a Java instance");
      }
      const env = this.vm.getEnv();
      checkJniResult("VM::MonitorEnter", env.monitorEnter(objHandle));
      try {
        fn();
      } finally {
        env.monitorExit(objHandle);
      }
    }
    enumerateLoadedClasses(callbacks) {
      this._checkAvailable();
      const { flavor } = this.api;
      if (flavor === "jvm") {
        this._enumerateLoadedClassesJvm(callbacks);
      } else if (flavor === "art") {
        this._enumerateLoadedClassesArt(callbacks);
      } else {
        this._enumerateLoadedClassesDalvik(callbacks);
      }
    }
    enumerateLoadedClassesSync() {
      const classes = [];
      this.enumerateLoadedClasses({
        onMatch(c) {
          classes.push(c);
        },
        onComplete() {
        }
      });
      return classes;
    }
    enumerateClassLoaders(callbacks) {
      this._checkAvailable();
      const { flavor } = this.api;
      if (flavor === "jvm") {
        this._enumerateClassLoadersJvm(callbacks);
      } else if (flavor === "art") {
        this._enumerateClassLoadersArt(callbacks);
      } else {
        throw new Error("Enumerating class loaders is not supported on Dalvik");
      }
    }
    enumerateClassLoadersSync() {
      const loaders = [];
      this.enumerateClassLoaders({
        onMatch(c) {
          loaders.push(c);
        },
        onComplete() {
        }
      });
      return loaders;
    }
    _enumerateLoadedClassesJvm(callbacks) {
      const { api: api2, vm: vm3 } = this;
      const { jvmti } = api2;
      const env = vm3.getEnv();
      const countPtr = Memory.alloc(jsizeSize4);
      const classesPtr = Memory.alloc(pointerSize8);
      jvmti.getLoadedClasses(countPtr, classesPtr);
      const count = countPtr.readS32();
      const classes = classesPtr.readPointer();
      const handles = [];
      for (let i = 0; i !== count; i++) {
        handles.push(classes.add(i * pointerSize8).readPointer());
      }
      jvmti.deallocate(classes);
      try {
        for (const handle of handles) {
          const className = env.getClassName(handle);
          callbacks.onMatch(className, handle);
        }
        callbacks.onComplete();
      } finally {
        handles.forEach((handle) => {
          env.deleteLocalRef(handle);
        });
      }
    }
    _enumerateClassLoadersJvm(callbacks) {
      this.choose("java.lang.ClassLoader", callbacks);
    }
    _enumerateLoadedClassesArt(callbacks) {
      const { vm: vm3, api: api2 } = this;
      const env = vm3.getEnv();
      const addGlobalReference = api2["art::JavaVMExt::AddGlobalRef"];
      const { vm: vmHandle } = api2;
      withRunnableArtThread(vm3, env, (thread) => {
        const collectClassHandles = makeArtClassVisitor((klass) => {
          const handle = addGlobalReference(vmHandle, thread, klass);
          try {
            const className = env.getClassName(handle);
            callbacks.onMatch(className, handle);
          } finally {
            env.deleteGlobalRef(handle);
          }
          return true;
        });
        api2["art::ClassLinker::VisitClasses"](api2.artClassLinker.address, collectClassHandles);
      });
      callbacks.onComplete();
    }
    _enumerateClassLoadersArt(callbacks) {
      const { classFactory: factory, vm: vm3, api: api2 } = this;
      const env = vm3.getEnv();
      const visitClassLoaders = api2["art::ClassLinker::VisitClassLoaders"];
      if (visitClassLoaders === void 0) {
        throw new Error("This API is only available on Android >= 7.0");
      }
      const ClassLoader = factory.use("java.lang.ClassLoader");
      const loaderHandles = [];
      const addGlobalReference = api2["art::JavaVMExt::AddGlobalRef"];
      const { vm: vmHandle } = api2;
      withRunnableArtThread(vm3, env, (thread) => {
        const collectLoaderHandles = makeArtClassLoaderVisitor((loader) => {
          loaderHandles.push(addGlobalReference(vmHandle, thread, loader));
          return true;
        });
        withAllArtThreadsSuspended(() => {
          visitClassLoaders(api2.artClassLinker.address, collectLoaderHandles);
        });
      });
      try {
        loaderHandles.forEach((handle) => {
          const loader = factory.cast(handle, ClassLoader);
          callbacks.onMatch(loader);
        });
      } finally {
        loaderHandles.forEach((handle) => {
          env.deleteGlobalRef(handle);
        });
      }
      callbacks.onComplete();
    }
    _enumerateLoadedClassesDalvik(callbacks) {
      const { api: api2 } = this;
      const HASH_TOMBSTONE = ptr("0xcbcacccd");
      const loadedClassesOffset = 172;
      const hashEntrySize = 8;
      const ptrLoadedClassesHashtable = api2.gDvm.add(loadedClassesOffset);
      const hashTable = ptrLoadedClassesHashtable.readPointer();
      const tableSize = hashTable.readS32();
      const ptrpEntries = hashTable.add(12);
      const pEntries = ptrpEntries.readPointer();
      const end = tableSize * hashEntrySize;
      for (let offset = 0; offset < end; offset += hashEntrySize) {
        const pEntryPtr = pEntries.add(offset);
        const dataPtr = pEntryPtr.add(4).readPointer();
        if (dataPtr.isNull() || dataPtr.equals(HASH_TOMBSTONE)) {
          continue;
        }
        const descriptionPtr = dataPtr.add(24).readPointer();
        const description = descriptionPtr.readUtf8String();
        if (description.startsWith("L")) {
          const name = description.substring(1, description.length - 1).replace(/\//g, ".");
          callbacks.onMatch(name);
        }
      }
      callbacks.onComplete();
    }
    enumerateMethods(query) {
      const { classFactory: factory } = this;
      const env = this.vm.getEnv();
      const ClassLoader = factory.use("java.lang.ClassLoader");
      return Model.enumerateMethods(query, this.api, env).map((group) => {
        const handle = group.loader;
        group.loader = handle !== null ? factory.wrap(handle, ClassLoader, env) : null;
        return group;
      });
    }
    scheduleOnMainThread(fn) {
      this.performNow(() => {
        this._pendingMainOps.push(fn);
        let { _wakeupHandler: wakeupHandler } = this;
        if (wakeupHandler === null) {
          const { classFactory: factory } = this;
          const Handler = factory.use("android.os.Handler");
          const Looper = factory.use("android.os.Looper");
          wakeupHandler = Handler.$new(Looper.getMainLooper());
          this._wakeupHandler = wakeupHandler;
        }
        if (this._pollListener === null) {
          this._pollListener = Interceptor.attach(Process.getModuleByName("libc.so").getExportByName("epoll_wait"), this._makePollHook());
          Interceptor.flush();
        }
        wakeupHandler.sendEmptyMessage(1);
      });
    }
    _makePollHook() {
      const mainThreadId = Process.id;
      const { _pendingMainOps: pending } = this;
      return function() {
        if (this.threadId !== mainThreadId) {
          return;
        }
        let fn;
        while ((fn = pending.shift()) !== void 0) {
          try {
            fn();
          } catch (e) {
            Script.nextTick(() => {
              throw e;
            });
          }
        }
      };
    }
    perform(fn) {
      this._checkAvailable();
      if (!this._isAppProcess() || this.classFactory.loader !== null) {
        try {
          this.vm.perform(fn);
        } catch (e) {
          Script.nextTick(() => {
            throw e;
          });
        }
      } else {
        this._pendingVmOps.push(fn);
        if (this._pendingVmOps.length === 1) {
          this._performPendingVmOpsWhenReady();
        }
      }
    }
    performNow(fn) {
      this._checkAvailable();
      return this.vm.perform(() => {
        const { classFactory: factory } = this;
        if (this._isAppProcess() && factory.loader === null) {
          const ActivityThread = factory.use("android.app.ActivityThread");
          const app = ActivityThread.currentApplication();
          if (app !== null) {
            initFactoryFromApplication(factory, app);
          }
        }
        return fn();
      });
    }
    _performPendingVmOpsWhenReady() {
      this.vm.perform(() => {
        const { classFactory: factory } = this;
        const ActivityThread = factory.use("android.app.ActivityThread");
        const app = ActivityThread.currentApplication();
        if (app !== null) {
          initFactoryFromApplication(factory, app);
          this._performPendingVmOps();
          return;
        }
        const runtime2 = this;
        let initialized = false;
        let hookpoint = "early";
        const handleBindApplication = ActivityThread.handleBindApplication;
        handleBindApplication.implementation = function(data) {
          if (data.instrumentationName.value !== null) {
            hookpoint = "late";
            const LoadedApk = factory.use("android.app.LoadedApk");
            const makeApplication = LoadedApk.makeApplication;
            makeApplication.implementation = function(forceDefaultAppClass, instrumentation) {
              if (!initialized) {
                initialized = true;
                initFactoryFromLoadedApk(factory, this);
                runtime2._performPendingVmOps();
              }
              return makeApplication.apply(this, arguments);
            };
          }
          handleBindApplication.apply(this, arguments);
        };
        const getPackageInfoCandidates = ActivityThread.getPackageInfo.overloads.map((m) => [m.argumentTypes.length, m]).sort(([arityA], [arityB]) => arityB - arityA).map(([_, method]) => method);
        const getPackageInfo = getPackageInfoCandidates[0];
        getPackageInfo.implementation = function(...args) {
          const apk = getPackageInfo.call(this, ...args);
          if (!initialized && hookpoint === "early") {
            initialized = true;
            initFactoryFromLoadedApk(factory, apk);
            runtime2._performPendingVmOps();
          }
          return apk;
        };
      });
    }
    _performPendingVmOps() {
      const { vm: vm3, _pendingVmOps: pending } = this;
      let fn;
      while ((fn = pending.shift()) !== void 0) {
        try {
          vm3.perform(fn);
        } catch (e) {
          Script.nextTick(() => {
            throw e;
          });
        }
      }
    }
    use(className, options) {
      return this.classFactory.use(className, options);
    }
    openClassFile(filePath) {
      return this.classFactory.openClassFile(filePath);
    }
    choose(specifier, callbacks) {
      this.classFactory.choose(specifier, callbacks);
    }
    retain(obj) {
      return this.classFactory.retain(obj);
    }
    cast(obj, C) {
      return this.classFactory.cast(obj, C);
    }
    array(type, elements) {
      return this.classFactory.array(type, elements);
    }
    backtrace(options) {
      return backtrace(this.vm, options);
    }
    // Reference: http://stackoverflow.com/questions/2848575/how-to-detect-ui-thread-on-android
    isMainThread() {
      const Looper = this.classFactory.use("android.os.Looper");
      const mainLooper = Looper.getMainLooper();
      const myLooper = Looper.myLooper();
      if (myLooper === null) {
        return false;
      }
      return mainLooper.$isSameObject(myLooper);
    }
    registerClass(spec) {
      return this.classFactory.registerClass(spec);
    }
    deoptimizeEverything() {
      const { vm: vm3 } = this;
      return deoptimizeEverything(vm3, vm3.getEnv());
    }
    deoptimizeBootImage() {
      const { vm: vm3 } = this;
      return deoptimizeBootImage(vm3, vm3.getEnv());
    }
    deoptimizeMethod(method) {
      const { vm: vm3 } = this;
      return deoptimizeMethod(vm3, vm3.getEnv(), method);
    }
    _checkAvailable() {
      if (!this.available) {
        throw new Error("Java API not available");
      }
    }
    _isAppProcess() {
      let result = this._cachedIsAppProcess;
      if (result === null) {
        if (this.api.flavor === "jvm") {
          result = false;
          this._cachedIsAppProcess = result;
          return result;
        }
        const readlink = new NativeFunction(Module.getGlobalExportByName("readlink"), "pointer", ["pointer", "pointer", "pointer"], {
          exceptions: "propagate"
        });
        const pathname = Memory.allocUtf8String("/proc/self/exe");
        const bufferSize = 1024;
        const buffer = Memory.alloc(bufferSize);
        const size = readlink(pathname, buffer, ptr(bufferSize)).toInt32();
        if (size !== -1) {
          const exe = buffer.readUtf8String(size);
          result = /^\/system\/bin\/app_process/.test(exe);
        } else {
          result = true;
        }
        this._cachedIsAppProcess = result;
      }
      return result;
    }
  };
  function initFactoryFromApplication(factory, app) {
    const Process2 = factory.use("android.os.Process");
    factory.loader = app.getClassLoader();
    if (Process2.myUid() === Process2.SYSTEM_UID.value) {
      factory.cacheDir = "/data/system";
      factory.codeCacheDir = "/data/dalvik-cache";
    } else {
      if ("getCodeCacheDir" in app) {
        factory.cacheDir = app.getCacheDir().getCanonicalPath();
        factory.codeCacheDir = app.getCodeCacheDir().getCanonicalPath();
      } else {
        factory.cacheDir = app.getFilesDir().getCanonicalPath();
        factory.codeCacheDir = app.getCacheDir().getCanonicalPath();
      }
    }
  }
  function initFactoryFromLoadedApk(factory, apk) {
    const JFile = factory.use("java.io.File");
    factory.loader = apk.getClassLoader();
    const dataDir = JFile.$new(apk.getDataDir()).getCanonicalPath();
    factory.cacheDir = dataDir;
    factory.codeCacheDir = dataDir + "/cache";
  }
  var runtime = new Runtime();
  Script.bindWeak(runtime, () => {
    runtime._dispose();
  });
  var frida_java_bridge_default = runtime;

  // ServerProject/tools/offlineserver_frida_hook.js
  (function() {
    "use strict";
    var outputFile = null;
    var nextRequestId = 1;
    var activeRequestByThread = {};
    var activeHttpByThread = {};
    var hooked = {};
    var MAX_TEXT = 16 * 1024 * 1024;
    function now() {
      return (/* @__PURE__ */ new Date()).toISOString();
    }
    function emit(event) {
      event.time = now();
      try {
        var line = JSON.stringify(event) + "\n";
        if (outputFile !== null) {
          var FOS = frida_java_bridge_default.use("java.io.FileOutputStream");
          var JString = frida_java_bridge_default.use("java.lang.String");
          var bytes = JString.$new(line).getBytes("UTF-8");
          var stream = FOS.$new(outputFile, true);
          stream.write(bytes);
          stream.close();
        } else {
          console.log("[SGSCQ_TRACE] " + line.trim());
        }
      } catch (e) {
        console.log("[SGSCQ_TRACE_ERROR] " + e);
      }
    }
    function threadId() {
      try {
        return String(frida_java_bridge_default.use("java.lang.Thread").currentThread().getId());
      } catch (_) {
        return "unknown";
      }
    }
    function bytesInfo(value) {
      try {
        var n = value.length;
        if (n > MAX_TEXT) return { length: n, truncated: true };
        var unsigned = [];
        var textBytes = [];
        for (var i = 0; i < n; i++) {
          var b = Number(value[i]) & 255;
          unsigned.push(b > 127 ? b - 256 : b);
          textBytes.push(b);
        }
        var JavaBytes = frida_java_bridge_default.array("byte", unsigned);
        var Base64 = frida_java_bridge_default.use("android.util.Base64");
        var StringClass = frida_java_bridge_default.use("java.lang.String");
        return {
          length: n,
          utf8: StringClass.$new(JavaBytes, "UTF-8").toString(),
          base64: Base64.encodeToString(JavaBytes, 2)
        };
      } catch (e) {
        return { error: String(e), value: String(value) };
      }
    }
    function safe(value, depth) {
      if (depth > 8) return "[depth-limit]";
      if (value === null || value === void 0) return value;
      if (typeof value === "string" || typeof value === "number" || typeof value === "boolean") return value;
      try {
        var cls = value.getClass ? String(value.getClass().getName()) : "";
        if (cls === "byte[]" || cls === "[B") return bytesInfo(value);
        if (cls === "java.lang.String") return String(value.toString());
        if (cls === "org.json.JSONObject" || cls === "org.json.JSONArray") return String(value.toString());
        if (cls.indexOf("java.util.Map") !== -1 || value.entrySet && value.get) {
          var result = {};
          var iterator = value.entrySet().iterator();
          var count = 0;
          while (iterator.hasNext() && count++ < 1e4) {
            var entry = iterator.next();
            result[String(entry.getKey())] = safe(entry.getValue(), depth + 1);
          }
          return result;
        }
        if (cls.indexOf("java.util.List") !== -1 || value.iterator && value.size) {
          var arr = [];
          var it = value.iterator();
          var listCount = 0;
          while (it.hasNext() && listCount++ < 1e4) arr.push(safe(it.next(), depth + 1));
          return arr;
        }
        if (cls.indexOf("[") === 0 && value.length !== void 0) {
          var nativeArray = [];
          for (var j = 0; j < Math.min(value.length, 1e4); j++) nativeArray.push(safe(value[j], depth + 1));
          return nativeArray;
        }
        return String(value.toString());
      } catch (e) {
        try {
          return String(value);
        } catch (_) {
          return "[unprintable: " + e + "]";
        }
      }
    }
    function stackTrace() {
      try {
        var Log = frida_java_bridge_default.use("android.util.Log");
        var Exception = frida_java_bridge_default.use("java.lang.Exception");
        return String(Log.getStackTraceString(Exception.$new()));
      } catch (e) {
        return String(e);
      }
    }
    function responseBody(raw) {
      try {
        var s = String(raw);
        var split = s.indexOf("\r\n\r\n");
        return split >= 0 ? s.slice(split + 4) : s;
      } catch (_) {
        return "";
      }
    }
    function requestId() {
      return activeRequestByThread[threadId()] || null;
    }
    function hookOverload(clazz, methodName, overload, label) {
      var key = label + "#" + methodName + "(" + overload.argumentTypes.map(function(t) {
        return t.className;
      }).join(",") + ")";
      if (hooked[key]) return;
      hooked[key] = true;
      overload.implementation = function() {
        var args = [];
        for (var i = 0; i < arguments.length; i++) args.push(safe(arguments[i], 0));
        var tid = threadId();
        var rid = requestId();
        emit({ event: "function.enter", request_id: rid, thread_id: tid, function: key, args, stack: stackTrace() });
        var result;
        try {
          result = overload.apply(this, arguments);
          emit({ event: "function.leave", request_id: rid, thread_id: tid, function: key, result: safe(result, 0) });
          return result;
        } catch (e) {
          emit({ event: "function.throw", request_id: rid, thread_id: tid, function: key, error: String(e) });
          throw e;
        }
      };
    }
    function hookRouteClasses() {
      frida_java_bridge_default.enumerateLoadedClasses({
        onMatch: function(name) {
          if (name.indexOf("com.sgscq.vpn.handler.") !== 0) return;
          try {
            var K = frida_java_bridge_default.use(name);
            var methods = K.class.getDeclaredMethods();
            for (var i = 0; i < methods.length; i++) {
              var method = methods[i];
              var methodName = String(method.getName());
              var returnType = String(method.getReturnType().getName());
              var params = method.getParameterTypes();
              var relevant = returnType === "byte[]" || returnType === "[B";
              for (var p = 0; p < params.length; p++) {
                var typeName = String(params[p].getName());
                if (typeName === "java.util.Map" || typeName.indexOf("java.util.Map<") === 0) relevant = true;
              }
              if (!relevant || !K[methodName]) continue;
              var overloads = K[methodName].overloads;
              for (var o = 0; o < overloads.length; o++) hookOverload(K, methodName, overloads[o], name);
            }
          } catch (_) {
          }
        },
        onComplete: function() {
          emit({ event: "hook.ready", target: "handler-map-and-byte-array-methods" });
        }
      });
    }
    function hookCore() {
      var Y = frida_java_bridge_default.use("com.sgscq.vpn.y2");
      var j2 = Y.j2.overload("java.lang.String", "java.lang.String", "java.lang.String");
      j2.implementation = function(method, path, body) {
        var tid = threadId();
        var rid = nextRequestId++;
        activeRequestByThread[tid] = rid;
        emit({
          event: "http.request",
          request_id: rid,
          thread_id: tid,
          method: String(method),
          path: String(path),
          header_lines: activeHttpByThread[tid] ? activeHttpByThread[tid].headers : [],
          body: String(body),
          stack: stackTrace()
        });
        try {
          var result = j2.call(this, method, path, body);
          var wire = bytesInfo(result);
          emit({
            event: "http.response",
            request_id: rid,
            thread_id: tid,
            response: wire,
            response_body: responseBody(wire.utf8 || "")
          });
          return result;
        } catch (e) {
          emit({ event: "http.error", request_id: rid, thread_id: tid, error: String(e) });
          throw e;
        } finally {
          delete activeRequestByThread[tid];
        }
      };
      ["e2", "d2"].forEach(function(name) {
        try {
          var fn = Y[name];
          for (var i = 0; i < fn.overloads.length; i++) hookOverload(Y, name, fn.overloads[i], "com.sgscq.vpn.y2");
        } catch (_) {
        }
      });
      try {
        var c2 = Y.c2.overload("java.net.Socket", "java.lang.String", "java.io.BufferedReader");
        c2.implementation = function(socket, requestLine, reader) {
          var tid = threadId();
          activeHttpByThread[tid] = { request_line: String(requestLine), headers: [] };
          emit({ event: "http.socket.request_line", thread_id: tid, request_line: String(requestLine) });
          try {
            return c2.call(this, socket, requestLine, reader);
          } finally {
            delete activeHttpByThread[tid];
          }
        };
      } catch (e) {
        emit({ event: "hook.warning", target: "y2.c2", error: String(e) });
      }
      try {
        var BufferedReader = frida_java_bridge_default.use("java.io.BufferedReader");
        var readLine = BufferedReader.readLine.overload();
        readLine.implementation = function() {
          var line = readLine.call(this);
          var tid = threadId();
          if (activeHttpByThread[tid] && line !== null && String(line).length > 0) {
            activeHttpByThread[tid].headers.push(String(line));
          }
          return line;
        };
      } catch (e) {
        emit({ event: "hook.warning", target: "BufferedReader.readLine", error: String(e) });
      }
      hookRouteClasses();
      emit({ event: "hook.ready", target: "y2.j2,y2.e2,y2.d2,y2.c2" });
    }
    frida_java_bridge_default.perform(function() {
      try {
        var ActivityThread = frida_java_bridge_default.use("android.app.ActivityThread");
        var app = ActivityThread.currentApplication();
        if (app !== null) {
          var dir = app.getExternalFilesDir(null);
          if (dir === null) dir = app.getFilesDir();
          var File2 = frida_java_bridge_default.use("java.io.File");
          outputFile = File2.$new(dir, "sgscq-frida-trace.jsonl").getAbsolutePath().toString();
        }
      } catch (_) {
      }
      emit({ event: "hook.start", output: outputFile || "logcat" });
      try {
        hookCore();
      } catch (e) {
        emit({ event: "hook.error", error: String(e), stack: stackTrace() });
      }
    });
  })();
})();
//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAic291cmNlcyI6IFsiZnJpZGEtc2hpbTpub2RlX21vZHVsZXMvQGZyaWRhL2Jhc2U2NC1qcy9pbmRleC5qcyIsICJmcmlkYS1zaGltOm5vZGVfbW9kdWxlcy9AZnJpZGEvaWVlZTc1NC9pbmRleC5qcyIsICJmcmlkYS1zaGltOm5vZGVfbW9kdWxlcy9AZnJpZGEvYnVmZmVyL2luZGV4LmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9hbmRyb2lkLmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9hbGxvYy5qcyIsICJTZXJ2ZXJQcm9qZWN0L3Rvb2xzL25vZGVfbW9kdWxlcy9mcmlkYS1qYXZhLWJyaWRnZS9saWIvcmVzdWx0LmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9qdm10aS5qcyIsICJTZXJ2ZXJQcm9qZWN0L3Rvb2xzL25vZGVfbW9kdWxlcy9mcmlkYS1qYXZhLWJyaWRnZS9saWIvbWFjaGluZS1jb2RlLmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9tZW1vaXplLmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9lbnYuanMiLCAiU2VydmVyUHJvamVjdC90b29scy9ub2RlX21vZHVsZXMvZnJpZGEtamF2YS1icmlkZ2UvbGliL3ZtLmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9qdm0uanMiLCAiU2VydmVyUHJvamVjdC90b29scy9ub2RlX21vZHVsZXMvZnJpZGEtamF2YS1icmlkZ2UvbGliL2FwaS5qcyIsICJTZXJ2ZXJQcm9qZWN0L3Rvb2xzL25vZGVfbW9kdWxlcy9mcmlkYS1qYXZhLWJyaWRnZS9saWIvY2xhc3MtbW9kZWwuanMiLCAiU2VydmVyUHJvamVjdC90b29scy9ub2RlX21vZHVsZXMvZnJpZGEtamF2YS1icmlkZ2UvbGliL2xydS5qcyIsICJTZXJ2ZXJQcm9qZWN0L3Rvb2xzL25vZGVfbW9kdWxlcy9mcmlkYS1qYXZhLWJyaWRnZS9saWIvbWtkZXguanMiLCAiU2VydmVyUHJvamVjdC90b29scy9ub2RlX21vZHVsZXMvZnJpZGEtamF2YS1icmlkZ2UvbGliL3R5cGVzLmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2xpYi9jbGFzcy1mYWN0b3J5LmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvbm9kZV9tb2R1bGVzL2ZyaWRhLWphdmEtYnJpZGdlL2luZGV4LmpzIiwgIlNlcnZlclByb2plY3QvdG9vbHMvb2ZmbGluZXNlcnZlcl9mcmlkYV9ob29rLmpzIl0sCiAgIm1hcHBpbmdzIjogIjs7Ozs7Ozs7QUFBQSxNQUFNLFNBQVMsQ0FBQztBQUNoQixNQUFNLFlBQVksQ0FBQztBQUVuQixNQUFNLE9BQU87QUFDYixXQUFTLElBQUksR0FBRyxNQUFNLEtBQUssUUFBUSxJQUFJLEtBQUssRUFBRSxHQUFHO0FBQy9DLFdBQU8sQ0FBQyxJQUFJLEtBQUssQ0FBQztBQUNsQixjQUFVLEtBQUssV0FBVyxDQUFDLENBQUMsSUFBSTtBQUFBLEVBQ2xDO0FBSUEsWUFBVSxJQUFJLFdBQVcsQ0FBQyxDQUFDLElBQUk7QUFDL0IsWUFBVSxJQUFJLFdBQVcsQ0FBQyxDQUFDLElBQUk7QUFFL0IsV0FBUyxRQUFTLEtBQUs7QUFDckIsVUFBTSxNQUFNLElBQUk7QUFFaEIsUUFBSSxNQUFNLElBQUksR0FBRztBQUNmLFlBQU0sSUFBSSxNQUFNLGdEQUFnRDtBQUFBLElBQ2xFO0FBSUEsUUFBSSxXQUFXLElBQUksUUFBUSxHQUFHO0FBQzlCLFFBQUksYUFBYSxHQUFJLFlBQVc7QUFFaEMsVUFBTSxrQkFBa0IsYUFBYSxNQUNqQyxJQUNB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UUFBUSxPQUFPLElBQUk7QUFBQSxFQUN0QyxDQUFDO0FBRUQsTUFBSSxVQUFVLHVCQUF1QkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPO0FBQ25ILFdBQU8sS0FBSyxLQUFLLFFBQVEsT0FBTyxJQUFJO0FBQUEsRUFDdEMsQ0FBQztBQUVELE1BQUksVUFBVSx1QkFBdUJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxXQUFXLFNBQVMsR0FBRyxTQUFVLE1BQU0sT0FBTztBQUNuSCxXQUFPLEtBQUssS0FBSyxRQUFRLE9BQU8sSUFBSTtBQUFBLEVBQ3RDLENBQUM7QUFFRCxNQUFJLFVBQVUsd0JBQXdCQSxPQUFNLEtBQUssV0FBVyxDQUFDLFdBQVcsV0FBVyxTQUFTLEdBQUcsU0FBVSxNQUFNLE9BQU87QUFDcEgsV0FBTyxLQUFLLEtBQUssUUFBUSxPQUFPLElBQUk7QUFBQSxFQUN0QyxDQUFDO0FBRUQsTUFBSSxVQUFVLHNCQUFzQkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPO0FBQ2xILFdBQU8sS0FBSyxLQUFLLFFBQVEsT0FBTyxJQUFJO0FBQUEsRUFDdEMsQ0FBQztBQUVELE1BQUksVUFBVSx1QkFBdUJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxXQUFXLFNBQVMsR0FBRyxTQUFVLE1BQU0sT0FBTztBQUNuSCxXQUFPLEtBQUssS0FBSyxRQUFRLE9BQU8sSUFBSTtBQUFBLEVBQ3RDLENBQUM7QUFFRCxNQUFJLFVBQVUsd0JBQXdCQSxPQUFNLEtBQUssV0FBVyxDQUFDLFdBQVcsV0FBVyxTQUFTLEdBQUcsU0FBVSxNQUFNLE9BQU87QUFDcEgsV0FBTyxLQUFLLEtBQUssUUFBUSxPQUFPLElBQUk7QUFBQSxFQUN0QyxDQUFDO0FBRUQsTUFBSSxVQUFVLHlCQUF5QkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPO0FBQ3JILFdBQU8sS0FBSyxLQUFLLFFBQVEsT0FBTyxJQUFJO0FBQUEsRUFDdEMsQ0FBQztBQUVELE1BQUksVUFBVSw4QkFBOEJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxXQUFXLFdBQVcsT0FBTyxHQUFHLFNBQVUsTUFBTSxPQUFPLFFBQVE7QUFDM0ksU0FBSyxLQUFLLFFBQVEsT0FBTyxRQUFRLFNBQVM7QUFBQSxFQUM1QyxDQUFDO0FBRUQsTUFBSSxVQUFVLDJCQUEyQkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsV0FBVyxPQUFPLEdBQUcsU0FBVSxNQUFNLE9BQU8sUUFBUTtBQUN4SSxTQUFLLEtBQUssUUFBUSxPQUFPLFFBQVEsU0FBUztBQUFBLEVBQzVDLENBQUM7QUFFRCxNQUFJLFVBQVUsMkJBQTJCQSxPQUFNLEtBQUssV0FBVyxDQUFDLFdBQVcsV0FBVyxXQUFXLE9BQU8sR0FBRyxTQUFVLE1BQU0sT0FBTyxRQUFRO0FBQ3hJLFNBQUssS0FBSyxRQUFRLE9BQU8sUUFBUSxTQUFTO0FBQUEsRUFDNUMsQ0FBQztBQUVELE1BQUksVUFBVSw0QkFBNEJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxXQUFXLFdBQVcsT0FBTyxHQUFHLFNBQVUsTUFBTSxPQUFPLFFBQVE7QUFDekksU0FBSyxLQUFLLFFBQVEsT0FBTyxRQUFRLFNBQVM7QUFBQSxFQUM1QyxDQUFDO0FBRUQsTUFBSSxVQUFVLDBCQUEwQkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsV0FBVyxPQUFPLEdBQUcsU0FBVSxNQUFNLE9BQU8sUUFBUTtBQUN2SSxTQUFLLEtBQUssUUFBUSxPQUFPLFFBQVEsU0FBUztBQUFBLEVBQzVDLENBQUM7QUFFRCxNQUFJLFVBQVUsMkJBQTJCQSxPQUFNLEtBQUssV0FBVyxDQUFDLFdBQVcsV0FBVyxXQUFXLE9BQU8sR0FBRyxTQUFVLE1BQU0sT0FBTyxRQUFRO0FBQ3hJLFNBQUssS0FBSyxRQUFRLE9BQU8sUUFBUSxTQUFTO0FBQUEsRUFDNUMsQ0FBQztBQUVELE1BQUksVUFBVSw0QkFBNEJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxXQUFXLFdBQVcsT0FBTyxHQUFHLFNBQVUsTUFBTSxPQUFPLFFBQVE7QUFDekksU0FBSyxLQUFLLFFBQVEsT0FBTyxRQUFRLFNBQVM7QUFBQSxFQUM1QyxDQUFDO0FBRUQsTUFBSSxVQUFVLDZCQUE2QkEsT0FBTSxLQUFLLFdBQVcsQ0FBQyxXQUFXLFdBQVcsV0FBVyxPQUFPLEdBQUcsU0FBVSxNQUFNLE9BQU8sUUFBUTtBQUMxSSxTQUFLLEtBQUssUUFBUSxPQUFPLFFBQVEsU0FBUztBQUFBLEVBQzVDLENBQUM7QUFFRCxNQUFJLFVBQVUscUJBQXFCQSxPQUFNLEtBQUssUUFBUSxDQUFDLFdBQVcsV0FBVyxPQUFPLE9BQU8sU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPLE9BQU8sUUFBUSxRQUFRO0FBQ25KLFNBQUssS0FBSyxRQUFRLE9BQU8sT0FBTyxRQUFRLE1BQU07QUFBQSxFQUNoRCxDQUFDO0FBRUQsTUFBSSxVQUFVLHdCQUF3QkEsT0FBTSxLQUFLLFFBQVEsQ0FBQyxXQUFXLFdBQVcsU0FBUyxTQUFTLFNBQVMsR0FBRyxTQUFVLE1BQU0sT0FBTyxPQUFPLFFBQVEsUUFBUTtBQUMxSixTQUFLLEtBQUssUUFBUSxPQUFPLE9BQU8sUUFBUSxNQUFNO0FBQUEsRUFDaEQsQ0FBQztBQUVELE1BQUksVUFBVSxxQkFBcUJBLE9BQU0sS0FBSyxRQUFRLENBQUMsV0FBVyxXQUFXLFNBQVMsU0FBUyxTQUFTLEdBQUcsU0FBVSxNQUFNLE9BQU8sT0FBTyxRQUFRLFFBQVE7QUFDdkosU0FBSyxLQUFLLFFBQVEsT0FBTyxPQUFPLFFBQVEsTUFBTTtBQUFBLEVBQ2hELENBQUM7QUFFRCxNQUFJLFVBQVUscUJBQXFCQSxPQUFNLEtBQUssUUFBUSxDQUFDLFdBQVcsV0FBVyxTQUFTLFNBQVMsU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPLE9BQU8sUUFBUSxRQUFRO0FBQ3ZKLFNBQUssS0FBSyxRQUFRLE9BQU8sT0FBTyxRQUFRLE1BQU07QUFBQSxFQUNoRCxDQUFDO0FBRUQsTUFBSSxVQUFVLHNCQUFzQkEsT0FBTSxLQUFLLFFBQVEsQ0FBQyxXQUFXLFdBQVcsU0FBUyxTQUFTLFNBQVMsR0FBRyxTQUFVLE1BQU0sT0FBTyxPQUFPLFFBQVEsUUFBUTtBQUN4SixTQUFLLEtBQUssUUFBUSxPQUFPLE9BQU8sUUFBUSxNQUFNO0FBQUEsRUFDaEQsQ0FBQztBQUVELE1BQUksVUFBVSxvQkFBb0JBLE9BQU0sS0FBSyxRQUFRLENBQUMsV0FBVyxXQUFXLFNBQVMsU0FBUyxTQUFTLEdBQUcsU0FBVSxNQUFNLE9BQU8sT0FBTyxRQUFRLFFBQVE7QUFDdEosU0FBSyxLQUFLLFFBQVEsT0FBTyxPQUFPLFFBQVEsTUFBTTtBQUFBLEVBQ2hELENBQUM7QUFFRCxNQUFJLFVBQVUscUJBQXFCQSxPQUFNLEtBQUssUUFBUSxDQUFDLFdBQVcsV0FBVyxTQUFTLFNBQVMsU0FBUyxHQUFHLFNBQVUsTUFBTSxPQUFPLE9BQU8sUUFBUSxRQUFRO0FBQ3ZKLFNBQUssS0FBSyxRQUFRLE9BQU8sT0FBTyxRQUFRLE1BQU07QUFBQSxFQUNoRCxDQUFDO0FBRUQsTUFBSSxVQUFVLHNCQUFzQkEsT0FBTSxLQUFLLFFBQVEsQ0FBQyxXQUFXLFdBQVcsU0FBUyxTQUFTLFNBQVMsR0FBRyxTQUFVLE1BQU0sT0FBTyxPQUFPLFFBQVEsUUFBUTtBQUN4SixTQUFLLEtBQUssUUFBUSxPQUFPLE9BQU8sUUFBUSxNQUFNO0FBQUEsRUFDaEQsQ0FBQztBQUVELE1BQUksVUFBVSx1QkFBdUJBLE9BQU0sS0FBSyxRQUFRLENBQUMsV0FBVyxXQUFXLFNBQVMsU0FBUyxTQUFTLEdBQUcsU0FBVSxNQUFNLE9BQU8sT0FBTyxRQUFRLFFBQVE7QUFDekosU0FBSyxLQUFLLFFBQVEsT0FBTyxPQUFPLFFBQVEsTUFBTTtBQUFBLEVBQ2hELENBQUM7QUFFRCxNQUFJLFVBQVUsa0JBQWtCQSxPQUFNLEtBQUssU0FBUyxDQUFDLFdBQVcsV0FBVyxXQUFXLE9BQU8sR0FBRyxTQUFVLE1BQU0sT0FBTyxTQUFTLFlBQVk7QUFDMUksV0FBTyxLQUFLLEtBQUssUUFBUSxPQUFPLFNBQVMsVUFBVTtBQUFBLEVBQ3JELENBQUM7QUFFRCxNQUFJLFVBQVUsZUFBZUEsT0FBTSxLQUFLLFNBQVMsQ0FBQyxXQUFXLFNBQVMsR0FBRyxTQUFVLE1BQU0sS0FBSztBQUM1RixXQUFPLEtBQUssS0FBSyxRQUFRLEdBQUc7QUFBQSxFQUM5QixDQUFDO0FBRUQsTUFBSSxVQUFVLGNBQWNBLE9BQU0sS0FBSyxTQUFTLENBQUMsV0FBVyxTQUFTLEdBQUcsU0FBVSxNQUFNLEtBQUs7QUFDM0YsV0FBTyxLQUFLLEtBQUssUUFBUSxHQUFHO0FBQUEsRUFDOUIsQ0FBQztBQUVELE1BQUksVUFBVSx5QkFBeUJBLE9BQU0sS0FBSyxXQUFXLENBQUMsV0FBVyxTQUFTLEdBQUcsU0FBVSxNQUFNLEtBQUs7QUFDeEcsV0FBTyxLQUFLLEtBQUssUUFBUSxHQUFHO0FBQUEsRUFDOUIsQ0FBQztBQUVELE1BQUksVUFBVSxtQkFBbUJBLE9BQU0sS0FBSyxTQUFTLENBQUMsV0FBVyxTQUFTLEdBQUcsU0FBVSxNQUFNLEtBQUs7QUFDaEcsV0FBTyxLQUFLLEtBQUssUUFBUSxHQUFHO0FBQUEsRUFDOUIsQ0FBQztBQUVELE1BQU0sZ0JBQWdCLG9CQUFJLElBQUk7QUFFOUIsV0FBUyxZQUFhLFFBQVEsU0FBUyxVQUFVLFNBQVM7QUFDeEQsV0FBTyxnQkFBZ0IsTUFBTSxLQUFLLGlCQUFpQixRQUFRLFNBQVMsVUFBVSxPQUFPO0FBQUEsRUFDdkY7QUFFQSxXQUFTLFNBQVUsUUFBUSxTQUFTLFVBQVUsU0FBUztBQUNyRCxXQUFPLGdCQUFnQixNQUFNLEtBQUssY0FBYyxRQUFRLFNBQVMsVUFBVSxPQUFPO0FBQUEsRUFDcEY7QUFFQSxXQUFTLG1CQUFvQixRQUFRLFNBQVMsVUFBVSxTQUFTO0FBQy9ELFdBQU8sZ0JBQWdCLE1BQU0sS0FBSyx3QkFBd0IsUUFBUSxTQUFTLFVBQVUsT0FBTztBQUFBLEVBQzlGO0FBRUEsV0FBUyxnQkFBaUIsS0FBSyxRQUFRLFdBQVcsUUFBUSxTQUFTLFVBQVUsU0FBUztBQUNwRixRQUFJLFlBQVksUUFBVztBQUN6QixhQUFPLFVBQVUsS0FBSyxRQUFRLFNBQVMsVUFBVSxPQUFPO0FBQUEsSUFDMUQ7QUFFQSxVQUFNLE1BQU0sQ0FBQyxRQUFRLFFBQVEsT0FBTyxFQUFFLE9BQU8sUUFBUSxFQUFFLEtBQUssR0FBRztBQUMvRCxRQUFJLElBQUksY0FBYyxJQUFJLEdBQUc7QUFDN0IsUUFBSSxNQUFNLFFBQVc7QUFDbkIsVUFBSSxVQUFVLEtBQUssUUFBUSxTQUFTLFVBQVVELHNCQUFxQjtBQUNuRSxvQkFBYyxJQUFJLEtBQUssQ0FBQztBQUFBLElBQzFCO0FBQ0EsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLGdCQUFpQixLQUFLLFFBQVEsU0FBUyxVQUFVLFNBQVM7QUFDakUsV0FBTyxJQUFJO0FBQUEsTUFDVCxPQUFPLEdBQUcsRUFBRSxJQUFJLFNBQVNELFlBQVcsRUFBRSxZQUFZO0FBQUEsTUFDbEQ7QUFBQSxNQUNBLENBQUMsV0FBVyxXQUFXLFNBQVMsRUFBRSxPQUFPLFFBQVE7QUFBQSxNQUNqRDtBQUFBLElBQU87QUFBQSxFQUNYO0FBRUEsV0FBUyxhQUFjLEtBQUssUUFBUSxTQUFTLFVBQVUsU0FBUztBQUM5RCxXQUFPLElBQUk7QUFBQSxNQUNULE9BQU8sR0FBRyxFQUFFLElBQUksU0FBU0EsWUFBVyxFQUFFLFlBQVk7QUFBQSxNQUNsRDtBQUFBLE1BQ0EsQ0FBQyxXQUFXLFdBQVcsV0FBVyxLQUFLLEVBQUUsT0FBTyxRQUFRO0FBQUEsTUFDeEQ7QUFBQSxJQUFPO0FBQUEsRUFDWDtBQUVBLFdBQVMsdUJBQXdCLEtBQUssUUFBUSxTQUFTLFVBQVUsU0FBUztBQUN4RSxXQUFPLElBQUk7QUFBQSxNQUNULE9BQU8sR0FBRyxFQUFFLElBQUksU0FBU0EsWUFBVyxFQUFFLFlBQVk7QUFBQSxNQUNsRDtBQUFBLE1BQ0EsQ0FBQyxXQUFXLFdBQVcsV0FBVyxXQUFXLEtBQUssRUFBRSxPQUFPLFFBQVE7QUFBQSxNQUNuRTtBQUFBLElBQU87QUFBQSxFQUNYO0FBRUEsTUFBSSxVQUFVLGNBQWMsU0FBVSxVQUFVLFNBQVM7QUFDdkQsV0FBTyxTQUFTLEtBQUssTUFBTSxnQ0FBZ0MsV0FBVyxVQUFVLE9BQU87QUFBQSxFQUN6RjtBQUVBLE1BQUksVUFBVSxXQUFXLFNBQVUsU0FBUyxVQUFVLFNBQVM7QUFDN0QsVUFBTSxTQUFTLGlCQUFpQixPQUFPO0FBQ3ZDLFFBQUksV0FBVyxRQUFXO0FBQ3hCLFlBQU0sSUFBSSxNQUFNLHVCQUF1QixPQUFPO0FBQUEsSUFDaEQ7QUFDQSxXQUFPLFNBQVMsS0FBSyxNQUFNLFFBQVEsU0FBUyxVQUFVLE9BQU87QUFBQSxFQUMvRDtBQUVBLE1BQUksVUFBVSxxQkFBcUIsU0FBVSxTQUFTLFVBQVUsU0FBUztBQUN2RSxVQUFNLFNBQVMsMkJBQTJCLE9BQU87QUFDakQsUUFBSSxXQUFXLFFBQVc7QUFDeEIsWUFBTSxJQUFJLE1BQU0sdUJBQXVCLE9BQU87QUFBQSxJQUNoRDtBQUNBLFdBQU8sbUJBQW1CLEtBQUssTUFBTSxRQUFRLFNBQVMsVUFBVSxPQUFPO0FBQUEsRUFDekU7QUFFQSxNQUFJLFVBQVUsaUJBQWlCLFNBQVUsU0FBUyxVQUFVLFNBQVM7QUFDbkUsVUFBTSxTQUFTLHVCQUF1QixPQUFPO0FBQzdDLFFBQUksV0FBVyxRQUFXO0FBQ3hCLFlBQU0sSUFBSSxNQUFNLHVCQUF1QixPQUFPO0FBQUEsSUFDaEQ7QUFDQSxXQUFPLFNBQVMsS0FBSyxNQUFNLFFBQVEsU0FBUyxVQUFVLE9BQU87QUFBQSxFQUMvRDtBQUVBLE1BQUksVUFBVSxXQUFXLFNBQVUsV0FBVztBQUM1QyxVQUFNLFNBQVMsZUFBZSxTQUFTO0FBQ3ZDLFFBQUksV0FBVyxRQUFXO0FBQ3hCLFlBQU0sSUFBSSxNQUFNLHVCQUF1QixTQUFTO0FBQUEsSUFDbEQ7QUFDQSxXQUFPLFlBQVksS0FBSyxNQUFNLFFBQVEsV0FBVyxDQUFDLENBQUM7QUFBQSxFQUNyRDtBQUVBLE1BQUksVUFBVSxpQkFBaUIsU0FBVSxXQUFXO0FBQ2xELFVBQU0sU0FBUyxxQkFBcUIsU0FBUztBQUM3QyxRQUFJLFdBQVcsUUFBVztBQUN4QixZQUFNLElBQUksTUFBTSx1QkFBdUIsU0FBUztBQUFBLElBQ2xEO0FBQ0EsV0FBTyxZQUFZLEtBQUssTUFBTSxRQUFRLFdBQVcsQ0FBQyxDQUFDO0FBQUEsRUFDckQ7QUFFQSxNQUFJLFVBQVUsV0FBVyxTQUFVLFdBQVc7QUFDNUMsVUFBTSxTQUFTLGVBQWUsU0FBUztBQUN2QyxRQUFJLFdBQVcsUUFBVztBQUN4QixZQUFNLElBQUksTUFBTSx1QkFBdUIsU0FBUztBQUFBLElBQ2xEO0FBQ0EsV0FBTyxZQUFZLEtBQUssTUFBTSxRQUFRLFFBQVEsQ0FBQyxTQUFTLENBQUM7QUFBQSxFQUMzRDtBQUVBLE1BQUksVUFBVSxpQkFBaUIsU0FBVSxXQUFXO0FBQ2xELFVBQU0sU0FBUyxxQkFBcUIsU0FBUztBQUM3QyxRQUFJLFdBQVcsUUFBVztBQUN4QixZQUFNLElBQUksTUFBTSx1QkFBdUIsU0FBUztBQUFBLElBQ2xEO0FBQ0EsV0FBTyxZQUFZLEtBQUssTUFBTSxRQUFRLFFBQVEsQ0FBQyxTQUFTLENBQUM7QUFBQSxFQUMzRDtBQUVBLE1BQUksZ0JBQWdCO0FBQ3BCLE1BQUksVUFBVSxnQkFBZ0IsV0FBWTtBQUN4QyxRQUFJLGtCQUFrQixNQUFNO0FBQzFCLFlBQU0sU0FBUyxLQUFLLFVBQVUsaUJBQWlCO0FBQy9DLFVBQUk7QUFDRixjQUFNLE1BQU0sS0FBSyxZQUFZLEtBQUssTUFBTSxNQUFNO0FBQzlDLHdCQUFnQjtBQUFBLFVBQ2QsUUFBUSxTQUFTLEtBQUssYUFBYSxNQUFNLENBQUM7QUFBQSxVQUMxQyxTQUFTLElBQUksV0FBVyxzQkFBc0I7QUFBQSxVQUM5QyxlQUFlLElBQUksaUJBQWlCLHNCQUFzQjtBQUFBLFVBQzFELHNCQUFzQixJQUFJLHdCQUF3Qiw0QkFBNEI7QUFBQSxVQUM5RSx5QkFBeUIsSUFBSSwyQkFBMkIsb0NBQW9DO0FBQUEsVUFDNUYsb0JBQW9CLElBQUksc0JBQXNCLCtCQUErQjtBQUFBLFVBQzdFLG1CQUFtQixJQUFJLHFCQUFxQiw4QkFBOEI7QUFBQSxVQUMxRSxTQUFTLElBQUksV0FBVyxLQUFLO0FBQUEsVUFDN0IsYUFBYSxJQUFJLGVBQWUsS0FBSztBQUFBLFVBQ3JDLGFBQWEsSUFBSSxlQUFlLEtBQUs7QUFBQSxVQUNyQyxrQkFBa0IsSUFBSSxvQkFBb0IscUJBQXFCO0FBQUEsUUFDakU7QUFBQSxNQUNGLFVBQUU7QUFDQSxhQUFLLGVBQWUsTUFBTTtBQUFBLE1BQzVCO0FBQUEsSUFDRjtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsTUFBSSxpQkFBaUI7QUFDckIsTUFBSSxVQUFVLGlCQUFpQixXQUFZO0FBQ3pDLFFBQUksbUJBQW1CLE1BQU07QUFDM0IsWUFBTSxTQUFTLEtBQUssVUFBVSxrQkFBa0I7QUFDaEQsVUFBSTtBQUNGLGNBQU0sTUFBTSxLQUFLLFlBQVksS0FBSyxNQUFNLE1BQU07QUFDOUMseUJBQWlCO0FBQUEsVUFDZixRQUFRLFNBQVMsS0FBSyxhQUFhLE1BQU0sQ0FBQztBQUFBLFVBQzFDLFVBQVUsSUFBSSxZQUFZLHNCQUFzQjtBQUFBLFVBQ2hELFVBQVUsSUFBSSxZQUFZLHFCQUFxQjtBQUFBLFFBQ2pEO0FBQUEsTUFDRixVQUFFO0FBQ0EsYUFBSyxlQUFlLE1BQU07QUFBQSxNQUM1QjtBQUFBLElBQ0Y7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLE1BQUksNkJBQTZCO0FBQ2pDLE1BQUksVUFBVSw2QkFBNkIsV0FBWTtBQUNyRCxRQUFJLCtCQUErQixNQUFNO0FBQ3ZDLFlBQU0sU0FBUyxLQUFLLFVBQVUsK0JBQStCO0FBQzdELFVBQUk7QUFDRixxQ0FBNkI7QUFBQSxVQUMzQiwwQkFBMEIsS0FBSyxZQUFZLFFBQVEsNEJBQTRCLDZCQUE2QjtBQUFBLFFBQzlHO0FBQUEsTUFDRixVQUFFO0FBQ0EsYUFBSyxlQUFlLE1BQU07QUFBQSxNQUM1QjtBQUFBLElBQ0Y7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLE1BQUksd0JBQXdCO0FBQzVCLE1BQUksVUFBVSx3QkFBd0IsV0FBWTtBQUNoRCxRQUFJLDBCQUEwQixNQUFNO0FBQ2xDLFlBQU0sU0FBUyxLQUFLLFVBQVUsMEJBQTBCO0FBQ3hELFVBQUk7QUFDRixjQUFNLE1BQU0sS0FBSyxZQUFZLEtBQUssTUFBTSxNQUFNO0FBQzlDLGdDQUF3QjtBQUFBLFVBQ3RCLFNBQVMsSUFBSSxXQUFXLHNCQUFzQjtBQUFBLFVBQzlDLDBCQUEwQixJQUFJLDRCQUE0Qiw2QkFBNkI7QUFBQSxVQUN2RixtQkFBbUIsSUFBSSxxQkFBcUIsc0JBQXNCO0FBQUEsVUFDbEUsc0JBQXNCLElBQUksd0JBQXdCLDRCQUE0QjtBQUFBLFVBQzlFLDBCQUEwQixJQUFJLDRCQUE0Qiw2QkFBNkI7QUFBQSxVQUN2RixjQUFjLElBQUksZ0JBQWdCLEtBQUs7QUFBQSxVQUN2QyxXQUFXLElBQUksYUFBYSxLQUFLO0FBQUEsUUFDbkM7QUFBQSxNQUNGLFVBQUU7QUFDQSxhQUFLLGVBQWUsTUFBTTtBQUFBLE1BQzVCO0FBQUEsSUFDRjtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsTUFBSSx1QkFBdUI7QUFDM0IsTUFBSSxVQUFVLHVCQUF1QixXQUFZO0FBQy9DLFFBQUkseUJBQXlCLE1BQU07QUFDakMsWUFBTSxTQUFTLEtBQUssVUFBVSx5QkFBeUI7QUFDdkQsVUFBSTtBQUNGLGNBQU0sTUFBTSxLQUFLLFlBQVksS0FBSyxNQUFNLE1BQU07QUFDOUMsK0JBQXVCO0FBQUEsVUFDckIsU0FBUyxJQUFJLFdBQVcsc0JBQXNCO0FBQUEsVUFDOUMsU0FBUyxJQUFJLFdBQVcscUJBQXFCO0FBQUEsVUFDN0MsZ0JBQWdCLElBQUksa0JBQWtCLDRCQUE0QjtBQUFBLFVBQ2xFLGNBQWMsSUFBSSxnQkFBZ0IsS0FBSztBQUFBLFVBQ3ZDLFVBQVUsSUFBSSxZQUFZLHNCQUFzQjtBQUFBLFFBQ2xEO0FBQUEsTUFDRixVQUFFO0FBQ0EsYUFBSyxlQUFlLE1BQU07QUFBQSxNQUM1QjtBQUFBLElBQ0Y7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLE1BQUksOEJBQThCO0FBQ2xDLE1BQUksVUFBVSw4QkFBOEIsV0FBWTtBQUN0RCxRQUFJLGdDQUFnQyxNQUFNO0FBQ3hDLFlBQU0sU0FBUyxLQUFLLFVBQVUsZ0NBQWdDO0FBQzlELFVBQUk7QUFDRixjQUFNLE1BQU0sS0FBSyxZQUFZLEtBQUssTUFBTSxNQUFNO0FBQzlDLHNDQUE4QjtBQUFBLFVBQzVCLFFBQVEsU0FBUyxLQUFLLGFBQWEsTUFBTSxDQUFDO0FBQUEsVUFDMUMsU0FBUyxJQUFJLFdBQVcsc0JBQXNCO0FBQUEsVUFDOUMsV0FBVyxJQUFJLGFBQWEsNkJBQTZCO0FBQUEsVUFDekQsdUJBQXVCLElBQUkseUJBQXlCLDBDQUEwQztBQUFBLFFBQ2hHO0FBQUEsTUFDRixVQUFFO0FBQ0EsYUFBSyxlQUFlLE1BQU07QUFBQSxNQUM1QjtBQUFBLElBQ0Y7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLE1BQUksOEJBQThCO0FBQ2xDLE1BQUksVUFBVSw4QkFBOEIsV0FBWTtBQUN0RCxRQUFJLGdDQUFnQyxNQUFNO0FBQ3hDLFlBQU0sU0FBUyxLQUFLLFVBQVUsZ0NBQWdDO0FBQzlELFVBQUk7QUFDRixjQUFNLE1BQU0sS0FBSyxZQUFZLEtBQUssTUFBTSxNQUFNO0FBQzlDLHNDQUE4QjtBQUFBLFVBQzVCLFFBQVEsU0FBUyxLQUFLLGFBQWEsTUFBTSxDQUFDO0FBQUEsVUFDMUMsZ0JBQWdCLElBQUksa0JBQWtCLDZCQUE2QjtBQUFBLFVBQ25FLGdCQUFnQixJQUFJLGtCQUFrQiw2QkFBNkI7QUFBQSxRQUNyRTtBQUFBLE1BQ0YsVUFBRTtBQUNBLGFBQUssZUFBZSxNQUFNO0FBQUEsTUFDNUI7QUFBQSxJQUNGO0FBQ0EsV0FBTztBQUFBLEVBQ1Q7QUFFQSxNQUFJLGtDQUFrQztBQUN0QyxNQUFJLFVBQVUsa0NBQWtDLFdBQVk7QUFDMUQsUUFBSSxvQ0FBb0MsTUFBTTtBQUM1QyxZQUFNLFNBQVMsS0FBSyxVQUFVLG9DQUFvQztBQUNsRSxVQUFJO0FBQ0YsMENBQWtDO0FBQUEsVUFDaEMsUUFBUSxTQUFTLEtBQUssYUFBYSxNQUFNLENBQUM7QUFBQSxVQUMxQyx5QkFBeUIsS0FBSyxZQUFZLFFBQVEsMkJBQTJCLDRCQUE0QjtBQUFBLFFBQzNHO0FBQUEsTUFDRixVQUFFO0FBQ0EsYUFBSyxlQUFlLE1BQU07QUFBQSxNQUM1QjtBQUFBLElBQ0Y7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLE1BQUksbUNBQW1DO0FBQ3ZDLE1BQUksVUFBVSxtQ0FBbUMsV0FBWTtBQUMzRCxRQUFJLHFDQUFxQyxNQUFNO0FBQzdDLFlBQU0sU0FBUyxLQUFLLFVBQVUscUNBQXFDO0FBQ25FLFVBQUk7QUFDRixjQUFNLE1BQU0sS0FBSyxZQUFZLEtBQUssTUFBTSxNQUFNO0FBQzlDLDJDQUFtQztBQUFBLFVBQ2pDLFFBQVEsU0FBUyxLQUFLLGFBQWEsTUFBTSxDQUFDO0FBQUEsVUFDMUMsd0JBQXdCLElBQUksMEJBQTBCLDZCQUE2QjtBQUFBLFVBQ25GLFlBQVksSUFBSSxjQUFjLDRCQUE0QjtBQUFBLFVBQzFELGNBQWMsSUFBSSxnQkFBZ0IsNEJBQTRCO0FBQUEsUUFDaEU7QUFBQSxNQUNGLFVBQUU7QUFDQSxhQUFLLGVBQWUsTUFBTTtBQUFBLE1BQzVCO0FBQUEsSUFDRjtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsTUFBSSxpQkFBaUI7QUFDckIsTUFBSSxVQUFVLGlCQUFpQixXQUFZO0FBQ3pDLFFBQUksbUJBQW1CLE1BQU07QUFDM0IsWUFBTSxTQUFTLEtBQUssVUFBVSxrQkFBa0I7QUFDaEQsVUFBSTtBQUNGLHlCQUFpQjtBQUFBLFVBQ2YsUUFBUSxTQUFTLEtBQUssYUFBYSxNQUFNLENBQUM7QUFBQSxRQUM1QztBQUFBLE1BQ0YsVUFBRTtBQUNBLGFBQUssZUFBZSxNQUFNO0FBQUEsTUFDNUI7QUFBQSxJQUNGO0FBQ0EsV0FBTztBQUFBLEVBQ1Q7QUFFQSxNQUFJLFVBQVUsZUFBZSxTQUFVLGFBQWE7QUFDbEQsVUFBTSxPQUFPLEtBQUssU0FBUyxXQUFXLENBQUMsQ0FBQyxFQUFFLEtBQUssUUFBUSxhQUFhLEtBQUssY0FBYyxFQUFFLE9BQU87QUFDaEcsUUFBSTtBQUNGLGFBQU8sS0FBSyxjQUFjLElBQUk7QUFBQSxJQUNoQyxVQUFFO0FBQ0EsV0FBSyxlQUFlLElBQUk7QUFBQSxJQUMxQjtBQUFBLEVBQ0Y7QUFFQSxNQUFJLFVBQVUscUJBQXFCLFNBQVUsV0FBVztBQUN0RCxVQUFNLFNBQVMsS0FBSyxlQUFlLFNBQVM7QUFDNUMsUUFBSTtBQUNGLGFBQU8sS0FBSyxhQUFhLE1BQU07QUFBQSxJQUNqQyxVQUFFO0FBQ0EsV0FBSyxlQUFlLE1BQU07QUFBQSxJQUM1QjtBQUFBLEVBQ0Y7QUFFQSxNQUFJLFVBQVUsd0JBQXdCLFNBQVUsTUFBTTtBQUNwRCxVQUFNLHNCQUFzQixLQUFLLFNBQVMsV0FBVyxDQUFDLENBQUMsRUFBRSxLQUFLLFFBQVEsTUFBTSxLQUFLLGlDQUFpQyxFQUFFLHNCQUFzQjtBQUMxSSxTQUFLLHdCQUF3QjtBQUM3QixRQUFJLENBQUMsb0JBQW9CLE9BQU8sR0FBRztBQUNqQyxVQUFJO0FBQ0YsZUFBTyxLQUFLLGdDQUFnQyxtQkFBbUI7QUFBQSxNQUNqRSxVQUFFO0FBQ0EsYUFBSyxlQUFlLG1CQUFtQjtBQUFBLE1BQ3pDO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxNQUFJLFVBQVUsa0NBQWtDLFNBQVUsV0FBVztBQUNuRSxVQUFNLFNBQVMsS0FBSyxlQUFlLFNBQVM7QUFDNUMsUUFBSSxTQUFTLEdBQUc7QUFDZCxZQUFNLGdCQUFnQixLQUFLLHNCQUFzQixXQUFXLENBQUM7QUFDN0QsVUFBSTtBQUNGLGVBQU8sS0FBSyxZQUFZLGFBQWE7QUFBQSxNQUN2QyxVQUFFO0FBQ0EsYUFBSyxlQUFlLGFBQWE7QUFBQSxNQUNuQztBQUFBLElBQ0YsT0FBTztBQUVMLGFBQU87QUFBQSxJQUNUO0FBQUEsRUFDRjtBQUVBLE1BQUksVUFBVSxjQUFjLFNBQVUsTUFBTSx3QkFBd0I7QUFDbEUsVUFBTSwyQkFBMkIsS0FBSyxTQUFTLFdBQVcsQ0FBQyxDQUFDO0FBRTVELFFBQUksS0FBSyxhQUFhLE1BQU0sS0FBSyxjQUFjLEVBQUUsTUFBTSxHQUFHO0FBQ3hELGFBQU8sS0FBSyxhQUFhLElBQUk7QUFBQSxJQUMvQixXQUFXLEtBQUssYUFBYSxNQUFNLEtBQUssZ0NBQWdDLEVBQUUsTUFBTSxHQUFHO0FBQ2pGLGFBQU8sS0FBSyxpQkFBaUIsSUFBSTtBQUFBLElBQ25DLFdBQVcsS0FBSyxhQUFhLE1BQU0sS0FBSyxpQ0FBaUMsRUFBRSxNQUFNLEdBQUc7QUFDbEYsWUFBTSxVQUFVLHlCQUF5QixLQUFLLFFBQVEsTUFBTSxLQUFLLGlDQUFpQyxFQUFFLFVBQVU7QUFDOUcsV0FBSyx3QkFBd0I7QUFDN0IsVUFBSTtBQUNKLFVBQUk7QUFDRixpQkFBUyxLQUFLLFlBQVksT0FBTztBQUFBLE1BQ25DLFVBQUU7QUFDQSxhQUFLLGVBQWUsT0FBTztBQUFBLE1BQzdCO0FBRUEsVUFBSSx3QkFBd0I7QUFDMUIsa0JBQVUsTUFBTSxLQUFLLHNCQUFzQixJQUFJLElBQUk7QUFBQSxNQUNyRDtBQUNBLGFBQU87QUFBQSxJQUNULFdBQVcsS0FBSyxhQUFhLE1BQU0sS0FBSyw0QkFBNEIsRUFBRSxNQUFNLEdBQUc7QUFFN0UsYUFBTztBQUFBLElBQ1QsV0FBVyxLQUFLLGFBQWEsTUFBTSxLQUFLLDRCQUE0QixFQUFFLE1BQU0sR0FBRztBQUU3RSxhQUFPO0FBQUEsSUFDVCxPQUFPO0FBQ0wsYUFBTztBQUFBLElBQ1Q7QUFBQSxFQUNGO0FBRUEsTUFBSSxVQUFVLG1CQUFtQixTQUFVLE1BQU07QUFDL0MsVUFBTSwyQkFBMkIsS0FBSyxTQUFTLFdBQVcsQ0FBQyxDQUFDO0FBRTVELFFBQUksS0FBSyxhQUFhLE1BQU0sS0FBSyxjQUFjLEVBQUUsTUFBTSxHQUFHO0FBQ3hELGFBQU8sS0FBSyxhQUFhLElBQUk7QUFBQSxJQUMvQixXQUFXLEtBQUssYUFBYSxNQUFNLEtBQUssZ0NBQWdDLEVBQUUsTUFBTSxHQUFHO0FBQ2pGLFlBQU0sZ0JBQWdCLHlCQUF5QixLQUFLLFFBQVEsTUFBTSxLQUFLLGdDQUFnQyxFQUFFLHVCQUF1QjtBQUVoSSxXQUFLLHdCQUF3QjtBQUM3QixVQUFJO0FBQ0YsZUFBTyxPQUFPLEtBQUssWUFBWSxhQUFhLElBQUk7QUFBQSxNQUNsRCxVQUFFO0FBQ0EsYUFBSyxlQUFlLGFBQWE7QUFBQSxNQUNuQztBQUFBLElBQ0YsT0FBTztBQUNMLGFBQU87QUFBQSxJQUNUO0FBQUEsRUFDRjtBQUVBLE1BQUksVUFBVSxnQkFBZ0IsU0FBVSxLQUFLO0FBQzNDLFVBQU0sTUFBTSxLQUFLLGVBQWUsR0FBRztBQUNuQyxRQUFJLElBQUksT0FBTyxHQUFHO0FBQ2hCLFlBQU0sSUFBSSxNQUFNLHlCQUF5QjtBQUFBLElBQzNDO0FBQ0EsUUFBSTtBQUNGLFlBQU0sU0FBUyxLQUFLLGdCQUFnQixHQUFHO0FBQ3ZDLGFBQU8sSUFBSSxnQkFBZ0IsTUFBTTtBQUFBLElBQ25DLFVBQUU7QUFDQSxXQUFLLG1CQUFtQixLQUFLLEdBQUc7QUFBQSxJQUNsQztBQUFBLEVBQ0Y7OztBQ2o3QkEsTUFBTSxrQkFBa0I7QUFFeEIsTUFBTUcsZUFBYyxRQUFRO0FBRTVCLE1BQU0sYUFBYSxRQUFRLG1CQUFtQjtBQUM5QyxNQUFNLGtCQUFrQixvQkFBSSxJQUFJO0FBQ2hDLE1BQU0sYUFBYSxvQkFBSSxJQUFJO0FBRVosV0FBUixHQUFxQkMsTUFBSztBQUMvQixVQUFNLFNBQVNBLEtBQUk7QUFDbkIsUUFBSSxzQkFBc0I7QUFDMUIsUUFBSSxzQkFBc0I7QUFDMUIsUUFBSSxTQUFTO0FBRWIsYUFBU0MsY0FBYztBQUNyQixZQUFNQyxVQUFTLE9BQU8sWUFBWTtBQUNsQyxZQUFNLFVBQVU7QUFBQSxRQUNkLFlBQVk7QUFBQSxNQUNkO0FBQ0EsNEJBQXNCLElBQUksZUFBZUEsUUFBTyxJQUFJLElBQUlILFlBQVcsRUFBRSxZQUFZLEdBQUcsU0FBUyxDQUFDLFdBQVcsV0FBVyxTQUFTLEdBQUcsT0FBTztBQUN2SSw0QkFBc0IsSUFBSSxlQUFlRyxRQUFPLElBQUksSUFBSUgsWUFBVyxFQUFFLFlBQVksR0FBRyxTQUFTLENBQUMsU0FBUyxHQUFHLE9BQU87QUFDakgsZUFBUyxJQUFJLGVBQWVHLFFBQU8sSUFBSSxJQUFJSCxZQUFXLEVBQUUsWUFBWSxHQUFHLFNBQVMsQ0FBQyxXQUFXLFdBQVcsT0FBTyxHQUFHLE9BQU87QUFBQSxJQUMxSDtBQUVBLFNBQUssU0FBUztBQUVkLFNBQUssVUFBVSxTQUFVLElBQUk7QUFDM0IsWUFBTSxXQUFXLFFBQVEsbUJBQW1CO0FBRTVDLFlBQU0sWUFBWSxnQkFBZ0IsUUFBUTtBQUMxQyxVQUFJLGNBQWMsTUFBTTtBQUN0QixlQUFPLEdBQUcsU0FBUztBQUFBLE1BQ3JCO0FBRUEsVUFBSSxNQUFNLEtBQUssV0FBVztBQUMxQixZQUFNLGtCQUFrQixRQUFRO0FBQ2hDLFVBQUksQ0FBQyxpQkFBaUI7QUFDcEIsY0FBTSxLQUFLLG9CQUFvQjtBQUMvQix3QkFBZ0IsSUFBSSxVQUFVLElBQUk7QUFBQSxNQUNwQztBQUVBLFdBQUssS0FBSyxVQUFVLEdBQUc7QUFFdkIsVUFBSTtBQUNGLGVBQU8sR0FBRyxHQUFHO0FBQUEsTUFDZixVQUFFO0FBQ0EsY0FBTSxhQUFhLGFBQWE7QUFFaEMsWUFBSSxDQUFDLFlBQVk7QUFDZixlQUFLLE9BQU8sUUFBUTtBQUFBLFFBQ3RCO0FBRUEsWUFBSSxDQUFDLG1CQUFtQixDQUFDLFlBQVk7QUFDbkMsZ0JBQU0sa0JBQWtCLGdCQUFnQixJQUFJLFFBQVE7QUFDcEQsMEJBQWdCLE9BQU8sUUFBUTtBQUUvQixjQUFJLGlCQUFpQjtBQUNuQixpQkFBSyxvQkFBb0I7QUFBQSxVQUMzQjtBQUFBLFFBQ0Y7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUVBLFNBQUssc0JBQXNCLFdBQVk7QUFDckMsWUFBTSxTQUFTLE9BQU8sTUFBTUEsWUFBVztBQUN2QyxxQkFBZSwyQkFBMkIsb0JBQW9CLFFBQVEsUUFBUSxJQUFJLENBQUM7QUFDbkYsYUFBTyxJQUFJLElBQUksT0FBTyxZQUFZLEdBQUcsSUFBSTtBQUFBLElBQzNDO0FBRUEsU0FBSyxzQkFBc0IsV0FBWTtBQUNyQyxxQkFBZSwyQkFBMkIsb0JBQW9CLE1BQU0sQ0FBQztBQUFBLElBQ3ZFO0FBRUEsU0FBSyxnQ0FBZ0MsV0FBWTtBQUMvQyxZQUFNLFdBQVcsUUFBUSxtQkFBbUI7QUFFNUMsVUFBSSxnQkFBZ0IsSUFBSSxRQUFRLEdBQUc7QUFDakMsd0JBQWdCLElBQUksVUFBVSxLQUFLO0FBQUEsTUFDckM7QUFBQSxJQUNGO0FBRUEsU0FBSyxTQUFTLFdBQVk7QUFDeEIsWUFBTSxZQUFZLGdCQUFnQixRQUFRLG1CQUFtQixDQUFDO0FBQzlELFVBQUksY0FBYyxNQUFNO0FBQ3RCLGVBQU87QUFBQSxNQUNUO0FBRUEsWUFBTSxTQUFTLE9BQU8sTUFBTUEsWUFBVztBQUN2QyxZQUFNLFNBQVMsT0FBTyxRQUFRLFFBQVEsZUFBZTtBQUNyRCxVQUFJLFdBQVcsSUFBSTtBQUNqQixjQUFNLElBQUksTUFBTSx1R0FBdUc7QUFBQSxNQUN6SDtBQUNBLHFCQUFlLGNBQWMsTUFBTTtBQUNuQyxhQUFPLElBQUksSUFBSSxPQUFPLFlBQVksR0FBRyxJQUFJO0FBQUEsSUFDM0M7QUFFQSxTQUFLLFlBQVksV0FBWTtBQUMzQixZQUFNLFlBQVksZ0JBQWdCLFFBQVEsbUJBQW1CLENBQUM7QUFDOUQsVUFBSSxjQUFjLE1BQU07QUFDdEIsZUFBTztBQUFBLE1BQ1Q7QUFFQSxhQUFPLEtBQUssV0FBVztBQUFBLElBQ3pCO0FBRUEsU0FBSyxhQUFhLFdBQVk7QUFDNUIsWUFBTSxJQUFJLEtBQUssZ0JBQWdCLGVBQWU7QUFDOUMsVUFBSSxNQUFNLE1BQU07QUFDZCxlQUFPO0FBQUEsTUFDVDtBQUNBLGFBQU8sSUFBSSxJQUFJLEdBQUcsSUFBSTtBQUFBLElBQ3hCO0FBRUEsU0FBSyxrQkFBa0IsU0FBVSxTQUFTO0FBQ3hDLFlBQU0sU0FBUyxPQUFPLE1BQU1BLFlBQVc7QUFDdkMsWUFBTSxTQUFTLE9BQU8sUUFBUSxRQUFRLE9BQU87QUFDN0MsVUFBSSxXQUFXLFFBQVE7QUFDckIsZUFBTztBQUFBLE1BQ1Q7QUFDQSxhQUFPLE9BQU8sWUFBWTtBQUFBLElBQzVCO0FBRUEsU0FBSyx1QkFBdUIsU0FBVUksU0FBUTtBQUM1QyxhQUFPLE1BQU07QUFDWCxhQUFLLFFBQVEsU0FBTztBQUNsQixjQUFJLGdCQUFnQkEsT0FBTTtBQUFBLFFBQzVCLENBQUM7QUFBQSxNQUNIO0FBQUEsSUFDRjtBQUVBLFNBQUssT0FBTyxTQUFVLEtBQUssS0FBSztBQUM5QixZQUFNLFFBQVEsV0FBVyxJQUFJLEdBQUc7QUFDaEMsVUFBSSxVQUFVLFFBQVc7QUFDdkIsbUJBQVcsSUFBSSxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUM7QUFBQSxNQUM5QixPQUFPO0FBQ0wsY0FBTSxDQUFDO0FBQUEsTUFDVDtBQUFBLElBQ0Y7QUFFQSxTQUFLLFNBQVMsU0FBVSxLQUFLO0FBQzNCLFlBQU0sUUFBUSxXQUFXLElBQUksR0FBRztBQUNoQyxVQUFJLE1BQU0sQ0FBQyxNQUFNLEdBQUc7QUFDbEIsbUJBQVcsT0FBTyxHQUFHO0FBQUEsTUFDdkIsT0FBTztBQUNMLGNBQU0sQ0FBQztBQUFBLE1BQ1Q7QUFBQSxJQUNGO0FBRUEsYUFBUyxnQkFBaUIsVUFBVTtBQUNsQyxZQUFNLFFBQVEsV0FBVyxJQUFJLFFBQVE7QUFDckMsVUFBSSxVQUFVLFFBQVc7QUFDdkIsZUFBTztBQUFBLE1BQ1Q7QUFDQSxhQUFPLE1BQU0sQ0FBQztBQUFBLElBQ2hCO0FBRUEsSUFBQUYsWUFBVyxLQUFLLElBQUk7QUFBQSxFQUN0QjtBQUVBLEtBQUcsVUFBVSxTQUFVRyxLQUFJO0FBQ3pCLFFBQUksZ0JBQWdCLElBQUksVUFBVSxNQUFNLE1BQU07QUFDNUMsc0JBQWdCLE9BQU8sVUFBVTtBQUNqQyxNQUFBQSxJQUFHLG9CQUFvQjtBQUFBLElBQ3pCO0FBQUEsRUFDRjs7O0FQNUpBLE1BQU0sWUFBWTtBQUNsQixNQUFNQyxlQUFjLFFBQVE7QUFFNUIsTUFBTTtBQUFBLElBQ0o7QUFBQSxJQUNBO0FBQUEsSUFDQTtBQUFBLElBQ0E7QUFBQSxFQUNGLElBQUksY0FBYztBQUVsQixNQUFNLGFBQWE7QUFDbkIsTUFBTSxhQUFhO0FBQ25CLE1BQU0sWUFBWTtBQUNsQixNQUFNLGFBQWE7QUFDbkIsTUFBTSxpQkFBaUI7QUFDdkIsTUFBTSxxQkFBcUI7QUFDM0IsTUFBTSx5Q0FBeUM7QUFDL0MsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSwyQkFBMkI7QUFDakMsTUFBTSxrQ0FBa0M7QUFDeEMsTUFBTSw4QkFBOEI7QUFDcEMsTUFBTSxnQkFBZ0I7QUFDdEIsTUFBTSx5QkFBeUI7QUFFL0IsTUFBTSxXQUFXO0FBRWpCLE1BQU0sc0JBQXNCO0FBQzVCLE1BQU0sMkJBQTJCO0FBRWpDLE1BQU0seUJBQXlCLElBQUksQ0FBQyxFQUFFLElBQUk7QUFFMUMsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSwwQkFBMEI7QUFFaEMsTUFBTSxvQ0FBb0MsS0FBS0E7QUFDL0MsTUFBTSxnQ0FBZ0MsS0FBS0E7QUFFcEMsTUFBTSwwQkFBMEI7QUFFdkMsTUFBTSx1Q0FBdUM7QUFDN0MsTUFBTSxpQ0FBaUM7QUFFdkMsTUFBTSwwQkFBMEI7QUFFaEMsTUFBTSxrQkFBa0I7QUFDeEIsTUFBTSxpQ0FBaUM7QUFDdkMsTUFBTSxpQ0FBaUM7QUFDdkMsTUFBTSxtQ0FBbUM7QUFDekMsTUFBTSw4QkFBOEI7QUFDcEMsTUFBTSw2QkFBNkI7QUFDbkMsTUFBTSwyQkFBMkI7QUFDakMsTUFBTSxpQ0FBaUM7QUFFdkMsTUFBTSx5QkFBeUI7QUFDL0IsTUFBTSwwQkFBMEI7QUFDaEMsTUFBTSwyQkFBMkI7QUFDakMsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx5QkFBeUI7QUFDL0IsTUFBTSwwQkFBMEI7QUFFaEMsTUFBTSxrQkFBa0IsSUFBSUE7QUFDNUIsTUFBTSxrQkFBa0IsSUFBSUE7QUFFNUIsTUFBTSxVQUFVO0FBQ2hCLE1BQU0sY0FBYztBQUVwQixNQUFNLG9CQUFvQixRQUFRLGtCQUFrQjtBQUNwRCxNQUFNLDRCQUE0QixRQUFRLDBCQUEwQjtBQUM3RCxNQUFNLG1CQUFtQixRQUFRLGlCQUFpQjtBQUNsRCxNQUFNLG1CQUFtQixRQUFRLGlCQUFpQjtBQUN6RCxNQUFNLHlCQUF5QixRQUFRLHVCQUF1QjtBQUM5RCxNQUFNLGtDQUFrQyxRQUFRLGdDQUFnQztBQUN6RSxNQUFNLG9CQUFvQixRQUFRLGtCQUFrQjtBQUMzRCxNQUFNLHFCQUFxQixRQUFRLG1CQUFtQjtBQUMvQyxNQUFNLHFCQUFxQixRQUFRLG1CQUFtQjtBQUN0RCxNQUFNLG9CQUFvQixRQUFRLGtCQUFrQjtBQUMzRCxNQUFNLGtDQUFrQyxRQUFRLGdDQUFnQztBQUVoRixNQUFNLDhDQUNELFFBQVEsU0FBUyxTQUNkLHdEQUNBO0FBRVIsTUFBTUMseUJBQXdCO0FBQUEsSUFDNUIsWUFBWTtBQUFBLEVBQ2Q7QUFFQSxNQUFNLDRCQUE0QixDQUFDO0FBRW5DLE1BQUksWUFBWTtBQUNoQixNQUFJLDJCQUEyQjtBQUMvQixNQUFJLGdCQUFnQjtBQUNwQixNQUFJLGdCQUFnQjtBQUNwQixNQUFNLGNBQWMsQ0FBQztBQUNyQixNQUFNLGlCQUFpQixvQkFBSSxJQUFJO0FBQy9CLE1BQU0sdUJBQXVCLENBQUM7QUFDOUIsTUFBSSxZQUFZO0FBQ2hCLE1BQUksY0FBYztBQUNsQixNQUFJLG1DQUFtQztBQUN2QyxNQUFJLHNDQUFzQztBQUMxQyxNQUFJLGtCQUFrQjtBQUN0QixNQUFNLGVBQWUsQ0FBQztBQUN0QixNQUFJLGFBQWE7QUFFakIsTUFBSSxzQkFBc0I7QUFFbkIsV0FBUyxTQUFVO0FBQ3hCLFFBQUksY0FBYyxNQUFNO0FBQ3RCLGtCQUFZLFFBQVE7QUFBQSxJQUN0QjtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxVQUFXO0FBQ2xCLFVBQU0sWUFBWSxRQUFRLGlCQUFpQixFQUN4QyxPQUFPLE9BQUssb0JBQW9CLEtBQUssRUFBRSxJQUFJLENBQUMsRUFDNUMsT0FBTyxPQUFLLENBQUMsc0JBQXNCLEtBQUssRUFBRSxJQUFJLENBQUM7QUFDbEQsUUFBSSxVQUFVLFdBQVcsR0FBRztBQUMxQixhQUFPO0FBQUEsSUFDVDtBQUNBLFVBQU0sV0FBVyxVQUFVLENBQUM7QUFFNUIsVUFBTSxTQUFVLFNBQVMsS0FBSyxRQUFRLEtBQUssTUFBTSxLQUFNLFFBQVE7QUFDL0QsVUFBTSxRQUFRLFdBQVc7QUFFekIsVUFBTSxlQUFlO0FBQUEsTUFDbkIsUUFBUTtBQUFBLE1BQ1IsS0FBTSxNQUFNO0FBQ1YsY0FBTSxFQUFFLE9BQU8sSUFBSTtBQUNuQixZQUFJLFVBQVUsT0FBTyxpQkFBaUIsSUFBSTtBQUMxQyxZQUFJLFlBQVksTUFBTTtBQUNwQixvQkFBVSxPQUFPLGlCQUFpQixJQUFJO0FBQUEsUUFDeEM7QUFDQSxlQUFPO0FBQUEsTUFDVDtBQUFBLE1BQ0E7QUFBQSxNQUNBLG1CQUFtQjtBQUFBLElBQ3JCO0FBRUEsaUJBQWEsK0JBQStCLFVBQzFDLGFBQWEsS0FBSyxrREFBa0QsTUFBTSxRQUMxRSxhQUFhLEtBQUssc0NBQXNDLE1BQU07QUFHaEUsVUFBTSxVQUFVLFFBQ1o7QUFBQSxNQUNFLFdBQVc7QUFBQSxRQUNULHVCQUF1QixDQUFDLHlCQUF5QixPQUFPLENBQUMsV0FBVyxPQUFPLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFHckYsb0NBQW9DLFNBQVUsU0FBUztBQUNyRCxlQUFLLHFDQUFxQztBQUFBLFFBQzVDO0FBQUE7QUFBQSxRQUdBLDZFQUE2RSxDQUFDLGdDQUFnQyxXQUFXLENBQUMsV0FBVyxXQUFXLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFFMUosaUVBQWlFLENBQUMsZ0NBQWdDLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxDQUFDO0FBQUE7QUFBQSxRQUU5SSx3REFBd0QsQ0FBQyx5Q0FBeUMsUUFBUSxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUEsUUFDaEksMERBQTBELENBQUMsMkNBQTJDLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFHcEksMERBQTBELFNBQVUsU0FBUztBQUMzRSxlQUFLLGtDQUFrQyxJQUFJLElBQUksZUFBZSxTQUFTLFdBQVcsQ0FBQyxXQUFXLFFBQVEsU0FBUyxHQUFHQSxzQkFBcUI7QUFBQSxRQUN6STtBQUFBO0FBQUEsUUFFQSwwRkFBMEYsU0FBVSxTQUFTO0FBQzNHLGVBQUssa0NBQWtDLElBQUksSUFBSSxlQUFlLFNBQVMsV0FBVyxDQUFDLFdBQVcsUUFBUSxTQUFTLEdBQUdBLHNCQUFxQjtBQUFBLFFBQ3pJO0FBQUE7QUFBQSxRQUdBLG9DQUFvQyxTQUFVLFNBQVM7QUFDckQsY0FBSTtBQUNKLGNBQUksbUJBQW1CLEtBQUssSUFBSTtBQUU5QiwyQkFBZSw0Q0FBNEMsU0FBUyxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUEsVUFDNUYsT0FBTztBQUVMLDJCQUFlLElBQUksZUFBZSxTQUFTLFdBQVcsQ0FBQyxXQUFXLFNBQVMsR0FBR0Esc0JBQXFCO0FBQUEsVUFDckc7QUFDQSxlQUFLLDhCQUE4QixJQUFJLFNBQVVDLEtBQUksUUFBUSxLQUFLO0FBQ2hFLG1CQUFPLGFBQWFBLEtBQUksR0FBRztBQUFBLFVBQzdCO0FBQUEsUUFDRjtBQUFBO0FBQUEsUUFFQSxnREFBZ0QsQ0FBQyxnQ0FBZ0MsV0FBVyxDQUFDLFdBQVcsV0FBVyxTQUFTLENBQUM7QUFBQTtBQUFBO0FBQUEsUUFJN0gsaURBQWlELENBQUMsOEJBQThCLFdBQVcsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFFakgsMkNBQTJDLENBQUMsOEJBQThCLFdBQVcsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFHM0csc0NBQXNDLENBQUMsK0JBQStCLFFBQVEsQ0FBQyxXQUFXLFdBQVcsTUFBTSxDQUFDO0FBQUE7QUFBQSxRQUU1RyxtQ0FBbUMsU0FBVSxTQUFTO0FBQ3BELGdCQUFNLGFBQWEsSUFBSSxlQUFlLFNBQVMsUUFBUSxDQUFDLFNBQVMsR0FBR0Qsc0JBQXFCO0FBQ3pGLGVBQUssNkJBQTZCLElBQUksU0FBVSxZQUFZLE9BQU8sYUFBYTtBQUM5RSxtQkFBTyxXQUFXLFVBQVU7QUFBQSxVQUM5QjtBQUFBLFFBQ0Y7QUFBQSxRQUVBLGlDQUFpQyxDQUFDLDhCQUE4QixRQUFRLENBQUMsU0FBUyxDQUFDO0FBQUE7QUFBQSxRQUduRix3REFBd0QsQ0FBQyxrQ0FBa0MsUUFBUSxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUE7QUFBQSxRQUV6SCxnRUFBZ0UsU0FBVSxTQUFTO0FBQ2pGLGdCQUFNLGVBQWUsSUFBSSxlQUFlLFNBQVMsUUFBUSxDQUFDLFdBQVcsV0FBVyxTQUFTLEdBQUdBLHNCQUFxQjtBQUNqSCxlQUFLLGdDQUFnQyxJQUFJLFNBQVUsYUFBYSxTQUFTO0FBQ3ZFLHlCQUFhLGFBQWEsU0FBUyxJQUFJO0FBQUEsVUFDekM7QUFBQSxRQUNGO0FBQUEsUUFFQSxvRUFBb0UsQ0FBQyx1Q0FBdUMsUUFBUSxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUEsUUFFMUksNERBQTRELENBQUMsK0JBQStCLFFBQVEsQ0FBQyxXQUFXLFdBQVcsU0FBUyxDQUFDO0FBQUEsUUFDckksdUpBQXVKLENBQUMsK0JBQStCLFFBQVEsQ0FBQyxXQUFXLFdBQVcsV0FBVyxPQUFPLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFHbFAsd0pBQXdKLFNBQVUsU0FBUztBQUN6SyxnQkFBTSxlQUFlLElBQUksZUFBZSxTQUFTLFFBQVEsQ0FBQyxXQUFXLFdBQVcsV0FBVyxRQUFRLE9BQU8sU0FBUyxHQUFHQSxzQkFBcUI7QUFDM0ksZUFBSyw2QkFBNkIsSUFBSSxTQUFVLFVBQVUsT0FBTyxRQUFRLFVBQVUsV0FBVztBQUM1RixrQkFBTSxzQkFBc0I7QUFDNUIseUJBQWEsVUFBVSxPQUFPLFFBQVEscUJBQXFCLFVBQVUsU0FBUztBQUFBLFVBQ2hGO0FBQUEsUUFDRjtBQUFBLFFBRUEseUVBQXlFLENBQUMsbUNBQW1DLFFBQVEsQ0FBQyxXQUFXLFdBQVcsV0FBVyxRQUFRLFFBQVEsTUFBTSxDQUFDO0FBQUEsUUFDOUsseUVBQXlFLENBQUMsbUNBQW1DLFFBQVEsQ0FBQyxXQUFXLFdBQVcsV0FBVyxRQUFRLFVBQVUsTUFBTSxDQUFDO0FBQUEsUUFDaEwsZ0VBQWdFLENBQUMsZ0NBQWdDLFFBQVEsQ0FBQyxXQUFXLE1BQU0sQ0FBQztBQUFBLFFBQzVILG9DQUFvQyxDQUFDLGdDQUFnQyxXQUFXLENBQUMsU0FBUyxDQUFDO0FBQUEsUUFDM0YsNENBQTRDLFNBQVUsU0FBUztBQUM3RCxlQUFLLHFDQUFxQyxJQUFJLDhDQUE4QyxTQUFTLENBQUMsU0FBUyxDQUFDO0FBQUEsUUFDbEg7QUFBQSxRQUNBLG9EQUFvRCxTQUFVLFNBQVM7QUFDckUsZUFBSyw2Q0FBNkMsSUFBSSw0QkFBNEIsT0FBTztBQUFBLFFBQzNGO0FBQUEsUUFFQSwwQkFBMEIsQ0FBQyx3QkFBd0IsV0FBVyxDQUFDLENBQUM7QUFBQSxRQUNoRSxzQ0FBc0MsQ0FBQyxtQ0FBbUMsV0FBVyxDQUFDLFNBQVMsQ0FBQztBQUFBLFFBRWhHLHVHQUF1RyxTQUFVLFNBQVM7QUFDeEgsZUFBSyxtQ0FBbUMsSUFBSTtBQUFBLFFBQzlDO0FBQUEsUUFDQSxxQ0FBcUMsU0FBVSxTQUFTO0FBQ3RELGVBQUssaUNBQWlDLElBQUksOENBQThDLFNBQVMsQ0FBQyxTQUFTLENBQUM7QUFBQSxRQUM5RztBQUFBLFFBRUEsbUNBQW1DLFNBQVUsU0FBUztBQUNwRCxlQUFLLDhCQUE4QixJQUFJLDhDQUE4QyxTQUFTLENBQUMsV0FBVyxNQUFNLENBQUM7QUFBQSxRQUNuSDtBQUFBLFFBQ0Esd0NBQXdDLFNBQVUsU0FBUztBQUN6RCxlQUFLLHNDQUFzQyxJQUFJLDhDQUE4QyxTQUFTLENBQUMsV0FBVyxNQUFNLENBQUM7QUFBQSxRQUMzSDtBQUFBO0FBQUEsUUFHQSxrQ0FBa0MsQ0FBQywrQkFBK0IsV0FBVyxDQUFDLENBQUM7QUFBQSxRQUMvRSwwQ0FBMEMsU0FBVSxTQUFTO0FBQzNELGVBQUssNEJBQTRCLElBQUksSUFBSSxlQUFlLFNBQVMsV0FBVyxDQUFDLFdBQVcsU0FBUyxHQUFHQSxzQkFBcUI7QUFBQSxRQUMzSDtBQUFBLFFBQ0EsMkNBQTJDLFNBQVUsU0FBUztBQUM1RCxnQkFBTSxRQUFRLElBQUksZUFBZSxTQUFTLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxHQUFHQSxzQkFBcUI7QUFDN0csZUFBSyw0QkFBNEIsSUFBSSxTQUFVLFNBQVMsV0FBVztBQUNqRSxrQkFBTSxpQkFBaUI7QUFDdkIsbUJBQU8sTUFBTSxTQUFTLFdBQVcsY0FBYztBQUFBLFVBQ2pEO0FBQUEsUUFDRjtBQUFBLFFBQ0EsMkNBQTJDLFNBQVUsU0FBUztBQUM1RCxnQkFBTSxRQUFRLElBQUksZUFBZSxTQUFTLFdBQVcsQ0FBQyxXQUFXLFdBQVcsTUFBTSxHQUFHQSxzQkFBcUI7QUFDMUcsZUFBSyw0QkFBNEIsSUFBSSxTQUFVLFNBQVMsV0FBVztBQUNqRSxrQkFBTSxpQkFBaUI7QUFDdkIsbUJBQU8sTUFBTSxTQUFTLFdBQVcsY0FBYztBQUFBLFVBQ2pEO0FBQUEsUUFDRjtBQUFBLFFBRUEsK0JBQStCLENBQUMsNEJBQTRCLFFBQVEsQ0FBQyxNQUFNLENBQUM7QUFBQSxRQUM1RSxxREFBcUQsQ0FBQywyQkFBMkIsUUFBUSxDQUFDLFNBQVMsQ0FBQztBQUFBLFFBQ3BHLDJEQUEyRCxDQUFDLHVEQUF1RCxRQUFRLENBQUMsU0FBUyxDQUFDO0FBQUEsUUFDdEkseUJBQXlCLENBQUMsdUJBQXVCLFFBQVEsQ0FBQyxDQUFDO0FBQUEsUUFDM0Qsd0JBQXdCLENBQUMsc0JBQXNCLFFBQVEsQ0FBQyxDQUFDO0FBQUEsUUFDekQsa0VBQWtFLENBQUMsbUNBQW1DLFFBQVEsQ0FBQyxTQUFTLENBQUM7QUFBQSxRQUN6SCxxQ0FBcUMsQ0FBQyxrQ0FBa0MsUUFBUSxDQUFDLENBQUM7QUFBQSxRQUVsRixtRUFBbUUsQ0FBQyw4Q0FBOEMsUUFBUSxDQUFDLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFFckkscUVBQXFFLENBQUMsOENBQThDLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBO0FBQUEsUUFFbEosbUVBQW1FLFNBQVUsU0FBUztBQUNwRixnQkFBTSxhQUFhLElBQUksZUFBZSxTQUFTLFFBQVEsQ0FBQyxTQUFTLEdBQUdBLHNCQUFxQjtBQUN6RixlQUFLLDRDQUE0QyxJQUFJLFNBQVUsaUJBQWlCLEtBQUs7QUFDbkYsdUJBQVcsZUFBZTtBQUFBLFVBQzVCO0FBQUEsUUFDRjtBQUFBLFFBQ0Esd0NBQXdDLENBQUMscUNBQXFDLFFBQVEsQ0FBQyxTQUFTLENBQUM7QUFBQSxRQUNqRyx1RUFBdUUsQ0FBQyxvQ0FBb0MsUUFBUSxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUE7QUFBQSxRQUcxSSx5REFBeUQsQ0FBQywwQ0FBMEMsV0FBVyxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUEsUUFDckksc0RBQXNELENBQUMseUNBQXlDLFdBQVcsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBLFFBQ2pJLDRDQUE0QyxDQUFDLHdDQUF3QyxXQUFXLENBQUMsQ0FBQztBQUFBLFFBRWxHLDJEQUEyRCxDQUFDLG1DQUFtQyxRQUFRLENBQUMsV0FBVyxVQUFVLFdBQVcsU0FBUyxDQUFDO0FBQUEsTUFDcEo7QUFBQSxNQUNBLFdBQVc7QUFBQSxRQUNULHdCQUF3QixTQUFVLFNBQVM7QUFDekMsZUFBSyxnQkFBZ0IsTUFBTSxDQUFDLFFBQVEsWUFBWSxFQUFFLE9BQU87QUFBQSxRQUMzRDtBQUFBLFFBQ0EsK0JBQStCLFNBQVUsU0FBUztBQUNoRCxlQUFLLG1CQUFtQixNQUFNLENBQUMsQ0FBQyxRQUFRLE9BQU87QUFBQSxRQUNqRDtBQUFBLE1BQ0Y7QUFBQSxNQUNBLFdBQVcsb0JBQUksSUFBSTtBQUFBLFFBQ2pCO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsTUFDRixDQUFDO0FBQUEsSUFDSCxJQUNBO0FBQUEsTUFDRSxXQUFXO0FBQUEsUUFDVCw0Q0FBNEMsQ0FBQyx3QkFBd0IsV0FBVyxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQUEsUUFDdEcsK0JBQStCLENBQUMsbUJBQW1CLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBLFFBQ2pGLDJCQUEyQixDQUFDLHdCQUF3QixXQUFXLENBQUMsQ0FBQztBQUFBLFFBQ2pFLDRCQUE0QixDQUFDLHlCQUF5QixXQUFXLENBQUMsQ0FBQztBQUFBLFFBQ25FLCtCQUErQixDQUFDLG9CQUFvQixTQUFTLENBQUMsU0FBUyxDQUFDO0FBQUEsUUFDeEUsdUJBQXVCLENBQUMseUJBQXlCLE9BQU8sQ0FBQyxXQUFXLE9BQU8sU0FBUyxDQUFDO0FBQUEsTUFDdkY7QUFBQSxNQUNBLFdBQVc7QUFBQSxRQUNULFNBQVMsU0FBVSxTQUFTO0FBQzFCLGVBQUssVUFBVTtBQUFBLFFBQ2pCO0FBQUEsUUFDQSxNQUFNLFNBQVUsU0FBUztBQUN2QixlQUFLLE9BQU87QUFBQSxRQUNkO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFFSixVQUFNO0FBQUEsTUFDSixZQUFZLENBQUM7QUFBQSxNQUNiLFlBQVksQ0FBQztBQUFBLE1BQ2IsWUFBWSxvQkFBSSxJQUFJO0FBQUEsSUFDdEIsSUFBSTtBQUVKLFVBQU0sVUFBVSxDQUFDO0FBRWpCLGVBQVcsQ0FBQyxNQUFNLFNBQVMsS0FBSyxPQUFPLFFBQVEsU0FBUyxHQUFHO0FBQ3pELFlBQU0sVUFBVSxhQUFhLEtBQUssSUFBSTtBQUN0QyxVQUFJLFlBQVksTUFBTTtBQUNwQixZQUFJLE9BQU8sY0FBYyxZQUFZO0FBQ25DLG9CQUFVLEtBQUssY0FBYyxPQUFPO0FBQUEsUUFDdEMsT0FBTztBQUNMLHVCQUFhLFVBQVUsQ0FBQyxDQUFDLElBQUksSUFBSSxlQUFlLFNBQVMsVUFBVSxDQUFDLEdBQUcsVUFBVSxDQUFDLEdBQUdBLHNCQUFxQjtBQUFBLFFBQzVHO0FBQUEsTUFDRixPQUFPO0FBQ0wsWUFBSSxDQUFDLFVBQVUsSUFBSSxJQUFJLEdBQUc7QUFDeEIsa0JBQVEsS0FBSyxJQUFJO0FBQUEsUUFDbkI7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUVBLGVBQVcsQ0FBQyxNQUFNLE9BQU8sS0FBSyxPQUFPLFFBQVEsU0FBUyxHQUFHO0FBQ3ZELFlBQU0sVUFBVSxhQUFhLEtBQUssSUFBSTtBQUN0QyxVQUFJLFlBQVksTUFBTTtBQUNwQixnQkFBUSxLQUFLLGNBQWMsT0FBTztBQUFBLE1BQ3BDLE9BQU87QUFDTCxZQUFJLENBQUMsVUFBVSxJQUFJLElBQUksR0FBRztBQUN4QixrQkFBUSxLQUFLLElBQUk7QUFBQSxRQUNuQjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBRUEsUUFBSSxRQUFRLFNBQVMsR0FBRztBQUN0QixZQUFNLElBQUksTUFBTSxvRUFBb0UsUUFBUSxLQUFLLElBQUksQ0FBQztBQUFBLElBQ3hHO0FBRUEsVUFBTSxNQUFNLE9BQU8sTUFBTUQsWUFBVztBQUNwQyxVQUFNLFVBQVUsT0FBTyxNQUFNLFNBQVM7QUFDdEMsbUJBQWUseUJBQXlCLGFBQWEsc0JBQXNCLEtBQUssR0FBRyxPQUFPLENBQUM7QUFDM0YsUUFBSSxRQUFRLFFBQVEsTUFBTSxHQUFHO0FBQzNCLGFBQU87QUFBQSxJQUNUO0FBQ0EsaUJBQWEsS0FBSyxJQUFJLFlBQVk7QUFFbEMsUUFBSSxPQUFPO0FBQ1QsWUFBTSxXQUFXLG1CQUFtQjtBQUVwQyxVQUFJO0FBQ0osVUFBSSxZQUFZLElBQUk7QUFDbEIsZ0NBQXdCO0FBQUEsTUFDMUIsV0FBVyxZQUFZLElBQUk7QUFDekIsZ0NBQXdCO0FBQUEsTUFDMUIsT0FBTztBQUNMLGdDQUF3QjtBQUFBLE1BQzFCO0FBQ0EsbUJBQWEsd0JBQXdCO0FBRXJDLFlBQU0sYUFBYSxhQUFhLEdBQUcsSUFBSUEsWUFBVyxFQUFFLFlBQVk7QUFDaEUsbUJBQWEsYUFBYTtBQUMxQixZQUFNLGNBQWMsa0JBQWtCLFlBQVk7QUFDbEQsWUFBTSxnQkFBZ0IsWUFBWTtBQUNsQyxZQUFNLHdCQUF3QixjQUFjO0FBQzVDLG1CQUFhLHFCQUFzQiwwQkFBMEIsT0FBUSxXQUFXLElBQUkscUJBQXFCLElBQUk7QUFFN0csWUFBTSwyQkFBMkIsa0JBQWtCLEtBQUs7QUFDeEQsVUFBSSw0QkFBNEIsYUFBYSxzQkFBc0IsTUFBTTtBQUN2RSxxQkFBYSxxQkFBcUIsYUFBYSxtQkFBbUIsWUFBWTtBQUFBLE1BQ2hGO0FBRUEsbUJBQWEsVUFBVSxXQUFXLElBQUksY0FBYyxJQUFJLEVBQUUsWUFBWTtBQUN0RSxtQkFBYSxnQkFBZ0IsV0FBVyxJQUFJLGNBQWMsVUFBVSxFQUFFLFlBQVk7QUFRbEYsWUFBTSxjQUFjLFdBQVcsSUFBSSxjQUFjLFdBQVcsRUFBRSxZQUFZO0FBRTFFLFlBQU0scUJBQXFCLHNCQUFzQixZQUFZLFdBQVcsRUFBRTtBQUMxRSxZQUFNLDRCQUE0QixZQUFZLElBQUksbUJBQW1CLHlCQUF5QixFQUFFLFlBQVk7QUFDNUcsWUFBTSw2QkFBNkIsWUFBWSxJQUFJLG1CQUFtQiwwQkFBMEIsRUFBRSxZQUFZO0FBQzlHLFlBQU0sNEJBQTRCLFlBQVksSUFBSSxtQkFBbUIseUJBQXlCLEVBQUUsWUFBWTtBQUM1RyxZQUFNLHFDQUFxQyxZQUFZLElBQUksbUJBQW1CLGtDQUFrQyxFQUFFLFlBQVk7QUFFOUgsbUJBQWEsaUJBQWlCO0FBQUEsUUFDNUIsU0FBUztBQUFBLFFBQ1Q7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxNQUNGO0FBRUEsWUFBTUUsTUFBSyxJQUFJLEdBQUcsWUFBWTtBQUU5QixtQkFBYSwrQkFBK0Isb0NBQW9DLDJCQUEyQkEsR0FBRTtBQUM3RyxtQkFBYSw4QkFBOEIsb0NBQW9DLG9DQUFvQ0EsR0FBRTtBQUNySCxtQkFBYSwrQkFBK0Isb0NBQW9DLDJCQUEyQkEsR0FBRTtBQUU3RyxVQUFJLGFBQWEsOEJBQThCLE1BQU0sUUFBVztBQUM5RCxxQkFBYSw4QkFBOEIsSUFBSSxvQ0FBb0MsWUFBWTtBQUFBLE1BQ2pHO0FBQ0EsVUFBSSxhQUFhLDhCQUE4QixNQUFNLFFBQVc7QUFDOUQscUJBQWEsOEJBQThCLElBQUkseUJBQXlCLFlBQVk7QUFBQSxNQUN0RjtBQUNBLFVBQUksYUFBYSw4QkFBOEIsTUFBTSxRQUFXO0FBQzlELHFCQUFhLDhCQUE4QixJQUFJLGFBQWEsc0NBQXNDO0FBQUEsTUFDcEc7QUFDQSxVQUFJLGFBQWEsc0NBQXNDLE1BQU0sUUFBVztBQUN0RSxxQkFBYSxxQkFBcUIsYUFBYSxzQ0FBc0MsRUFBRTtBQUFBLE1BQ3pGLE9BQU87QUFDTCxxQkFBYSxxQkFBcUIsYUFBYSxLQUFLLGtCQUFrQjtBQUFBLE1BQ3hFO0FBRUEsc0JBQWdCLGtCQUFrQixjQUFjQSxHQUFFO0FBRWxELHVDQUFpQyxZQUFZO0FBRTdDLFVBQUksY0FBYztBQUNsQixhQUFPLGVBQWUsY0FBYyxTQUFTO0FBQUEsUUFDM0MsTUFBTztBQUNMLGNBQUksZ0JBQWdCLE1BQU07QUFDeEIsMEJBQWMsQ0FBQyxlQUFlQSxLQUFJLEtBQUssVUFBVSxDQUFDO0FBQUEsVUFDcEQ7QUFDQSxpQkFBTyxZQUFZLENBQUM7QUFBQSxRQUN0QjtBQUFBLE1BQ0YsQ0FBQztBQUFBLElBQ0g7QUFFQSxVQUFNLGFBQWEsU0FBUyxpQkFBaUIsRUFDMUMsT0FBTyxTQUFPLElBQUksS0FBSyxRQUFRLElBQUksTUFBTSxDQUFDLEVBQzFDLE9BQU8sQ0FBQyxRQUFRLFFBQVE7QUFDdkIsYUFBTyxJQUFJLElBQUksSUFBSSxJQUFJO0FBQ3ZCLGFBQU87QUFBQSxJQUNULEdBQUcsQ0FBQyxDQUFDO0FBQ1AsaUJBQWEsT0FBTyxJQUFJLGVBQWUsV0FBVyxTQUFTLFdBQVcsT0FBTyxXQUFXLENBQUMsT0FBTyxHQUFHRCxzQkFBcUI7QUFDeEgsaUJBQWEsVUFBVSxJQUFJLGVBQWUsV0FBVyxRQUFRLFFBQVEsQ0FBQyxTQUFTLEdBQUdBLHNCQUFxQjtBQUV2RyxvQkFBZ0IsUUFBUSxtQkFBbUI7QUFFM0MsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLGVBQWdCQyxLQUFJQyxVQUFTO0FBQ3BDLFFBQUksTUFBTTtBQUVWLElBQUFELElBQUcsUUFBUSxNQUFNO0FBQ2YsWUFBTSx5QkFBeUIsT0FBTyxFQUFFLEtBQUssMEdBQTBHO0FBQ3ZKLFVBQUksMkJBQTJCLE1BQU07QUFDbkM7QUFBQSxNQUNGO0FBQ0EsWUFBTSxxQkFBcUIsSUFBSTtBQUFBLFFBQWU7QUFBQSxRQUM1QztBQUFBLFFBQ0EsQ0FBQyxXQUFXLFdBQVcsU0FBUztBQUFBLE1BQUM7QUFDbkMsWUFBTSxXQUFXLE9BQU8sTUFBTUYsWUFBVztBQUN6QyxZQUFNLFVBQVUsbUJBQW1CRyxVQUFTLE9BQU8sZ0JBQWdCLG9CQUFvQixHQUFHLFFBQVE7QUFDbEcsVUFBSSxDQUFDLFNBQVM7QUFFWjtBQUFBLE1BQ0Y7QUFFQSxZQUFNLGdCQUFnQixhQUFhLE9BQU87QUFDMUMsWUFBTSxTQUFTRCxJQUFHLGdCQUFnQixhQUFhO0FBQy9DLFVBQUksV0FBVyxNQUFNO0FBQ25CO0FBQUEsTUFDRjtBQUNBLFlBQU0sSUFBSSxTQUFTLFFBQVFBLEdBQUU7QUFFN0IsWUFBTSxVQUFVLE9BQU8sTUFBTSxDQUFDO0FBQzlCLGNBQVEsU0FBUyxrQkFBa0IsYUFBYTtBQUNoRCxZQUFNLFNBQVMsSUFBSSxnQkFBZ0IsT0FBTztBQUMxQyxVQUFJLFdBQVcsUUFBUTtBQUNyQixjQUFNO0FBQUEsTUFDUjtBQUFBLElBQ0YsQ0FBQztBQUVELFdBQU87QUFBQSxFQUNUO0FBRU8sV0FBUyx1QkFBd0IsS0FBSyxVQUFVO0FBQ3JELFVBQU1FLE9BQU0sT0FBTztBQUNuQixRQUFJQSxLQUFJLFdBQVcsT0FBTztBQUN4QjtBQUFBLElBQ0Y7QUFFQSxRQUFJLGFBQWEsUUFBUTtBQUFBLEVBQzNCO0FBRUEsV0FBUyxhQUFjQSxNQUFLO0FBQzFCLFdBQU87QUFBQSxNQUNMLFFBQVNKLGlCQUFnQixJQUNyQjtBQUFBLFFBQ0UsYUFBYTtBQUFBLFFBQ2IsU0FBUztBQUFBLE1BQ1gsSUFDQTtBQUFBLFFBQ0UsYUFBYTtBQUFBLFFBQ2IsU0FBUztBQUFBLE1BQ1g7QUFBQSxJQUNOO0FBQUEsRUFDRjtBQUVBLFdBQVMsbUJBQW9CSSxNQUFLO0FBMEJoQyxVQUFNRixNQUFLRSxLQUFJO0FBQ2YsVUFBTUQsV0FBVUMsS0FBSTtBQUVwQixVQUFNLGNBQWVKLGlCQUFnQixJQUFLLE1BQU07QUFDaEQsVUFBTSxZQUFZLGNBQWUsTUFBTUE7QUFFdkMsVUFBTSxXQUFXLG1CQUFtQjtBQUNwQyxVQUFNLFdBQVcsbUJBQW1CO0FBQ3BDLFVBQU0sRUFBRSw2QkFBNkIsSUFBSUk7QUFFekMsUUFBSSxPQUFPO0FBRVgsYUFBUyxTQUFTLGFBQWEsV0FBVyxXQUFXLFVBQVVKLGNBQWE7QUFDMUUsWUFBTSxRQUFRRyxTQUFRLElBQUksTUFBTSxFQUFFLFlBQVk7QUFDOUMsVUFBSSxNQUFNLE9BQU9ELEdBQUUsR0FBRztBQUNwQixZQUFJO0FBQ0osWUFBSSxxQkFBcUI7QUFDekIsWUFBSSxZQUFZLE1BQU0sYUFBYSxjQUFjLDhCQUE4QjtBQUM3RSwrQkFBcUIsQ0FBQyxTQUFVLElBQUlGLFlBQVk7QUFDaEQsK0JBQXFCLFNBQVNBO0FBQUEsUUFDaEMsV0FBVyxZQUFZLE1BQU0sYUFBYSxLQUFLO0FBQzdDLCtCQUFxQixDQUFDLFNBQVUsSUFBSUEsY0FBYyxTQUFVLElBQUlBLFlBQVk7QUFDNUUsK0JBQXFCLFNBQVNBO0FBQUEsUUFDaEMsV0FBVyxZQUFZLElBQUk7QUFDekIsK0JBQXFCLENBQUMsU0FBVSxJQUFJQSxZQUFZO0FBQUEsUUFDbEQsV0FBVyxZQUFZLElBQUk7QUFDekIsK0JBQXFCLENBQUMsU0FBUyxrQkFBbUIsSUFBSUEsWUFBWTtBQUFBLFFBQ3BFLE9BQU87QUFDTCwrQkFBcUIsQ0FBQyxTQUFTLGtCQUFtQixJQUFJQSxZQUFZO0FBQUEsUUFDcEU7QUFFQSxtQkFBVyxxQkFBcUIsb0JBQW9CO0FBQ2xELGdCQUFNLG9CQUFvQixvQkFBb0JBO0FBQzlDLGdCQUFNLG1CQUFtQixvQkFBb0JBO0FBRTdDLGNBQUk7QUFDSixjQUFJLDhCQUE4QjtBQUNoQyx5QkFBYSxtQkFBb0IsSUFBSUE7QUFBQSxVQUN2QyxXQUFXLFlBQVksSUFBSTtBQUN6Qix5QkFBYSxtQkFBb0IsSUFBSUE7QUFBQSxVQUN2QyxXQUFXLFlBQVksSUFBSTtBQUN6Qix5QkFBYSxtQkFBb0IsSUFBSUE7QUFBQSxVQUN2QyxPQUFPO0FBQ0wseUJBQWEsbUJBQW9CLElBQUlBO0FBQUEsVUFDdkM7QUFFQSxnQkFBTSxZQUFZO0FBQUEsWUFDaEIsUUFBUTtBQUFBLGNBQ04sTUFBTTtBQUFBLGNBQ04sWUFBWTtBQUFBLGNBQ1osYUFBYTtBQUFBLGNBQ2IsYUFBYTtBQUFBLGNBQ2IsY0FBYztBQUFBLFlBQ2hCO0FBQUEsVUFDRjtBQUNBLGNBQUkseUJBQXlCRyxVQUFTLFNBQVMsTUFBTSxNQUFNO0FBQ3pELG1CQUFPO0FBQ1A7QUFBQSxVQUNGO0FBQUEsUUFDRjtBQUVBO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFFQSxRQUFJLFNBQVMsTUFBTTtBQUNqQixZQUFNLElBQUksTUFBTSwyQ0FBMkM7QUFBQSxJQUM3RDtBQUVBLFVBQU0sMkJBQTJCLGtCQUFrQixLQUFLO0FBQ3hELFNBQUssT0FBTyxrQkFBa0IsMkJBQzFCLGdDQUFnQ0MsSUFBRyxJQUNuQywrQkFBK0JBLElBQUc7QUFFdEMsU0FBSyxPQUFPLG9CQUFvQixpQ0FBaUNBLElBQUc7QUFFcEUsV0FBTztBQUFBLEVBQ1Q7QUFFQSxNQUFNLCtCQUErQjtBQUFBLElBQ25DLE1BQU07QUFBQSxJQUNOLEtBQUs7QUFBQSxJQUNMLEtBQUs7QUFBQSxJQUNMLE9BQU87QUFBQSxFQUNUO0FBRUEsV0FBUywrQkFBZ0NBLE1BQUs7QUFDNUMsVUFBTSxPQUFPQSxLQUFJLG1DQUFtQztBQUNwRCxRQUFJLFNBQVMsUUFBVztBQUN0QixhQUFPO0FBQUEsSUFDVDtBQUVBLFdBQU8sb0JBQW9CLE1BQU0sNkJBQTZCLFFBQVEsSUFBSSxHQUFHLEVBQUUsT0FBTyxHQUFHLENBQUM7QUFBQSxFQUM1RjtBQUVBLFdBQVMsOEJBQStCLE1BQU07QUFDNUMsUUFBSSxLQUFLLGFBQWEsT0FBTztBQUMzQixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sU0FBUyxLQUFLLFNBQVMsQ0FBQyxFQUFFLE1BQU07QUFDdEMsUUFBSSxTQUFTLE9BQVMsU0FBUyxNQUFPO0FBQ3BDLGFBQU87QUFBQSxJQUNUO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLDhCQUErQixNQUFNO0FBQzVDLFFBQUksS0FBSyxhQUFhLFNBQVM7QUFDN0IsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLE1BQU0sS0FBSztBQUNqQixRQUFJLElBQUksV0FBVyxHQUFHO0FBQ3BCLGFBQU87QUFBQSxJQUNUO0FBRUEsVUFBTSxNQUFNLElBQUksQ0FBQztBQUNqQixRQUFJLElBQUksU0FBUyxPQUFPO0FBQ3RCLGFBQU87QUFBQSxJQUNUO0FBRUEsV0FBTyxJQUFJO0FBQUEsRUFDYjtBQUVBLFdBQVMsZ0NBQWlDLE1BQU07QUFDOUMsUUFBSSxLQUFLLGFBQWEsT0FBTztBQUMzQixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxLQUFLO0FBQ2pCLFFBQUksSUFBSSxXQUFXLEdBQUc7QUFDcEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxRQUFJLElBQUksQ0FBQyxFQUFFLFVBQVUsUUFBUSxJQUFJLENBQUMsRUFBRSxVQUFVLE1BQU07QUFDbEQsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLE1BQU0sSUFBSSxDQUFDO0FBQ2pCLFFBQUksSUFBSSxTQUFTLE9BQU87QUFDdEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLFNBQVMsSUFBSSxNQUFNLFFBQVE7QUFDakMsUUFBSSxTQUFTLE9BQVMsU0FBUyxNQUFPO0FBQ3BDLGFBQU87QUFBQSxJQUNUO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxNQUFNLCtCQUErQjtBQUFBLElBQ25DLE1BQU07QUFBQSxJQUNOLEtBQUs7QUFBQSxJQUNMLEtBQUs7QUFBQSxJQUNMLE9BQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxnQ0FBaUNBLE1BQUs7QUFDN0MsVUFBTSxPQUFPQSxLQUFJLG1DQUFtQztBQUNwRCxRQUFJLFNBQVMsUUFBVztBQUN0QixhQUFPO0FBQUEsSUFDVDtBQUVBLFdBQU8sb0JBQW9CLE1BQU0sNkJBQTZCLFFBQVEsSUFBSSxHQUFHLEVBQUUsT0FBTyxHQUFHLENBQUM7QUFBQSxFQUM1RjtBQUVBLFdBQVMsK0JBQWdDLE1BQU07QUFDN0MsUUFBSSxLQUFLLGFBQWEsT0FBTztBQUMzQixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxLQUFLO0FBRWpCLFVBQU0sTUFBTSxJQUFJLENBQUM7QUFDakIsUUFBSSxJQUFJLFVBQVUsT0FBTztBQUN2QixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxJQUFJLENBQUM7QUFDakIsUUFBSSxJQUFJLFNBQVMsT0FBTztBQUN0QixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxJQUFJO0FBQ2hCLFFBQUksSUFBSSxTQUFTLE9BQU87QUFDdEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLFNBQVMsSUFBSTtBQUNuQixRQUFJLFNBQVMsT0FBUyxTQUFTLE1BQU87QUFDcEMsYUFBTztBQUFBLElBQ1Q7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMsK0JBQWdDLE1BQU07QUFDN0MsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLGlDQUFrQyxNQUFNO0FBQy9DLFFBQUksS0FBSyxhQUFhLE9BQU87QUFDM0IsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLE1BQU0sS0FBSztBQUVqQixRQUFJLElBQUksQ0FBQyxFQUFFLFVBQVUsTUFBTTtBQUN6QixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxJQUFJLENBQUMsRUFBRTtBQUNuQixRQUFJLElBQUksU0FBUyxNQUFNO0FBQ3JCLGFBQU87QUFBQSxJQUNUO0FBRUEsVUFBTSxTQUFTLElBQUk7QUFDbkIsUUFBSSxTQUFTLE9BQVMsU0FBUyxNQUFPO0FBQ3BDLGFBQU87QUFBQSxJQUNUO0FBQ0EsV0FBTztBQUFBLEVBQ1Q7QUFFQSxNQUFNLGlDQUFpQztBQUFBLElBQ3JDLE1BQU07QUFBQSxJQUNOLEtBQUs7QUFBQSxJQUNMLEtBQUs7QUFBQSxJQUNMLE9BQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxpQ0FBa0NBLE1BQUs7QUFDOUMsVUFBTSxPQUFPQSxLQUFJLEtBQUssOENBQThDO0FBQ3BFLFFBQUksU0FBUyxNQUFNO0FBQ2pCLGFBQU87QUFBQSxJQUNUO0FBRUEsVUFBTSxTQUFTLG9CQUFvQixNQUFNLCtCQUErQixRQUFRLElBQUksR0FBRyxFQUFFLE9BQU8sR0FBRyxDQUFDO0FBQ3BHLFFBQUksV0FBVyxNQUFNO0FBQ25CLFlBQU0sSUFBSSxNQUFNLHlEQUF5RDtBQUFBLElBQzNFO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLGdDQUFpQyxNQUFNO0FBQzlDLFFBQUksS0FBSyxhQUFhLE9BQU87QUFDM0IsYUFBTyxLQUFLLFNBQVMsQ0FBQyxFQUFFLE1BQU07QUFBQSxJQUNoQztBQUVBLFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxnQ0FBaUMsTUFBTTtBQUM5QyxRQUFJLEtBQUssYUFBYSxTQUFTO0FBQzdCLGFBQU8sS0FBSyxTQUFTLENBQUMsRUFBRSxNQUFNO0FBQUEsSUFDaEM7QUFFQSxXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMsa0NBQW1DLE1BQU0sVUFBVTtBQUMxRCxRQUFJLGFBQWEsTUFBTTtBQUNyQixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sRUFBRSxTQUFTLElBQUk7QUFDckIsVUFBTSxFQUFFLFVBQVUsYUFBYSxJQUFJO0FBRW5DLFFBQUssYUFBYSxTQUFTLGlCQUFpQixTQUFXLGFBQWEsUUFBUSxpQkFBaUIsT0FBUTtBQUNuRyxhQUFPLFNBQVMsU0FBUyxDQUFDLEVBQUUsTUFBTTtBQUFBLElBQ3BDO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLDZCQUE4QjtBQUNyQyxVQUFNLCtCQUErQjtBQUFBLE1BQ25DLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxNQUNSLFFBQVE7QUFBQSxJQUNWO0FBRUEsVUFBTSxxQkFBcUIsNkJBQTZCLEdBQUdKLFlBQVcsSUFBSSxtQkFBbUIsQ0FBQyxFQUFFO0FBQ2hHLFFBQUksdUJBQXVCLFFBQVc7QUFDcEMsWUFBTSxJQUFJLE1BQU0sbURBQW1EO0FBQUEsSUFDckU7QUFFQSxXQUFPO0FBQUEsTUFDTCxRQUFRO0FBQUEsUUFDTixxQkFBcUI7QUFBQSxRQUNyQix1QkFBdUI7QUFBQSxNQUN6QjtBQUFBLElBQ0Y7QUFBQSxFQUNGO0FBRUEsV0FBUyxzQkFBdUJHLFVBQVMsYUFBYTtBQUNwRCxVQUFNLE9BQU8seUJBQXlCQSxVQUFTLFdBQVc7QUFDMUQsUUFBSSxTQUFTLE1BQU07QUFDakIsWUFBTSxJQUFJLE1BQU0sK0NBQStDO0FBQUEsSUFDakU7QUFDQSxXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMseUJBQTBCQSxVQUFTLGFBQWE7QUFDdkQsUUFBSSw2QkFBNkIsTUFBTTtBQUNyQyxhQUFPO0FBQUEsSUFDVDtBQThCQSxVQUFNLEVBQUUsYUFBYSxtQkFBbUIsYUFBYSxrQkFBa0IsSUFBSSxZQUFZO0FBQ3ZGLFVBQU0sY0FBY0EsU0FBUSxJQUFJLGlCQUFpQixFQUFFLFlBQVk7QUFDL0QsVUFBTSxjQUFjQSxTQUFRLElBQUksaUJBQWlCLEVBQUUsWUFBWTtBQUUvRCxVQUFNLGNBQWVILGlCQUFnQixJQUFLLE1BQU07QUFDaEQsVUFBTSxZQUFZLGNBQWUsTUFBTUE7QUFFdkMsVUFBTSxXQUFXLG1CQUFtQjtBQUVwQyxRQUFJLE9BQU87QUFFWCxhQUFTLFNBQVMsYUFBYSxXQUFXLFdBQVcsVUFBVUEsY0FBYTtBQUMxRSxZQUFNLFFBQVEsWUFBWSxJQUFJLE1BQU0sRUFBRSxZQUFZO0FBQ2xELFVBQUksTUFBTSxPQUFPLFdBQVcsR0FBRztBQUM3QixZQUFJO0FBQ0osWUFBSSxZQUFZLE1BQU0sbUJBQW1CLE1BQU0sS0FBSztBQUNsRCxrQkFBUTtBQUFBLFFBQ1YsV0FBVyxZQUFZLElBQUk7QUFDekIsa0JBQVE7QUFBQSxRQUNWLFdBQVcsWUFBWSxJQUFJO0FBQ3pCLGtCQUFRO0FBQUEsUUFDVixPQUFPO0FBQ0wsa0JBQVE7QUFBQSxRQUNWO0FBRUEsY0FBTSxrQ0FBa0MsU0FBVSxRQUFRQTtBQUUxRCxZQUFJO0FBQ0osWUFBSSxZQUFZLElBQUk7QUFDbEIsNENBQWtDLGtDQUFtQyxJQUFJQTtBQUFBLFFBQzNFLE9BQU87QUFDTCw0Q0FBa0Msa0NBQW1DLElBQUlBO0FBQUEsUUFDM0U7QUFFQSxlQUFPO0FBQUEsVUFDTCxRQUFRO0FBQUEsWUFDTiwyQkFBMkI7QUFBQSxZQUMzQiw0QkFBNEIsa0NBQWtDQTtBQUFBLFlBQzlELDJCQUEyQjtBQUFBLFlBQzNCLG9DQUFvQyxrQ0FBa0NBO0FBQUEsVUFDeEU7QUFBQSxRQUNGO0FBRUE7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUVBLFFBQUksU0FBUyxNQUFNO0FBQ2pCLGlDQUEyQjtBQUFBLElBQzdCO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFTyxXQUFTLGdCQUFpQkUsS0FBSTtBQUNuQyxVQUFNLGFBQWE7QUFFbkIsUUFBSSxPQUFPO0FBRVgsSUFBQUEsSUFBRyxRQUFRLFNBQU87QUFDaEIsWUFBTSxZQUFZLGdCQUFnQkEsR0FBRTtBQUNwQyxZQUFNLGFBQWEsaUJBQWlCQSxHQUFFO0FBRXRDLFlBQU0sUUFBUTtBQUFBLFFBQ1osb0JBQW9CO0FBQUEsUUFDcEIsbUJBQW1CLFVBQVU7QUFBQTtBQUFBLFFBRTdCLGFBQWE7QUFBQSxNQUNmO0FBRUEsWUFBTSxRQUFRO0FBQUEsUUFDWixvQkFBb0JGO0FBQUEsUUFDcEIsbUJBQW1CLFdBQVc7QUFBQTtBQUFBLFFBRTlCLGFBQWE7QUFBQSxNQUNmO0FBRUEsWUFBTSxlQUFlLENBQUMsWUFBWSxhQUFhLGVBQWU7QUFDNUQsY0FBTSxTQUFTLFdBQVcsSUFBSSxXQUFXLEVBQUUsWUFBWTtBQUN2RCxZQUFJLE9BQU8sT0FBTyxHQUFHO0FBQ25CLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGNBQU0sU0FBVSxlQUFlLElBQUssT0FBTyxRQUFRLElBQUksT0FBTyxRQUFRLEVBQUUsUUFBUTtBQUNoRixZQUFJLFVBQVUsR0FBRztBQUNmLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGVBQU87QUFBQSxVQUNMO0FBQUEsVUFDQSxNQUFNLE9BQU8sSUFBSSxVQUFVO0FBQUEsUUFDN0I7QUFBQSxNQUNGO0FBRUEsWUFBTSxXQUFXLENBQUMsWUFBWSxRQUFRLFFBQVEsU0FBUztBQUNyRCxZQUFJO0FBQ0YsZ0JBQU0sV0FBVyxhQUFhLFlBQVksUUFBUSxLQUFLLGtCQUFrQjtBQUN6RSxjQUFJLGFBQWEsTUFBTTtBQUNyQixtQkFBTztBQUFBLFVBQ1Q7QUFFQSxnQkFBTSxjQUFjLEtBQUssSUFBSSxTQUFTLFFBQVEsS0FBSyxXQUFXO0FBQzlELG1CQUFTLElBQUksR0FBRyxNQUFNLGFBQWEsS0FBSztBQUN0QyxrQkFBTSxXQUFXLFNBQVMsS0FBSyxJQUFJLElBQUksS0FBSyxpQkFBaUI7QUFDN0QsZ0JBQUksU0FBUyxPQUFPLE1BQU0sR0FBRztBQUMzQixxQkFBTztBQUFBLFlBQ1Q7QUFBQSxVQUNGO0FBQUEsUUFDRixRQUFRO0FBQUEsUUFDUjtBQUVBLGVBQU87QUFBQSxNQUNUO0FBRUEsWUFBTSxRQUFRLElBQUksVUFBVSxrQkFBa0I7QUFDOUMsWUFBTSxXQUFXLElBQUksYUFBYSxLQUFLO0FBRXZDLFVBQUk7QUFDRixZQUFJO0FBQ0osOEJBQXNCRSxLQUFJLEtBQUssWUFBVTtBQUN2QyxtQkFBUyxPQUFPLEVBQUUsOEJBQThCLEVBQUVBLEtBQUksUUFBUSxRQUFRO0FBQUEsUUFDeEUsQ0FBQztBQUVELGNBQU0sZ0JBQWdCLGNBQWMsSUFBSSxXQUFXLFVBQVUsUUFBUSxvQkFBb0IsQ0FBQztBQUMxRixjQUFNLGNBQWMsY0FBYyxJQUFJLGlCQUFpQixVQUFVLGdCQUFnQixHQUFHLENBQUM7QUFFckYsWUFBSSxlQUFlO0FBQ25CLFlBQUksaUJBQWlCO0FBQ3JCLGlCQUFTLFNBQVMsR0FBRyxXQUFXLFlBQVksVUFBVSxHQUFHO0FBQ3ZELGNBQUksaUJBQWlCLE1BQU0sU0FBUyxRQUFRLFFBQVEsYUFBYSxLQUFLLEdBQUc7QUFDdkUsMkJBQWU7QUFBQSxVQUNqQjtBQUNBLGNBQUksbUJBQW1CLE1BQU0sU0FBUyxRQUFRLFFBQVEsZUFBZSxLQUFLLEdBQUc7QUFDM0UsNkJBQWlCO0FBQUEsVUFDbkI7QUFBQSxRQUNGO0FBQ0EsWUFBSSxtQkFBbUIsTUFBTSxpQkFBaUIsSUFBSTtBQUNoRCxnQkFBTSxJQUFJLE1BQU0sOERBQThEO0FBQUEsUUFDaEY7QUFDQSxjQUFNLGVBQWdCLG1CQUFtQixlQUFnQixlQUFlO0FBQ3hFLGNBQU0sZUFBZTtBQUVyQixZQUFJLGdCQUFnQjtBQUNwQixjQUFNLGlCQUFpQixlQUFlLElBQUksWUFBWSxVQUFVLFdBQVcsc0JBQXNCLENBQUM7QUFDbEcsaUJBQVMsU0FBUyxHQUFHLFdBQVcsWUFBWSxVQUFVLEdBQUc7QUFDdkQsY0FBSSxrQkFBa0IsTUFBTSxTQUFTLFFBQVEsUUFBUSxnQkFBZ0IsS0FBSyxHQUFHO0FBQzNFLDRCQUFnQjtBQUFBLFVBQ2xCO0FBQUEsUUFDRjtBQUNBLFlBQUksa0JBQWtCLElBQUk7QUFDeEIsZ0JBQU0sSUFBSSxNQUFNLCtEQUErRDtBQUFBLFFBQ2pGO0FBRUEsWUFBSSxzQkFBc0I7QUFDMUIsY0FBTSxlQUFlLGFBQWEsUUFBUSxlQUFlLE1BQU0sa0JBQWtCO0FBQ2pGLGNBQU0sbUJBQW1CLGFBQWE7QUFDdEMsaUJBQVMsU0FBUyxlQUFlLFdBQVcsWUFBWSxVQUFVLEdBQUc7QUFDbkUsY0FBSSxPQUFPLElBQUksTUFBTSxFQUFFLFFBQVEsTUFBTSxrQkFBa0I7QUFDckQsa0NBQXNCO0FBQ3RCO0FBQUEsVUFDRjtBQUFBLFFBQ0Y7QUFDQSxZQUFJLHdCQUF3QixJQUFJO0FBQzlCLGdCQUFNLElBQUksTUFBTSxzRUFBc0U7QUFBQSxRQUN4RjtBQUVBLGVBQU87QUFBQSxVQUNMLFFBQVE7QUFBQSxZQUNOLFNBQVM7QUFBQSxZQUNULFNBQVM7QUFBQSxZQUNULFNBQVM7QUFBQSxZQUNULHFCQUFxQjtBQUFBLFVBQ3ZCO0FBQUEsUUFDRjtBQUFBLE1BQ0YsVUFBRTtBQUNBLFlBQUksZUFBZSxLQUFLO0FBQ3hCLFlBQUksZ0JBQWdCLFFBQVE7QUFBQSxNQUM5QjtBQUFBLElBQ0YsQ0FBQztBQUVELFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxrQkFBbUJBLEtBQUk7QUFDOUIsVUFBTUUsT0FBTSxPQUFPO0FBQ25CLFFBQUk7QUFFSixJQUFBRixJQUFHLFFBQVEsU0FBTztBQUNoQixZQUFNLFVBQVUsSUFBSSxVQUFVLG9CQUFvQjtBQUNsRCxZQUFNLG9CQUFvQixlQUFlLElBQUksa0JBQWtCLFNBQVMscUJBQXFCLEtBQUssQ0FBQztBQUNuRyxVQUFJLGVBQWUsT0FBTztBQUUxQixZQUFNLGdCQUFnQixRQUFRLGdCQUFnQix1QkFBdUI7QUFDckUsWUFBTSxlQUFlLGNBQWM7QUFDbkMsWUFBTSxhQUFhLGFBQWEsSUFBSSxjQUFjLElBQUk7QUFFdEQsWUFBTSxXQUFXLG1CQUFtQjtBQUVwQyxZQUFNLHNCQUF1QixZQUFZLEtBQU0sSUFBSUY7QUFFbkQsWUFBTSxzQkFBc0IsYUFBYSxhQUFhLFlBQVk7QUFDbEUsWUFBTSwwQkFBMEIsRUFBRSx5Q0FBeUMsZ0JBQWdCLGlDQUFpQztBQUU1SCxVQUFJLGdCQUFnQjtBQUNwQixVQUFJLG9CQUFvQjtBQUN4QixVQUFJLFlBQVk7QUFDaEIsZUFBUyxTQUFTLEdBQUcsV0FBVyxNQUFNLGNBQWMsR0FBRyxVQUFVLEdBQUc7QUFDbEUsY0FBTSxRQUFRLGtCQUFrQixJQUFJLE1BQU07QUFFMUMsWUFBSSxrQkFBa0IsTUFBTTtBQUMxQixnQkFBTSxVQUFVLE1BQU0sWUFBWTtBQUNsQyxjQUFJLFFBQVEsUUFBUSxZQUFZLEtBQUssS0FBSyxRQUFRLFFBQVEsVUFBVSxJQUFJLEdBQUc7QUFDekUsNEJBQWdCO0FBQ2hCO0FBQUEsVUFDRjtBQUFBLFFBQ0Y7QUFFQSxZQUFJLHNCQUFzQixNQUFNO0FBQzlCLGdCQUFNLFFBQVEsTUFBTSxRQUFRO0FBQzVCLGVBQUssUUFBUSw2QkFBNkIscUJBQXFCO0FBQzdELGdDQUFvQjtBQUNwQjtBQUFBLFVBQ0Y7QUFBQSxRQUNGO0FBQUEsTUFDRjtBQUVBLFVBQUksY0FBYyxHQUFHO0FBQ25CLGNBQU0sSUFBSSxNQUFNLDZDQUE2QztBQUFBLE1BQy9EO0FBRUEsWUFBTSxrQkFBa0IsZ0JBQWdCO0FBRXhDLFlBQU0sT0FBUSxZQUFZLEtBQU8sa0JBQWtCLEtBQU8sa0JBQWtCQTtBQUU1RSxhQUFPO0FBQUEsUUFDTDtBQUFBLFFBQ0EsUUFBUTtBQUFBLFVBQ04sU0FBUztBQUFBLFVBQ1QsV0FBVztBQUFBLFVBQ1gsYUFBYTtBQUFBLFFBQ2Y7QUFBQSxNQUNGO0FBRUEsVUFBSSx3Q0FBd0NJLE1BQUs7QUFDL0MsYUFBSyxPQUFPLGtCQUFrQixnQkFBZ0I7QUFBQSxNQUNoRDtBQUFBLElBQ0YsQ0FBQztBQUVELFdBQU87QUFBQSxFQUNUO0FBRU8sV0FBUyxnQkFBaUJGLEtBQUk7QUFDbkMsVUFBTSxXQUFXLG1CQUFtQjtBQUVwQyxRQUFJLFlBQVksSUFBSTtBQUNsQixhQUFPO0FBQUEsUUFDTCxNQUFNO0FBQUEsUUFDTixRQUFRO0FBQUEsVUFDTixhQUFhO0FBQUEsUUFDZjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBRUEsUUFBSSxZQUFZLElBQUk7QUFDbEIsYUFBTztBQUFBLFFBQ0wsTUFBTTtBQUFBLFFBQ04sUUFBUTtBQUFBLFVBQ04sYUFBYTtBQUFBLFFBQ2Y7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUVBLFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxrQkFBbUJBLEtBQUk7QUE2QjlCLFVBQU0sV0FBVyxtQkFBbUI7QUFFcEMsUUFBSTtBQUVKLElBQUFBLElBQUcsUUFBUSxTQUFPO0FBQ2hCLFlBQU0sZUFBZSxvQkFBb0IsR0FBRztBQUM1QyxZQUFNLFlBQVksSUFBSTtBQUV0QixVQUFJLDRCQUE0QjtBQUNoQyxVQUFJLGtCQUFrQjtBQUN0QixVQUFJLHNCQUFzQjtBQUMxQixVQUFJLHVCQUF1QjtBQUMzQixVQUFJLHFCQUFxQjtBQUN6QixVQUFJLGFBQWE7QUFFakIsZUFBUyxTQUFTLEtBQUssV0FBVyxLQUFLLFVBQVVGLGNBQWE7QUFDNUQsY0FBTSxRQUFRLGFBQWEsSUFBSSxNQUFNO0FBRXJDLGNBQU0sUUFBUSxNQUFNLFlBQVk7QUFDaEMsWUFBSSxNQUFNLE9BQU8sU0FBUyxHQUFHO0FBQzNCLDRCQUFrQixTQUFVLElBQUlBO0FBQ2hDLCtCQUFxQixTQUFVLElBQUlBO0FBQ25DLHVCQUFhLFNBQVUsSUFBSUE7QUFDM0IsY0FBSSxZQUFZLElBQUk7QUFDbEIsK0JBQW1CQTtBQUVuQix3Q0FBNEIsa0JBQWtCQSxlQUFlLElBQUksSUFBTSxJQUFJO0FBRTNFLGtDQUFzQixTQUFVLElBQUlBO0FBRXBDLGtDQUFzQkE7QUFFdEIsMEJBQWNBO0FBQUEsVUFDaEI7QUFFQSxpQ0FBdUIsU0FBVSxJQUFJQTtBQUNyQyxjQUFJLFlBQVksSUFBSTtBQUNsQixvQ0FBeUIsSUFBSUEsZUFBZTtBQUM1QyxnQkFBSUEsaUJBQWdCLEdBQUc7QUFDckIsc0NBQXdCO0FBQUEsWUFDMUI7QUFBQSxVQUNGO0FBQ0EsY0FBSSxZQUFZLElBQUk7QUFDbEIsb0NBQXdCQTtBQUFBLFVBQzFCO0FBRUE7QUFBQSxRQUNGO0FBQUEsTUFDRjtBQUVBLFVBQUkseUJBQXlCLE1BQU07QUFDakMsY0FBTSxJQUFJLE1BQU0sNkNBQTZDO0FBQUEsTUFDL0Q7QUFFQSxhQUFPO0FBQUEsUUFDTCxRQUFRO0FBQUEsVUFDTixzQ0FBc0M7QUFBQSxVQUN0QyxXQUFXO0FBQUEsVUFDWCxlQUFlO0FBQUEsVUFDZixnQkFBZ0I7QUFBQSxVQUNoQixjQUFjO0FBQUEsVUFDZCxNQUFNO0FBQUEsUUFDUjtBQUFBLE1BQ0Y7QUFBQSxJQUNGLENBQUM7QUFFRCxXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMsMEJBQTJCO0FBQ2xDLFVBQU0sV0FBVyxtQkFBbUI7QUFFcEMsUUFBSSxZQUFZLElBQUk7QUFDbEIsYUFBTztBQUFBLFFBQ0wsUUFBUTtBQUFBLFVBQ04sZUFBZTtBQUFBLFVBQ2YsTUFBTUE7QUFBQSxRQUNSO0FBQUEsTUFDRjtBQUFBLElBQ0YsT0FBTztBQUNMLGFBQU87QUFBQSxRQUNMLFFBQVE7QUFBQSxVQUNOLGVBQWUsSUFBSUE7QUFBQSxVQUNuQixNQUFNO0FBQUEsUUFDUjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUVBLE1BQU0sNEJBQTRCO0FBQUEsSUFDaEMsTUFBTTtBQUFBLElBQ04sS0FBSztBQUFBLElBQ0wsS0FBSztBQUFBLElBQ0wsT0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLG9DQUFxQyxZQUFZRSxLQUFJO0FBQzVELFFBQUk7QUFFSixJQUFBQSxJQUFHLFFBQVEsU0FBTztBQUNoQixZQUFNLFNBQVMsb0JBQW9CLEdBQUc7QUFFdEMsWUFBTSxXQUFXLDBCQUEwQixRQUFRLElBQUk7QUFFdkQsWUFBTSxPQUFPLFlBQVksTUFBTSxVQUFVO0FBRXpDLFlBQU0sU0FBUyxTQUFTLElBQUk7QUFDNUIsVUFBSSxXQUFXLE1BQU07QUFDbkIsa0JBQVUsT0FBTyxJQUFJLE1BQU0sRUFBRSxZQUFZO0FBQUEsTUFDM0MsT0FBTztBQUNMLGtCQUFVO0FBQUEsTUFDWjtBQUFBLElBQ0YsQ0FBQztBQUVELFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUywyQkFBNEIsTUFBTTtBQUN6QyxRQUFJLEtBQUssYUFBYSxPQUFPO0FBQzNCLGFBQU8sS0FBSyxTQUFTLENBQUMsRUFBRSxNQUFNO0FBQUEsSUFDaEM7QUFFQSxXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMsMkJBQTRCLE1BQU07QUFDekMsUUFBSSxLQUFLLGFBQWEsU0FBUztBQUM3QixhQUFPLEtBQUssU0FBUyxDQUFDLEVBQUUsTUFBTTtBQUFBLElBQ2hDO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLDZCQUE4QixNQUFNO0FBQzNDLFFBQUksS0FBSyxhQUFhLE9BQU87QUFDM0IsYUFBTyxLQUFLLFNBQVMsQ0FBQyxFQUFFLE1BQU07QUFBQSxJQUNoQztBQUVBLFdBQU87QUFBQSxFQUNUO0FBRU8sV0FBUyxvQkFBcUIsS0FBSztBQUN4QyxXQUFPLElBQUksT0FBTyxJQUFJRixZQUFXLEVBQUUsWUFBWTtBQUFBLEVBQ2pEO0FBRUEsV0FBUyxxQkFBc0I7QUFDN0IsV0FBTyx5QkFBeUIsMEJBQTBCO0FBQUEsRUFDNUQ7QUFFQSxXQUFTLHNCQUF1QjtBQUM5QixXQUFPLHlCQUF5QiwyQkFBMkI7QUFBQSxFQUM3RDtBQUVBLFdBQVMsc0JBQXVCO0FBQzlCLFdBQU8sU0FBUyx5QkFBeUIsc0JBQXNCLEdBQUcsRUFBRTtBQUFBLEVBQ3RFO0FBRUEsV0FBUyxxQkFBc0I7QUFDN0IsUUFBSTtBQUNGLFlBQU0sWUFBWSxLQUFLLFlBQVksc0JBQXNCO0FBRXpELFVBQUksWUFBWTtBQUNoQixZQUFNLGlCQUFpQixvQkFBSSxJQUFJO0FBQy9CLGlCQUFXLFFBQVEsVUFBVSxRQUFRLEVBQUUsTUFBTSxJQUFJLEdBQUc7QUFDbEQsY0FBTSxXQUFXLEtBQUssTUFBTSxHQUFHO0FBRS9CLGNBQU0sWUFBWSxTQUFTLENBQUM7QUFDNUIsWUFBSSxDQUFDLFVBQVUsV0FBVyx1QkFBdUIsR0FBRztBQUNsRDtBQUFBLFFBQ0Y7QUFFQSxjQUFNLGNBQWMsU0FBUyxFQUFFO0FBQy9CLFlBQUksVUFBVSxTQUFTLEdBQUcsR0FBRztBQUMzQix5QkFBZSxJQUFJLGFBQWEsVUFBVSxNQUFNLEdBQUcsRUFBRSxDQUFDLENBQUM7QUFBQSxRQUN6RCxPQUFPO0FBQ0wsc0JBQVk7QUFBQSxRQUNkO0FBQUEsTUFDRjtBQUVBLFlBQU0sYUFBYSxlQUFlLElBQUksU0FBUztBQUMvQyxhQUFRLGVBQWUsU0FBYSxTQUFTLFVBQVUsSUFBSSxrQ0FBa0M7QUFBQSxJQUMvRixRQUFRO0FBQ04sYUFBTyxrQ0FBa0M7QUFBQSxJQUMzQztBQUFBLEVBQ0Y7QUFFQSxXQUFTLG9DQUFxQztBQUM1QyxXQUFPLG1CQUFtQixJQUFJO0FBQUEsRUFDaEM7QUFFQSxNQUFJLG9CQUFvQjtBQUN4QixNQUFNLGlCQUFpQjtBQUV2QixXQUFTLHlCQUEwQixNQUFNO0FBQ3ZDLFFBQUksc0JBQXNCLE1BQU07QUFDOUIsMEJBQW9CLElBQUk7QUFBQSxRQUN0QixRQUFRLGdCQUFnQixTQUFTLEVBQUUsZ0JBQWdCLHVCQUF1QjtBQUFBLFFBQzFFO0FBQUEsUUFDQSxDQUFDLFdBQVcsU0FBUztBQUFBLFFBQ3JCQztBQUFBLE1BQXFCO0FBQUEsSUFDekI7QUFDQSxVQUFNLE1BQU0sT0FBTyxNQUFNLGNBQWM7QUFDdkMsc0JBQWtCLE9BQU8sZ0JBQWdCLElBQUksR0FBRyxHQUFHO0FBQ25ELFdBQU8sSUFBSSxlQUFlO0FBQUEsRUFDNUI7QUFFTyxXQUFTLHNCQUF1QkMsS0FBSSxLQUFLLElBQUk7QUFDbEQsVUFBTSxVQUFVLGdDQUFnQ0EsS0FBSSxHQUFHO0FBRXZELFVBQU0sS0FBSyxvQkFBb0IsR0FBRyxFQUFFLFNBQVM7QUFDN0MsOEJBQTBCLEVBQUUsSUFBSTtBQUVoQyxZQUFRLElBQUksTUFBTTtBQUVsQixRQUFJLDBCQUEwQixFQUFFLE1BQU0sUUFBVztBQUMvQyxhQUFPLDBCQUEwQixFQUFFO0FBQ25DLFlBQU0sSUFBSSxNQUFNLHVEQUF1RDtBQUFBLElBQ3pFO0FBQUEsRUFDRjtBQUVBLFdBQVMsaUNBQWtDQSxLQUFJLEtBQUs7QUFDbEQsVUFBTSxXQUFXLElBQUksZUFBZSxpQ0FBaUMsUUFBUSxDQUFDLFNBQVMsQ0FBQztBQUN4RixXQUFPLGlDQUFpQ0EsS0FBSSxLQUFLLFFBQVE7QUFBQSxFQUMzRDtBQUVBLFdBQVMsZ0NBQWlDLFFBQVE7QUFDaEQsVUFBTSxLQUFLLE9BQU8sU0FBUztBQUUzQixVQUFNLEtBQUssMEJBQTBCLEVBQUU7QUFDdkMsV0FBTywwQkFBMEIsRUFBRTtBQUNuQyxPQUFHLE1BQU07QUFBQSxFQUNYO0FBRU8sV0FBUywyQkFBNEIsSUFBSTtBQUM5QyxVQUFNRSxPQUFNLE9BQU87QUFFbkIsVUFBTSxhQUFhQSxLQUFJO0FBQ3ZCLFVBQU0sY0FBYztBQUNwQixJQUFBQSxLQUFJLDZCQUE2QixFQUFFLFlBQVksT0FBTyxnQkFBZ0IsT0FBTyxHQUFHLGNBQWMsSUFBSSxDQUFDO0FBQ25HLFFBQUk7QUFDRixTQUFHO0FBQUEsSUFDTCxVQUFFO0FBQ0EsTUFBQUEsS0FBSSw0QkFBNEIsRUFBRSxVQUFVO0FBQUEsSUFDOUM7QUFBQSxFQUNGO0FBRUEsTUFBTSxrQkFBTixNQUFzQjtBQUFBLElBQ3BCLFlBQWEsT0FBTztBQUNsQixZQUFNLFVBQVUsT0FBTyxNQUFNLElBQUlKLFlBQVc7QUFFNUMsWUFBTUssVUFBUyxRQUFRLElBQUlMLFlBQVc7QUFDdEMsY0FBUSxhQUFhSyxPQUFNO0FBRTNCLFlBQU0sVUFBVSxJQUFJLGVBQWUsQ0FBQyxNQUFNLFVBQVU7QUFDbEQsZUFBTyxNQUFNLEtBQUssTUFBTSxPQUFPLElBQUk7QUFBQSxNQUNyQyxHQUFHLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUNqQyxNQUFBQSxRQUFPLElBQUksSUFBSUwsWUFBVyxFQUFFLGFBQWEsT0FBTztBQUVoRCxXQUFLLFNBQVM7QUFDZCxXQUFLLFdBQVc7QUFBQSxJQUNsQjtBQUFBLEVBQ0Y7QUFFTyxXQUFTLG9CQUFxQixPQUFPO0FBQzFDLFVBQU1JLE9BQU0sT0FBTztBQUVuQixRQUFJQSxLQUFJLGdDQUFnQyxhQUFhLGdCQUFnQjtBQUNuRSxhQUFPLElBQUksZ0JBQWdCLEtBQUs7QUFBQSxJQUNsQztBQUVBLFdBQU8sSUFBSSxlQUFlLFdBQVM7QUFDakMsYUFBTyxNQUFNLEtBQUssTUFBTSxPQUFPLElBQUk7QUFBQSxJQUNyQyxHQUFHLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUFBLEVBQ25DO0FBRUEsTUFBTSx3QkFBTixNQUE0QjtBQUFBLElBQzFCLFlBQWEsT0FBTztBQUNsQixZQUFNLFVBQVUsT0FBTyxNQUFNLElBQUlKLFlBQVc7QUFFNUMsWUFBTUssVUFBUyxRQUFRLElBQUlMLFlBQVc7QUFDdEMsY0FBUSxhQUFhSyxPQUFNO0FBRTNCLFlBQU0sVUFBVSxJQUFJLGVBQWUsQ0FBQyxNQUFNLFVBQVU7QUFDbEQsY0FBTSxLQUFLO0FBQUEsTUFDYixHQUFHLFFBQVEsQ0FBQyxXQUFXLFNBQVMsQ0FBQztBQUNqQyxNQUFBQSxRQUFPLElBQUksSUFBSUwsWUFBVyxFQUFFLGFBQWEsT0FBTztBQUVoRCxXQUFLLFNBQVM7QUFDZCxXQUFLLFdBQVc7QUFBQSxJQUNsQjtBQUFBLEVBQ0Y7QUFFTyxXQUFTLDBCQUEyQixPQUFPO0FBQ2hELFdBQU8sSUFBSSxzQkFBc0IsS0FBSztBQUFBLEVBQ3hDO0FBRUEsTUFBTSxXQUFXO0FBQUEsSUFDZiwwQkFBMEI7QUFBQSxJQUMxQix1QkFBdUI7QUFBQSxFQUN6QjtBQUVPLE1BQU0sa0JBQU4sTUFBc0I7QUFBQSxJQUMzQixZQUFhLFFBQVEsU0FBUyxVQUFVLFlBQVksR0FBRyxpQkFBaUIsTUFBTTtBQUM1RSxZQUFNSSxPQUFNLE9BQU87QUFFbkIsWUFBTSxXQUFXO0FBQ2pCLFlBQU0sYUFBYSxJQUFJSjtBQUV2QixZQUFNLFVBQVUsT0FBTyxNQUFNLFdBQVcsVUFBVTtBQUVsRCxNQUFBSSxLQUFJLGlDQUFpQztBQUFBLFFBQUU7QUFBQSxRQUFTO0FBQUEsUUFBUTtBQUFBLFFBQVMsU0FBUyxRQUFRO0FBQUEsUUFBRztBQUFBLFFBQ25GLGlCQUFpQixJQUFJO0FBQUEsTUFBQztBQUV4QixZQUFNQyxVQUFTLFFBQVEsSUFBSSxRQUFRO0FBQ25DLGNBQVEsYUFBYUEsT0FBTTtBQUUzQixZQUFNLGVBQWUsSUFBSSxlQUFlLEtBQUssWUFBWSxLQUFLLElBQUksR0FBRyxRQUFRLENBQUMsU0FBUyxDQUFDO0FBQ3hGLE1BQUFBLFFBQU8sSUFBSSxJQUFJTCxZQUFXLEVBQUUsYUFBYSxZQUFZO0FBRXJELFdBQUssU0FBUztBQUNkLFdBQUssZ0JBQWdCO0FBRXJCLFlBQU0saUJBQWlCLFFBQVEsSUFBS0EsaUJBQWdCLElBQUssS0FBSyxFQUFFO0FBQ2hFLFdBQUssa0JBQWtCO0FBQ3ZCLFdBQUssaUJBQWlCLGVBQWUsSUFBSUEsWUFBVztBQUNwRCxXQUFLLG1CQUFtQixlQUFlLElBQUksSUFBSUEsWUFBVztBQUMxRCxXQUFLLDJCQUEyQixlQUFlLElBQUksSUFBSUEsWUFBVztBQUVsRSxXQUFLLGlCQUFpQkksS0FBSSw4QkFBOEI7QUFDeEQsV0FBSyxlQUFlQSxLQUFJLHFDQUFxQztBQUM3RCxXQUFLLGVBQWVBLEtBQUksNkNBQTZDO0FBQUEsSUFDdkU7QUFBQSxJQUVBLFVBQVcscUJBQXFCLE9BQU87QUFDckMsYUFBTyxFQUFFLDhCQUE4QixFQUFFLEtBQUssUUFBUSxxQkFBcUIsSUFBSSxDQUFDO0FBQUEsSUFDbEY7QUFBQSxJQUVBLGNBQWU7QUFDYixhQUFPLEtBQUssV0FBVyxJQUFJLElBQUk7QUFBQSxJQUNqQztBQUFBLElBRUEsYUFBYztBQUNaLFlBQU0sSUFBSSxNQUFNLG9DQUFvQztBQUFBLElBQ3REO0FBQUEsSUFFQSxZQUFhO0FBQ1gsWUFBTSxlQUFlLEtBQUssZUFBZSxLQUFLLE1BQU07QUFDcEQsVUFBSSxhQUFhLE9BQU8sR0FBRztBQUN6QixlQUFPO0FBQUEsTUFDVDtBQUNBLGFBQU8sSUFBSSxVQUFVLFlBQVk7QUFBQSxJQUNuQztBQUFBLElBRUEseUJBQTBCO0FBQ3hCLGFBQU8sS0FBSyxpQkFBaUIsWUFBWTtBQUFBLElBQzNDO0FBQUEsSUFFQSx1QkFBd0I7QUFDdEIsYUFBTyxLQUFLLGVBQWUsWUFBWTtBQUFBLElBQ3pDO0FBQUEsSUFFQSx3QkFBeUI7QUFDdkIsYUFBTyxLQUFLLGdCQUFnQixZQUFZO0FBQUEsSUFDMUM7QUFBQSxJQUVBLG1CQUFvQjtBQUNsQixZQUFNLFNBQVMsSUFBSSxVQUFVO0FBQzdCLFdBQUssYUFBYSxRQUFRLEtBQUssTUFBTTtBQUNyQyxhQUFPLE9BQU8sZ0JBQWdCO0FBQUEsSUFDaEM7QUFBQSxJQUVBLGlDQUFrQztBQUNoQyxhQUFPLEtBQUsseUJBQXlCLFlBQVk7QUFBQSxJQUNuRDtBQUFBLElBRUEsMkJBQTRCO0FBQzFCLGFBQU8sS0FBSyxhQUFhLEtBQUssTUFBTTtBQUFBLElBQ3RDO0FBQUEsRUFDRjtBQUVPLE1BQU0sWUFBTixNQUFnQjtBQUFBLElBQ3JCLFlBQWEsUUFBUTtBQUNuQixXQUFLLFNBQVM7QUFBQSxJQUNoQjtBQUFBLElBRUEsYUFBYyxnQkFBZ0IsTUFBTTtBQUNsQyxZQUFNLFNBQVMsSUFBSSxVQUFVO0FBQzdCLGFBQU8sRUFBRSw4QkFBOEIsRUFBRSxRQUFRLEtBQUssUUFBUSxnQkFBZ0IsSUFBSSxDQUFDO0FBQ25GLGFBQU8sT0FBTyxnQkFBZ0I7QUFBQSxJQUNoQztBQUFBLElBRUEsV0FBWTtBQUNWLGFBQU8sb0JBQW9CLEtBQUssTUFBTTtBQUFBLElBQ3hDO0FBQUEsRUFDRjtBQUVBLFdBQVMsNEJBQTZCLE1BQU07QUFDMUMsV0FBTyxTQUFVLE1BQU07QUFDckIsWUFBTSxTQUFTLE9BQU8sTUFBTSxFQUFFO0FBRTlCLHNDQUFnQyxJQUFJLEVBQUUsUUFBUSxJQUFJO0FBRWxELGFBQU87QUFBQSxRQUNMLGtCQUFrQixPQUFPLFFBQVE7QUFBQSxRQUNqQyxlQUFlLE9BQU8sSUFBSSxDQUFDLEVBQUUsUUFBUTtBQUFBLFFBQ3JDLGFBQWEsT0FBTyxJQUFJLENBQUMsRUFBRSxRQUFRO0FBQUEsTUFDckM7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUVBLFdBQVMsaUNBQWtDLE1BQU07QUFDL0MsUUFBSSxRQUFRO0FBQ1osWUFBUSxRQUFRLE1BQU07QUFBQSxNQUNwQixLQUFLO0FBQ0gsZ0JBQVEsVUFBVSxJQUFJLFlBQVU7QUFDOUIsaUJBQU8sc0JBQXNCLE9BQU8sT0FBTyxDQUFDO0FBQzVDLGlCQUFPLHNCQUFzQixPQUFPLE9BQU8sQ0FBQztBQUM1QyxpQkFBTyw0QkFBNEIsTUFBTSxDQUFDLE9BQU8sS0FBSyxDQUFDO0FBR3ZELGlCQUFPLGFBQWEsT0FBTyxLQUFLO0FBQ2hDLGlCQUFPLFVBQVUsS0FBSztBQUV0QixpQkFBTyxPQUFPO0FBQUEsUUFDaEIsQ0FBQztBQUNEO0FBQUEsTUFDRixLQUFLO0FBQ0gsZ0JBQVEsVUFBVSxJQUFJLFlBQVU7QUFDOUIsaUJBQU8sV0FBVyxLQUFLO0FBQ3ZCLGlCQUFPLDRCQUE0QixNQUFNLENBQUMsS0FBSyxDQUFDO0FBQ2hELGlCQUFPLFVBQVUsS0FBSztBQUl0QixpQkFBTyxnQkFBZ0IsT0FBTyxLQUFLO0FBQ25DLGlCQUFPLHNCQUFzQixPQUFPLEdBQUcsS0FBSztBQUU1QyxpQkFBTyxPQUFPO0FBQUEsUUFDaEIsQ0FBQztBQUNEO0FBQUEsTUFDRixLQUFLO0FBQ0gsZ0JBQVEsVUFBVSxJQUFJLFlBQVU7QUFFOUIsaUJBQU8sNEJBQTRCLE1BQU0sQ0FBQyxNQUFNLElBQUksQ0FBQztBQUNyRCxpQkFBTyxXQUFXLENBQUMsTUFBTSxJQUFJLENBQUM7QUFDOUIsaUJBQU8sYUFBYSxNQUFNLElBQUk7QUFBQSxRQUNoQyxDQUFDO0FBQ0Q7QUFBQSxNQUNGLEtBQUs7QUFDSCxnQkFBUSxVQUFVLElBQUksWUFBVTtBQUM5QixpQkFBTyxjQUFjLE1BQU0sSUFBSTtBQUMvQixpQkFBTyw0QkFBNEIsTUFBTSxDQUFDLElBQUksQ0FBQztBQUMvQyxpQkFBTyxhQUFhLE1BQU0sSUFBSTtBQUM5QixpQkFBTyxtQkFBbUIsTUFBTSxNQUFNLENBQUM7QUFDdkMsaUJBQU8sbUJBQW1CLE1BQU0sTUFBTSxDQUFDO0FBQ3ZDLGlCQUFPLE9BQU87QUFBQSxRQUNoQixDQUFDO0FBQ0Q7QUFBQSxJQUNKO0FBQ0EsV0FBTyxJQUFJLGVBQWUsT0FBTyxRQUFRLENBQUMsV0FBVyxTQUFTLEdBQUdILHNCQUFxQjtBQUFBLEVBQ3hGO0FBRUEsTUFBTSxrQkFBa0I7QUFBQSxJQUN0QixNQUFNLFdBQVc7QUFBQSxJQUNqQixLQUFLLFdBQVc7QUFBQSxJQUNoQixLQUFLLFdBQVc7QUFBQSxJQUNoQixPQUFPLFdBQVc7QUFBQSxFQUNwQjtBQUVBLE1BQU0sZUFBZTtBQUFBLElBQ25CLE1BQU0sV0FBVztBQUFBLElBQ2pCLEtBQUssV0FBVztBQUFBLElBQ2hCLEtBQUssV0FBVztBQUFBLElBQ2hCLE9BQU8sV0FBVztBQUFBLEVBQ3BCO0FBRUEsV0FBUyxVQUFXLE1BQU1LLFFBQU87QUFDL0IsUUFBSSxjQUFjLE1BQU07QUFDdEIsa0JBQVksT0FBTyxNQUFNLFFBQVEsUUFBUTtBQUFBLElBQzNDO0FBRUEsVUFBTSxRQUFRLFVBQVUsSUFBSSxXQUFXO0FBRXZDLFVBQU0sT0FBTyxRQUFRO0FBRXJCLFVBQU0sU0FBUyxhQUFhLElBQUk7QUFDaEMsV0FBTyxVQUFVLE9BQU8sTUFBTSxDQUFBQyxVQUFRO0FBQ3BDLFlBQU0sU0FBUyxJQUFJLE9BQU9BLE9BQU0sRUFBRSxJQUFJLE1BQU0sQ0FBQztBQUM3QyxNQUFBRCxPQUFNLE1BQU07QUFDWixhQUFPLE1BQU07QUFDYixVQUFJLE9BQU8sU0FBUyxNQUFNO0FBQ3hCLGNBQU0sSUFBSSxNQUFNLFNBQVMsT0FBTyxNQUFNLDBCQUEwQixJQUFJLEVBQUU7QUFBQSxNQUN4RTtBQUFBLElBQ0YsQ0FBQztBQUVELG1CQUFlO0FBRWYsV0FBUSxTQUFTLFFBQVMsTUFBTSxHQUFHLENBQUMsSUFBSTtBQUFBLEVBQzFDO0FBRUEsV0FBUyxzQkFBdUIsUUFBUUosS0FBSTtBQUMxQyxtREFBK0NBLEdBQUU7QUFDakQsZ0RBQTRDQSxHQUFFO0FBQUEsRUFDaEQ7QUFFQSxXQUFTLGtCQUFtQkUsTUFBS0YsS0FBSTtBQUNuQyxVQUFNLGdCQUFnQixpQkFBaUJBLEdBQUUsRUFBRTtBQUMzQyxVQUFNLHNCQUFzQix1QkFBdUIsRUFBRTtBQUVyRCxVQUFNSyxRQUFPO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBLDZCQXNKYyxjQUFjLFlBQVk7QUFBQSxzREFDRCxvQkFBb0IsYUFBYTtBQUFBO0FBQUE7QUFBQTtBQUFBLHlEQUk5QixvQkFBb0IsSUFBSTtBQUFBO0FBQUE7QUFBQTtBQUFBLCtFQUlGLG9CQUFvQixhQUFhO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQSxpQ0FnQzlFLFFBQVEsU0FBUyxVQUFXLElBQUksQ0FBQztBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQTBCakUsVUFBTSxXQUFXO0FBQ2pCLFVBQU0sY0FBY1A7QUFDcEIsVUFBTSxtQkFBbUJBO0FBQ3pCLFVBQU0sd0JBQXdCQTtBQUU5QixVQUFNLE9BQU8sT0FBTyxNQUFNLFdBQVcsY0FBYyxtQkFBbUIscUJBQXFCO0FBRTNGLFVBQU0sT0FBTztBQUNiLFVBQU0sVUFBVSxLQUFLLElBQUksUUFBUTtBQUNqQyxVQUFNLGVBQWUsUUFBUSxJQUFJLFdBQVc7QUFDNUMsVUFBTSxvQkFBb0IsYUFBYSxJQUFJLGdCQUFnQjtBQUUzRCxVQUFNLDhCQUE4QkksS0FBSSxLQUFNSixpQkFBZ0IsSUFDMUQsaURBQ0EsOENBQThDO0FBRWxELFVBQU1RLE1BQUssSUFBSSxRQUFRRCxPQUFNO0FBQUEsTUFDM0I7QUFBQSxNQUNBO0FBQUEsTUFDQTtBQUFBLE1BQ0Esc0JBQXNCO0FBQUEsTUFDdEIsa0NBQWtDLCtCQUErQixJQUFJLFlBQVk7QUFBQSxJQUNuRixDQUFDO0FBRUQsVUFBTSxjQUFjLEVBQUUsWUFBWSxhQUFhLFlBQVksWUFBWTtBQUV2RSxXQUFPO0FBQUEsTUFDTCxRQUFRQztBQUFBLE1BQ1IsaUJBQWlCO0FBQUEsUUFDZixlQUFlLElBQUksZUFBZUEsSUFBRyx1QkFBdUIsUUFBUSxDQUFDLFNBQVMsR0FBRyxXQUFXO0FBQUEsUUFDNUYsS0FBSyxJQUFJLGVBQWVBLElBQUcsd0JBQXdCLFdBQVcsQ0FBQyxTQUFTLEdBQUcsV0FBVztBQUFBLFFBQ3RGLEtBQUssSUFBSSxlQUFlQSxJQUFHLHdCQUF3QixRQUFRLENBQUMsV0FBVyxTQUFTLEdBQUcsV0FBVztBQUFBLFFBQzlGLGFBQWEsSUFBSSxlQUFlQSxJQUFHLGlDQUFpQyxRQUFRLENBQUMsUUFBUSxXQUFXLFNBQVMsR0FBRyxXQUFXO0FBQUEsUUFDdkgsUUFBUSxJQUFJLGVBQWVBLElBQUcsMkJBQTJCLFFBQVEsQ0FBQyxTQUFTLEdBQUcsV0FBVztBQUFBLFFBQ3pGLFdBQVcsSUFBSSxlQUFlQSxJQUFHLGtCQUFrQixXQUFXLENBQUMsU0FBUyxHQUFHLFdBQVc7QUFBQSxRQUN0Riw4QkFBOEJBLElBQUc7QUFBQSxNQUNuQztBQUFBLE1BQ0E7QUFBQSxNQUNBLE9BQU87QUFBQSxRQUNMLGFBQWE7QUFBQSxVQUNYLFFBQVFBLElBQUc7QUFBQSxRQUNiO0FBQUEsUUFDQSxXQUFXO0FBQUEsVUFDVCx5QkFBeUJBLElBQUc7QUFBQSxVQUM1QixjQUFjQSxJQUFHO0FBQUEsUUFDbkI7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLGNBQWM7QUFBQSxZQUNaLFNBQVNBLElBQUc7QUFBQSxVQUNkO0FBQUEsVUFDQSxTQUFTO0FBQUEsWUFDUCxTQUFTQSxJQUFHO0FBQUEsVUFDZDtBQUFBLFFBQ0Y7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLCtDQUFnRE4sS0FBSTtBQUMzRCxRQUFJLHFDQUFxQztBQUN2QztBQUFBLElBQ0Y7QUFDQSwwQ0FBc0M7QUFFdEMsa0NBQThCQSxHQUFFO0FBQ2hDLGlEQUE2QztBQUM3QyxtQ0FBK0I7QUFDL0Isd0NBQW9DO0FBQUEsRUFDdEM7QUFFQSxXQUFTLDhCQUErQkEsS0FBSTtBQUMxQyxVQUFNRSxPQUFNLE9BQU87QUFHbkIsVUFBTSxtQkFBbUI7QUFBQSxNQUN2QkEsS0FBSTtBQUFBLE1BQ0pBLEtBQUk7QUFBQSxNQUNKQSxLQUFJO0FBQUEsSUFDTjtBQUVBLHFCQUFpQixRQUFRLGdCQUFjO0FBQ3JDLGFBQU8sUUFBUSxZQUFZLElBQUksS0FBSztBQUVwQyxZQUFNLGNBQWMsSUFBSSx3QkFBd0IsVUFBVTtBQUMxRCxrQkFBWSxTQUFTRixHQUFFO0FBRXZCLDJCQUFxQixLQUFLLFdBQVc7QUFBQSxJQUN2QyxDQUFDO0FBQUEsRUFDSDtBQUVBLFdBQVMsK0NBQWdEO0FBQ3ZELFVBQU1FLE9BQU0sT0FBTztBQUVuQixVQUFNLFdBQVcsbUJBQW1CO0FBQ3BDLFVBQU0sRUFBRSw2QkFBNkIsSUFBSUE7QUFFekMsUUFBSTtBQUNKLFFBQUksWUFBWSxJQUFJO0FBQ2xCLHdDQUFrQztBQUFBLElBQ3BDLFdBQVcsWUFBWSxNQUFNLENBQUMsOEJBQThCO0FBQzFELHdDQUFrQztBQUFBLElBQ3BDLFdBQVcsOEJBQThCO0FBQ3ZDLHdDQUFrQztBQUFBLElBQ3BDLE9BQU87QUFDTCxZQUFNLElBQUksTUFBTSw0REFBNEQ7QUFBQSxJQUM5RTtBQUVBLFVBQU0sTUFBTUEsS0FBSTtBQUNoQixVQUFNLFVBQVUsQ0FBQyxHQUFHLElBQUksaUJBQWlCLEdBQUcsR0FBRyxJQUFJLGlCQUFpQixDQUFDLEVBQUUsT0FBTyxXQUFTLGdDQUFnQyxLQUFLLE1BQU0sSUFBSSxDQUFDO0FBRXZJLFFBQUksUUFBUSxXQUFXLEdBQUc7QUFDeEIsWUFBTSxJQUFJLE1BQU0sNERBQTREO0FBQUEsSUFDOUU7QUFFQSxlQUFXLFNBQVMsU0FBUztBQUMzQixrQkFBWSxPQUFPLE1BQU0sU0FBUyxjQUFjLE1BQU0sWUFBWSxNQUFNO0FBQUEsSUFDMUU7QUFBQSxFQUNGO0FBRUEsV0FBUyxpQ0FBa0M7QUFDekMsVUFBTUEsT0FBTSxPQUFPO0FBQ25CLFVBQU0sTUFBTUEsS0FBSTtBQUVoQixVQUFNLEtBQUssSUFBSSxpQkFBaUIsK0VBQStFO0FBQy9HLFFBQUksT0FBTyxNQUFNO0FBQ2Y7QUFBQSxJQUNGO0FBRUEsVUFBTSxFQUFFLG9CQUFvQiw0QkFBNEIsSUFBSUE7QUFDNUQsVUFBTSxrQkFBa0IsaUJBQWlCQSxLQUFJLEVBQUUsRUFBRSxPQUFPO0FBQ3hELGdCQUFZLE9BQU8sSUFBSTtBQUFBLE1BQ3JCLFVBQVc7QUFDVCxzQkFBYyxnQkFBZ0IsWUFBWSxpQkFBaUIsb0JBQW9CLDJCQUEyQjtBQUFBLE1BQzVHO0FBQUEsSUFDRixDQUFDO0FBQUEsRUFDSDtBQUVBLFdBQVMsc0NBQXVDO0FBQzlDLFVBQU0sV0FBVztBQUFBLE1BQ2YsQ0FBQyx5RkFBeUYscUJBQXFCO0FBQUEsTUFDL0csQ0FBQyxpR0FBaUcscUJBQXFCO0FBQUEsSUFDekg7QUFDQSxVQUFNQSxPQUFNLE9BQU87QUFDbkIsVUFBTSxNQUFNQSxLQUFJO0FBQ2hCLGVBQVcsQ0FBQyxNQUFNLE9BQU8sS0FBSyxVQUFVO0FBQ3RDLFlBQU0sT0FBTyxJQUFJLGlCQUFpQixJQUFJO0FBQ3RDLFVBQUksU0FBUyxNQUFNO0FBQ2pCO0FBQUEsTUFDRjtBQUVBLFlBQU0sVUFBVSxPQUFPLFNBQVMsTUFBTSxNQUFNLE9BQU87QUFDbkQsVUFBSSxRQUFRLFdBQVcsR0FBRztBQUN4QjtBQUFBLE1BQ0Y7QUFFQSxZQUFNLEVBQUUsb0JBQW9CLDRCQUE0QixJQUFJQTtBQUM1RCxZQUFNLGtCQUFrQixpQkFBaUJBLEtBQUksRUFBRSxFQUFFLE9BQU87QUFDeEQsa0JBQVksT0FBTyxRQUFRLENBQUMsRUFBRSxTQUFTLFdBQVk7QUFDakQsc0JBQWMsZ0JBQWdCLFlBQVksaUJBQWlCLG9CQUFvQiwyQkFBMkI7QUFBQSxNQUM1RyxDQUFDO0FBRUQ7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUVBLFdBQVMsNENBQTZDRixLQUFJO0FBQ3hELFFBQUksa0NBQWtDO0FBQ3BDO0FBQUEsSUFDRjtBQUNBLHVDQUFtQztBQUVuQyxRQUFJLENBQUMsbURBQW1ELEdBQUc7QUFDekQsWUFBTSxFQUFFLDRCQUE0QixJQUFJO0FBQ3hDLFVBQUksZ0NBQWdDLE1BQU07QUFDeEM7QUFBQSxNQUNGO0FBRUEsVUFBSTtBQUNGLG9CQUFZLFFBQVEsNkJBQTZCLGNBQWMsTUFBTSxVQUFVLHVCQUF1QjtBQUFBLE1BQ3hHLFNBQVMsR0FBRztBQUFBLE1BS1o7QUFBQSxJQUNGO0FBRUEsVUFBTSxXQUFXLG1CQUFtQjtBQUVwQyxRQUFJLGVBQWU7QUFDbkIsVUFBTUUsT0FBTSxPQUFPO0FBQ25CLFFBQUksV0FBVyxJQUFJO0FBQ2pCLHFCQUFlQSxLQUFJLEtBQUsseURBQXlEO0FBQUEsSUFDbkYsV0FBVyxXQUFXLElBQUk7QUFDeEIscUJBQWVBLEtBQUksS0FBSyx5REFBeUQ7QUFBQSxJQUNuRjtBQUNBLFFBQUksaUJBQWlCLE1BQU07QUFDekIsa0JBQVksT0FBTyxjQUFjLGNBQWMsTUFBTSxHQUFHLFlBQVk7QUFBQSxJQUN0RTtBQUVBLFFBQUksVUFBVTtBQUNkLGNBQVVBLEtBQUksS0FBSyxzQ0FBc0M7QUFDekQsUUFBSSxZQUFZLE1BQU07QUFDcEIsZ0JBQVVBLEtBQUksS0FBSyx1Q0FBdUM7QUFBQSxJQUM1RDtBQUNBLFFBQUksWUFBWSxNQUFNO0FBQ3BCLGtCQUFZLE9BQU8sU0FBUyxjQUFjLE1BQU0sR0FBRyxPQUFPO0FBQUEsSUFDNUQ7QUFBQSxFQUNGO0FBRUEsTUFBTSwrQ0FBK0M7QUFBQSxJQUNuRCxLQUFLO0FBQUEsTUFDSCxZQUFZO0FBQUEsUUFDVjtBQUFBLFVBQ0UsU0FBUztBQUFBLFlBQ1A7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsWUFDQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsVUFDRjtBQUFBLFVBQ0EsZUFBZTtBQUFBLFFBQ2pCO0FBQUEsUUFDQTtBQUFBLFVBQ0UsU0FBUztBQUFBLFlBQ1A7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsWUFDQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsVUFDRjtBQUFBLFVBQ0EsZUFBZTtBQUFBLFFBQ2pCO0FBQUEsUUFDQTtBQUFBLFVBQ0UsU0FBUztBQUFBLFlBQ1A7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsWUFDQTtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsVUFDRjtBQUFBLFVBQ0EsZUFBZTtBQUFBLFFBQ2pCO0FBQUEsTUFDRjtBQUFBLE1BQ0EsWUFBWTtBQUFBLElBQ2Q7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLFlBQVk7QUFBQSxRQUNWO0FBQUEsVUFDRSxTQUFTO0FBQUE7QUFBQSxZQUNFO0FBQUE7QUFBQSxZQUNUO0FBQUE7QUFBQSxZQUNBO0FBQUE7QUFBQSxZQUNBO0FBQUE7QUFBQSxZQUNBO0FBQUE7QUFBQSxZQUNTO0FBQUEsWUFDVDtBQUFBLFlBQ0E7QUFBQSxZQUNBO0FBQUEsVUFDRjtBQUFBLFVBQ0EsUUFBUTtBQUFBLFVBQ1IsZUFBZTtBQUFBLFFBQ2pCO0FBQUEsUUFDQTtBQUFBLFVBQ0UsU0FBUztBQUFBO0FBQUEsWUFDRTtBQUFBO0FBQUEsWUFDVDtBQUFBO0FBQUEsWUFDQTtBQUFBO0FBQUEsWUFDQTtBQUFBO0FBQUEsWUFDQTtBQUFBO0FBQUEsWUFDUztBQUFBLFlBQ1Q7QUFBQSxZQUNBO0FBQUEsWUFDQTtBQUFBLFVBQ0Y7QUFBQSxVQUNBLFFBQVE7QUFBQSxVQUNSLGVBQWU7QUFBQSxRQUNqQjtBQUFBLFFBQ0E7QUFBQSxVQUNFLFNBQVM7QUFBQTtBQUFBLFlBQ0U7QUFBQTtBQUFBLFlBQ1Q7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ0E7QUFBQTtBQUFBLFlBQ1M7QUFBQSxZQUNUO0FBQUEsWUFDQTtBQUFBLFlBQ0E7QUFBQSxVQUNGO0FBQUEsVUFDQSxRQUFRO0FBQUEsVUFDUixlQUFlO0FBQUEsUUFDakI7QUFBQSxNQUNGO0FBQUEsTUFDQSxZQUFZO0FBQUEsSUFDZDtBQUFBLEVBQ0Y7QUFFQSxXQUFTLCtDQUFnRCxFQUFFLFNBQVMsS0FBSyxHQUFHO0FBQzFFLFVBQU0sTUFBTSxZQUFZLE1BQU0sUUFBUSxHQUFHLENBQUMsQ0FBQztBQUMzQyxVQUFNLENBQUMsUUFBUSxNQUFNLElBQUksSUFBSTtBQUM3QixVQUFNLFlBQVksT0FBTyxNQUFNO0FBQy9CLFVBQU0sYUFBYSxPQUFPO0FBRTFCLFVBQU0sU0FBUyxZQUFZLE1BQU0sSUFBSSxLQUFLLElBQUksQ0FBQyxDQUFDO0FBQ2hELFVBQU0saUJBQWlCLElBQUksT0FBTyxTQUFTLENBQUMsRUFBRSxLQUFLO0FBQ25ELFVBQU0sa0JBQWtCLE9BQU8sUUFBUSxJQUFJLE9BQU8sSUFBSTtBQUV0RCxRQUFJLHlCQUF5QjtBQUM3QixRQUFJLE9BQU8sYUFBYSxPQUFPO0FBQzdCLGdDQUEwQjtBQUMxQixnQ0FBMEI7QUFBQSxJQUM1QixPQUFPO0FBQ0wsZ0NBQTBCO0FBQzFCLGdDQUEwQjtBQUFBLElBQzVCO0FBRUEsV0FBTyxvQkFBb0Isd0JBQXdCLEdBQUcsQ0FBQyxHQUFHLFVBQVUsRUFBRSxPQUFPLEVBQUUsQ0FBQztBQUVoRixhQUFTLFNBQVUsTUFBTTtBQUN2QixZQUFNLEVBQUUsU0FBUyxJQUFJO0FBQ3JCLFVBQUksRUFBRSxhQUFhLFNBQVMsYUFBYSxVQUFVO0FBQ2pELGVBQU87QUFBQSxNQUNUO0FBRUEsWUFBTSxFQUFFLE1BQU0sS0FBSyxJQUFJLEtBQUssU0FBUyxDQUFDLEVBQUU7QUFDeEMsVUFBSSxFQUFFLFNBQVMsYUFBYSxTQUFTLEtBQU87QUFDMUMsZUFBTztBQUFBLE1BQ1Q7QUFFQSxhQUFPO0FBQUEsUUFDTDtBQUFBLFFBQ0E7QUFBQSxRQUNBLFFBQVE7QUFBQSxVQUNOLFVBQVU7QUFBQSxVQUNWLG1CQUFtQjtBQUFBLFVBQ25CLG1CQUFtQjtBQUFBLFFBQ3JCO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFBQSxFQUNGO0FBRUEsV0FBUyxpREFBa0QsRUFBRSxTQUFTLEtBQUssR0FBRztBQUM1RSxVQUFNLENBQUMsUUFBUSxNQUFNLElBQUksWUFBWSxNQUFNLE9BQU8sRUFBRTtBQUNwRCxVQUFNLFlBQVksT0FBTyxNQUFNO0FBQy9CLFVBQU0sYUFBYSxNQUFNLE9BQU8sTUFBTSxVQUFVLENBQUM7QUFFakQsVUFBTSxTQUFTLFlBQVksTUFBTSxRQUFRLElBQUksQ0FBQyxDQUFDO0FBQy9DLFVBQU0saUJBQWlCLElBQUksT0FBTyxTQUFTLENBQUMsRUFBRSxLQUFLO0FBQ25ELFVBQU0sa0JBQWtCLFFBQVEsSUFBSSxFQUFFO0FBRXRDLFFBQUkseUJBQXlCO0FBQzdCLFFBQUksT0FBTyxhQUFhLFFBQVE7QUFDOUIsZ0NBQTBCO0FBQzFCLGdDQUEwQjtBQUFBLElBQzVCLE9BQU87QUFDTCxnQ0FBMEI7QUFDMUIsZ0NBQTBCO0FBQUEsSUFDNUI7QUFFQSxXQUFPLG9CQUFvQix5QkFBeUIsVUFBVSxFQUFFLE9BQU8sRUFBRSxDQUFDO0FBRTFFLGFBQVMsU0FBVSxNQUFNO0FBQ3ZCLFVBQUksS0FBSyxhQUFhLE9BQU87QUFDM0IsZUFBTztBQUFBLE1BQ1Q7QUFFQSxZQUFNLEVBQUUsTUFBTSxLQUFLLElBQUksS0FBSyxTQUFTLENBQUMsRUFBRTtBQUN4QyxVQUFJLEVBQUUsU0FBUyxhQUFhLFNBQVMsS0FBTztBQUMxQyxlQUFPO0FBQUEsTUFDVDtBQUVBLGFBQU87QUFBQSxRQUNMO0FBQUEsUUFDQTtBQUFBLFFBQ0EsUUFBUTtBQUFBLFVBQ04sVUFBVTtBQUFBLFVBQ1YsbUJBQW1CO0FBQUEsVUFDbkIsbUJBQW1CO0FBQUEsUUFDckI7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLHFEQUFzRDtBQUM3RCxRQUFJLG1CQUFtQixJQUFJLElBQUk7QUFDN0IsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLFVBQVUsNkNBQTZDLFFBQVEsSUFBSTtBQUN6RSxRQUFJLFlBQVksUUFBVztBQUV6QixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sYUFBYSxRQUFRLFdBQVcsSUFBSSxDQUFDLEVBQUUsU0FBUyxTQUFTLEdBQUcsZ0JBQWdCLGtCQUFrQixNQUFNO0FBQ3hHLGFBQU87QUFBQSxRQUNMLFNBQVMsSUFBSSxhQUFhLFFBQVEsS0FBSyxFQUFFLENBQUM7QUFBQSxRQUMxQztBQUFBLFFBQ0E7QUFBQSxNQUNGO0FBQUEsSUFDRixDQUFDO0FBRUQsVUFBTSxRQUFRLENBQUM7QUFDZixlQUFXLEVBQUUsTUFBTSxLQUFLLEtBQUssT0FBTyxFQUFFLE9BQU8sZ0JBQWdCLEtBQUssR0FBRztBQUNuRSxpQkFBVyxFQUFFLFNBQVMsUUFBUSxjQUFjLEtBQUssWUFBWTtBQUMzRCxjQUFNLFVBQVUsT0FBTyxTQUFTLE1BQU0sTUFBTSxPQUFPLEVBQ2hELElBQUksQ0FBQyxFQUFFLFNBQVMsTUFBQUssTUFBSyxNQUFNO0FBQzFCLGlCQUFPLEVBQUUsU0FBUyxRQUFRLElBQUksTUFBTSxHQUFHLE1BQU1BLFFBQU8sT0FBTztBQUFBLFFBQzdELENBQUMsRUFDQSxPQUFPLFdBQVM7QUFDZixnQkFBTSxtQkFBbUIsY0FBYyxLQUFLO0FBQzVDLGNBQUkscUJBQXFCLE1BQU07QUFDN0IsbUJBQU87QUFBQSxVQUNUO0FBQ0EsZ0JBQU0sbUJBQW1CO0FBQ3pCLGlCQUFPO0FBQUEsUUFDVCxDQUFDO0FBQ0gsY0FBTSxLQUFLLEdBQUcsT0FBTztBQUFBLE1BQ3ZCO0FBQUEsSUFDRjtBQUVBLFFBQUksTUFBTSxXQUFXLEdBQUc7QUFDdEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLFFBQVEsUUFBUSxVQUFVO0FBRWhDLFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxvQkFBcUI7QUFDNUIsV0FBTyxDQUFDO0FBQUEsRUFDVjtBQUVBLE1BQU0sYUFBTixNQUFpQjtBQUFBLElBQ2YsWUFBYSxTQUFTLE1BQU0sWUFBWTtBQUN0QyxXQUFLLFVBQVU7QUFDZixXQUFLLE9BQU87QUFDWixXQUFLLGVBQWUsUUFBUSxjQUFjLElBQUk7QUFDOUMsV0FBSyxhQUFhO0FBQUEsSUFDcEI7QUFBQSxJQUVBLFNBQVU7QUFDUixhQUFPLFVBQVUsS0FBSyxTQUFTLEtBQUssTUFBTSxDQUFBRixVQUFRO0FBQ2hELFFBQUFBLE1BQUssZUFBZSxLQUFLLFlBQVk7QUFBQSxNQUN2QyxDQUFDO0FBQUEsSUFDSDtBQUFBLEVBQ0Y7QUFFQSxXQUFTLGdEQUFpRCxFQUFFLFNBQVMsTUFBTSxpQkFBaUIsR0FBRztBQUM3RixVQUFNLEVBQUUsV0FBVyxPQUFPLElBQUk7QUFFOUIsVUFBTSxhQUFhLE9BQU8sTUFBTSxRQUFRLFFBQVE7QUFDaEQsUUFBSSxtQkFBbUI7QUFFdkIsV0FBTyxVQUFVLFlBQVksS0FBSyxDQUFBQSxVQUFRO0FBQ3hDLFlBQU0sU0FBUyxJQUFJLFlBQVlBLE9BQU0sRUFBRSxJQUFJLFdBQVcsQ0FBQztBQUV2RCxZQUFNLFlBQVksSUFBSSxlQUFlLFNBQVMsTUFBTTtBQUNwRCxlQUFTLElBQUksR0FBRyxNQUFNLEdBQUcsS0FBSztBQUM1QixrQkFBVSxRQUFRO0FBQUEsTUFDcEI7QUFDQSxnQkFBVSxTQUFTO0FBRW5CLGdCQUFVLFFBQVE7QUFDbEIsZ0JBQVUsUUFBUTtBQUNsQixhQUFPLGNBQWMsTUFBTSwrQkFBK0I7QUFFMUQsWUFBTSxjQUFjLENBQUMsSUFBTSxLQUFNLElBQU0sRUFBSTtBQUMzQyxhQUFPLFNBQVMsV0FBVztBQUUzQixZQUFNLFlBQVksQ0FBQyxNQUFNLE1BQU0sTUFBTSxJQUFJO0FBQ3pDLGFBQU8sWUFBWSxTQUFTO0FBRTVCLGFBQU8sNEJBQTRCLGNBQWMsZ0JBQWdCLGVBQWUsQ0FBQyxTQUFTLENBQUM7QUFDM0YsYUFBTyxhQUFhLE1BQU0sQ0FBQztBQUUzQixhQUFPLFdBQVcsU0FBUztBQUUzQixZQUFNLGFBQWEsQ0FBQyxLQUFNLEtBQU0sSUFBTSxFQUFJO0FBQzFDLGFBQU8sU0FBUyxVQUFVO0FBRTFCLGFBQU8sY0FBYyxNQUFNLCtCQUErQjtBQUMxRCxhQUFPLFVBQVUsZ0JBQWdCO0FBRWpDLGdCQUFVLFFBQVE7QUFFbEIsWUFBTSxnQkFBZ0IsVUFBVSxNQUFNLFFBQVEsT0FBTyxPQUFPLGlCQUFpQjtBQUU3RSxhQUFPLFNBQVMsZ0JBQWdCLG1CQUFtQiwrQkFBK0I7QUFDbEYsZ0JBQVUsU0FBUztBQUNuQixhQUFPLG1CQUFtQixJQUFJO0FBQzVCLGNBQU0sU0FBUyxVQUFVLFFBQVE7QUFDakMsWUFBSSxXQUFXLEdBQUc7QUFDaEIsNkJBQW1CO0FBQ25CO0FBQUEsUUFDRjtBQUNBLDJCQUFtQjtBQUFBLE1BQ3JCO0FBQ0EsZ0JBQVUsU0FBUztBQUNuQixhQUFPLGlCQUFpQixRQUFRLElBQUksbUJBQW1CLENBQUMsQ0FBQztBQUV6RCxhQUFPLFNBQVMsZ0JBQWdCLGtDQUFrQyxnQkFBZ0I7QUFDbEYsYUFBTyxpQkFBaUIsT0FBTyxRQUFRO0FBRXZDLGFBQU8sTUFBTTtBQUFBLElBQ2YsQ0FBQztBQUVELGdCQUFZLEtBQUssSUFBSSxXQUFXLFNBQVMsa0JBQWtCLFVBQVUsQ0FBQztBQUV0RSxXQUFPLFVBQVUsU0FBUyxrQkFBa0IsQ0FBQUEsVUFBUTtBQUNsRCxZQUFNLFNBQVMsSUFBSSxZQUFZQSxPQUFNLEVBQUUsSUFBSSxRQUFRLENBQUM7QUFDcEQsYUFBTyxpQkFBaUIsTUFBTSxXQUFXLEdBQUcsQ0FBQyxDQUFDO0FBQzlDLGFBQU8sTUFBTTtBQUFBLElBQ2YsQ0FBQztBQUFBLEVBQ0g7QUFFQSxXQUFTLGtEQUFtRCxFQUFFLFNBQVMsTUFBTSxpQkFBaUIsR0FBRztBQUMvRixVQUFNLEVBQUUsV0FBVyxZQUFZLE9BQU8sSUFBSTtBQUUxQyxVQUFNLGFBQWEsT0FBTyxNQUFNLFFBQVEsUUFBUTtBQUVoRCxXQUFPLFVBQVUsWUFBWSxLQUFLLENBQUFBLFVBQVE7QUFDeEMsWUFBTSxTQUFTLElBQUksWUFBWUEsT0FBTSxFQUFFLElBQUksV0FBVyxDQUFDO0FBRXZELFlBQU0sWUFBWSxJQUFJLGVBQWUsU0FBUyxNQUFNO0FBQ3BELGVBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLGtCQUFVLFFBQVE7QUFBQSxNQUNwQjtBQUNBLGdCQUFVLFNBQVM7QUFFbkIsZ0JBQVUsUUFBUTtBQUNsQixnQkFBVSxRQUFRO0FBQ2xCLGFBQU8sY0FBYyxNQUFNLCtCQUErQjtBQUUxRCxZQUFNLFlBQVk7QUFBQSxRQUNoQjtBQUFBLFFBQU07QUFBQSxRQUNOO0FBQUEsUUFBTTtBQUFBLFFBQ047QUFBQSxRQUFNO0FBQUEsUUFDTjtBQUFBLFFBQU07QUFBQSxRQUNOO0FBQUEsUUFBTTtBQUFBLFFBQ047QUFBQSxRQUFNO0FBQUEsUUFDTjtBQUFBLFFBQU07QUFBQSxRQUNOO0FBQUEsUUFBTTtBQUFBLFFBQ047QUFBQSxRQUFNO0FBQUEsUUFDTjtBQUFBLFFBQU87QUFBQSxRQUNQO0FBQUEsUUFBTztBQUFBLFFBQ1A7QUFBQSxRQUFPO0FBQUEsUUFDUDtBQUFBLFFBQU87QUFBQSxNQUNUO0FBQ0EsWUFBTSxlQUFlLFVBQVU7QUFFL0IsZUFBUyxJQUFJLEdBQUcsTUFBTSxjQUFjLEtBQUssR0FBRztBQUMxQyxlQUFPLGNBQWMsVUFBVSxDQUFDLEdBQUcsVUFBVSxJQUFJLENBQUMsQ0FBQztBQUFBLE1BQ3JEO0FBRUEsYUFBTyw0QkFBNEIsY0FBYyxnQkFBZ0IsZUFBZSxDQUFDLFNBQVMsQ0FBQztBQUMzRixhQUFPLGFBQWEsTUFBTSxLQUFLO0FBRS9CLGVBQVMsSUFBSSxlQUFlLEdBQUcsS0FBSyxHQUFHLEtBQUssR0FBRztBQUM3QyxlQUFPLGFBQWEsVUFBVSxDQUFDLEdBQUcsVUFBVSxJQUFJLENBQUMsQ0FBQztBQUFBLE1BQ3BEO0FBRUEsYUFBTyxjQUFjLE1BQU0sK0JBQStCO0FBQzFELGFBQU8sVUFBVSxnQkFBZ0I7QUFFakMsZ0JBQVUsUUFBUTtBQUNsQixZQUFNLGtCQUFrQixVQUFVO0FBRWxDLFlBQU0sZ0JBQWdCLGdCQUFnQixRQUFRLE9BQU8sT0FBTyxpQkFBaUI7QUFFN0UsYUFBTyxTQUFTLGdCQUFnQixtQkFBbUIsK0JBQStCO0FBQ2xGLGdCQUFVLFNBQVM7QUFDbkIsYUFBTyxpQkFBaUIsZ0JBQWdCLElBQUk7QUFFNUMsYUFBTyxTQUFTLGdCQUFnQixrQ0FBa0MsZ0JBQWdCO0FBQ2xGLGFBQU8saUJBQWlCLE9BQU8sUUFBUTtBQUV2QyxhQUFPLE1BQU07QUFBQSxJQUNmLENBQUM7QUFFRCxnQkFBWSxLQUFLLElBQUksV0FBVyxTQUFTLE1BQU0sVUFBVSxDQUFDO0FBRTFELFdBQU8sVUFBVSxTQUFTLE1BQU0sQ0FBQUEsVUFBUTtBQUN0QyxZQUFNLFNBQVMsSUFBSSxZQUFZQSxPQUFNLEVBQUUsSUFBSSxRQUFRLENBQUM7QUFDcEQsYUFBTyxpQkFBaUIsWUFBWSxVQUFVO0FBQzlDLGFBQU8sU0FBUyxVQUFVO0FBQzFCLGFBQU8sTUFBTTtBQUFBLElBQ2YsQ0FBQztBQUFBLEVBQ0g7QUFFTyxXQUFTLGtCQUFtQixVQUFVO0FBQzNDLFdBQU8sSUFBSSxjQUFjLFFBQVE7QUFBQSxFQUNuQztBQUVPLFdBQVMsZ0JBQWlCLFVBQVU7QUFDekMsV0FBTyxjQUFjLGdCQUFnQixVQUFVLFFBQVE7QUFBQSxFQUN6RDtBQUVPLFdBQVMsVUFBV0wsS0FBSSxVQUFVLENBQUMsR0FBRztBQUMzQyxVQUFNLEVBQUUsUUFBUSxHQUFHLElBQUk7QUFFdkIsVUFBTSxNQUFNQSxJQUFHLE9BQU87QUFFdEIsUUFBSSxvQkFBb0IsTUFBTTtBQUM1Qix3QkFBa0Isb0JBQW9CQSxLQUFJLEdBQUc7QUFBQSxJQUMvQztBQUVBLFdBQU8sZ0JBQWdCLFVBQVUsS0FBSyxLQUFLO0FBQUEsRUFDN0M7QUFFQSxXQUFTLG9CQUFxQkEsS0FBSSxLQUFLO0FBQ3JDLFVBQU1FLE9BQU0sT0FBTztBQUVuQixVQUFNLGNBQWMsT0FBTyxNQUFNLFFBQVEsV0FBVztBQUVwRCxVQUFNSSxNQUFLLElBQUksUUFBUTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7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QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQWlzQ2IsTUFBTSxxQkFBcUI7QUFFM0IsTUFBSSxLQUFLO0FBQ1QsTUFBSSxTQUFTO0FBRWIsTUFBcUIsUUFBckIsTUFBcUIsT0FBTTtBQUFBLElBQ3pCLE9BQU8sTUFBTyxRQUFRLEtBQUs7QUFDekIsd0JBQWtCLEdBQUc7QUFFckIsYUFBTyxPQUFPLFFBQVEsS0FBSyxZQUFVO0FBQ25DLGVBQU8sSUFBSSxPQUFNLEdBQUcsSUFBSSxRQUFRLFFBQVEsR0FBRyxDQUFDO0FBQUEsTUFDOUMsQ0FBQztBQUFBLElBQ0g7QUFBQSxJQUVBLE9BQU8saUJBQWtCLE9BQU9DLE1BQUssS0FBSztBQUN4Qyx3QkFBa0IsR0FBRztBQUVyQixZQUFNLFNBQVMsTUFBTSxNQUFNLGtCQUFrQjtBQUM3QyxVQUFJLFdBQVcsTUFBTTtBQUNuQixjQUFNLElBQUksTUFBTSx5R0FBeUc7QUFBQSxNQUMzSDtBQUVBLFlBQU0sYUFBYSxPQUFPLGdCQUFnQixPQUFPLENBQUMsQ0FBQztBQUNuRCxZQUFNLGNBQWMsT0FBTyxnQkFBZ0IsT0FBTyxDQUFDLENBQUM7QUFFcEQsVUFBSSxtQkFBbUI7QUFDdkIsVUFBSSxhQUFhO0FBQ2pCLFVBQUksb0JBQW9CO0FBRXhCLFlBQU0sWUFBWSxPQUFPLENBQUM7QUFDMUIsVUFBSSxjQUFjLFFBQVc7QUFDM0IsMkJBQW1CLFVBQVUsUUFBUSxHQUFHLE1BQU07QUFDOUMscUJBQWEsVUFBVSxRQUFRLEdBQUcsTUFBTTtBQUN4Qyw0QkFBb0IsVUFBVSxRQUFRLEdBQUcsTUFBTTtBQUFBLE1BQ2pEO0FBRUEsVUFBSTtBQUNKLFVBQUlBLEtBQUksVUFBVSxNQUFNO0FBQ3RCLGNBQU0sT0FBTyxHQUFHO0FBQUEsVUFBb0I7QUFBQSxVQUFZO0FBQUEsVUFDOUMsYUFBYSxnQkFBZ0I7QUFBQSxVQUFHLGFBQWEsVUFBVTtBQUFBLFVBQUcsYUFBYSxpQkFBaUI7QUFBQSxVQUN4RjtBQUFBLFFBQUc7QUFDTCxZQUFJO0FBQ0YsbUJBQVMsS0FBSyxNQUFNLEtBQUssZUFBZSxDQUFDLEVBQ3RDLElBQUksV0FBUztBQUNaLGtCQUFNLFlBQVksSUFBSSxNQUFNLE1BQU07QUFDbEMsa0JBQU0sU0FBUyxDQUFDLFVBQVUsT0FBTyxJQUFJLFlBQVk7QUFDakQsbUJBQU87QUFBQSxVQUNULENBQUM7QUFBQSxRQUNMLFVBQUU7QUFDQSxhQUFHLFFBQVEsSUFBSTtBQUFBLFFBQ2pCO0FBQUEsTUFDRixPQUFPO0FBQ0wsOEJBQXNCLElBQUksSUFBSSxLQUFLLFlBQVU7QUFDM0MsZ0JBQU0sT0FBTyxHQUFHO0FBQUEsWUFBb0I7QUFBQSxZQUFZO0FBQUEsWUFDOUMsYUFBYSxnQkFBZ0I7QUFBQSxZQUFHLGFBQWEsVUFBVTtBQUFBLFlBQUcsYUFBYSxpQkFBaUI7QUFBQSxVQUFDO0FBQzNGLGNBQUk7QUFDRixrQkFBTSxxQkFBcUJBLEtBQUksOEJBQThCO0FBQzdELGtCQUFNLEVBQUUsSUFBSSxTQUFTLElBQUlBO0FBQ3pCLHFCQUFTLEtBQUssTUFBTSxLQUFLLGVBQWUsQ0FBQyxFQUN0QyxJQUFJLFdBQVM7QUFDWixvQkFBTSxZQUFZLE1BQU07QUFDeEIsb0JBQU0sU0FBVSxjQUFjLElBQUssbUJBQW1CLFVBQVUsUUFBUSxJQUFJLFNBQVMsQ0FBQyxJQUFJO0FBQzFGLHFCQUFPO0FBQUEsWUFDVCxDQUFDO0FBQUEsVUFDTCxVQUFFO0FBQ0EsZUFBRyxRQUFRLElBQUk7QUFBQSxVQUNqQjtBQUFBLFFBQ0YsQ0FBQztBQUFBLE1BQ0g7QUFFQSxhQUFPO0FBQUEsSUFDVDtBQUFBLElBRUEsWUFBYSxRQUFRO0FBQ25CLFdBQUssU0FBUztBQUFBLElBQ2hCO0FBQUEsSUFFQSxJQUFLLFFBQVE7QUFDWCxhQUFPLEdBQUcsSUFBSSxLQUFLLFFBQVEsT0FBTyxnQkFBZ0IsTUFBTSxDQUFDLE1BQU07QUFBQSxJQUNqRTtBQUFBLElBRUEsS0FBTSxRQUFRO0FBQ1osYUFBTyxHQUFHLEtBQUssS0FBSyxRQUFRLE9BQU8sZ0JBQWdCLE1BQU0sQ0FBQyxFQUFFLGVBQWU7QUFBQSxJQUM3RTtBQUFBLElBRUEsT0FBUTtBQUNOLFlBQU0sTUFBTSxHQUFHLEtBQUssS0FBSyxNQUFNO0FBQy9CLFVBQUk7QUFDRixlQUFPLEtBQUssTUFBTSxJQUFJLGVBQWUsQ0FBQztBQUFBLE1BQ3hDLFVBQUU7QUFDQSxXQUFHLFFBQVEsR0FBRztBQUFBLE1BQ2hCO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLGtCQUFtQixLQUFLO0FBQy9CLFFBQUksT0FBTyxNQUFNO0FBQ2YsV0FBSyxjQUFjLEdBQUc7QUFDdEIsZUFBUyxvQkFBb0IsSUFBSSxJQUFJLEVBQUU7QUFBQSxJQUN6QztBQUFBLEVBQ0Y7QUFFQSxXQUFTLGNBQWUsS0FBSztBQUMzQixVQUFNQSxPQUFNLFlBQU87QUFDbkIsVUFBTSxFQUFFLFFBQVEsS0FBSyxJQUFJQTtBQUV6QixVQUFNLEVBQUUsYUFBQUMsYUFBWSxJQUFJO0FBRXhCLFVBQU0sV0FBVztBQUNqQixVQUFNLGFBQWFBO0FBQ25CLFVBQU0sY0FBYyxJQUFJQTtBQUN4QixVQUFNLGFBQWMsS0FBSyxJQUFNLElBQUlBO0FBRW5DLFVBQU0sV0FBVyxXQUFXLGFBQWEsY0FBYztBQUN2RCxVQUFNLE9BQU8sT0FBTyxNQUFNLFFBQVE7QUFFbEMsVUFBTSxPQUFPO0FBRWIsVUFBTSxTQUFTLEtBQUssSUFBSSxRQUFRO0FBRWhDLFVBQU0sVUFBVSxPQUFPLElBQUksVUFBVTtBQUNyQyxVQUFNLEVBQUUsb0JBQW9CLGtCQUFrQixJQUFJLElBQUksY0FBYztBQUNwRSxVQUFNLFNBQVMsSUFBSSxzQkFBc0I7QUFDekMsVUFBTSxRQUFRLElBQUkscUJBQXFCO0FBQ3ZDLFFBQUksSUFBSTtBQUNSO0FBQUEsTUFDRyxVQUFVLE9BQVEsUUFBUTtBQUFBLE1BQzNCO0FBQUEsTUFBb0I7QUFBQSxNQUNwQixPQUFPO0FBQUEsTUFBUyxPQUFPO0FBQUEsTUFDdkIsTUFBTTtBQUFBLE1BQVMsTUFBTTtBQUFBLElBQ3ZCLEVBQ0csUUFBUSxXQUFTO0FBQ2hCLFVBQUksRUFBRSxhQUFhLEtBQUssRUFBRSxJQUFJQSxZQUFXO0FBQUEsSUFDM0MsQ0FBQztBQUVILFVBQU0sU0FBUyxRQUFRLElBQUksV0FBVztBQUN0QyxVQUFNLEVBQUUsSUFBQUMsSUFBRyxJQUFJO0FBQ2YsUUFBSUYsS0FBSSxXQUFXLE9BQU87QUFDeEIsVUFBSTtBQUNKLFVBQUksVUFBVSxNQUFNO0FBQ2xCLDBCQUFrQixDQUFDLEdBQUcsR0FBRyxHQUFHLENBQUM7QUFBQSxNQUMvQixPQUFPO0FBQ0wsY0FBTSxJQUFJLGdCQUFnQkUsR0FBRSxFQUFFO0FBQzlCLDBCQUFrQixDQUFDLEVBQUUsU0FBUyxFQUFFLFNBQVMsRUFBRSxTQUFTLEVBQUUsbUJBQW1CO0FBQUEsTUFDM0U7QUFFQSxZQUFNLElBQUksaUJBQWlCQSxHQUFFO0FBQzdCLFlBQU0sSUFBSSxnQkFBZ0JBLEdBQUU7QUFFNUIsVUFBSSxJQUFJO0FBQ1I7QUFBQSxRQUNFO0FBQUEsUUFDQSxHQUFHO0FBQUEsUUFDSCxFQUFFO0FBQUEsUUFBTSxFQUFFLE9BQU87QUFBQSxRQUNqQixFQUFFO0FBQUEsUUFBTSxFQUFFLE9BQU87QUFBQSxRQUNqQjtBQUFBLE1BQ0YsRUFDRyxRQUFRLFdBQVM7QUFDaEIsWUFBSSxFQUFFLFVBQVUsS0FBSyxFQUFFLElBQUksQ0FBQztBQUFBLE1BQzlCLENBQUM7QUFFSDtBQUFBLFFBQ0VGLEtBQUksZUFBZTtBQUFBLFFBQ25CQSxLQUFJLGdDQUFnQztBQUFBLFFBQ3BDQSxLQUFJLG1DQUFtQztBQUFBLFFBQ3ZDQSxLQUFJLDhCQUE4QjtBQUFBLFFBQ2xDLFFBQVEsZ0JBQWdCLFNBQVMsRUFBRSxnQkFBZ0IsTUFBTTtBQUFBLE1BQzNELEVBQ0csUUFBUSxDQUFDLE9BQU8sTUFBTTtBQUNyQixZQUFJLFVBQVUsUUFBVztBQUN2QixrQkFBUTtBQUFBLFFBQ1Y7QUFDQSxZQUFJLEVBQUUsYUFBYSxLQUFLLEVBQUUsSUFBSUMsWUFBVztBQUFBLE1BQzNDLENBQUM7QUFBQSxJQUNMO0FBRUEsVUFBTUUsTUFBSyxJQUFJLFFBQVFKLE9BQU07QUFBQSxNQUMzQjtBQUFBLE1BQ0E7QUFBQSxNQUNBLFVBQVU7QUFBQSxNQUNWLFNBQVM7QUFBQSxJQUNYLENBQUM7QUFFRCxVQUFNLG1CQUFtQixFQUFFLFlBQVksWUFBWTtBQUNuRCxVQUFNLGNBQWMsRUFBRSxZQUFZLGFBQWEsWUFBWSxZQUFZO0FBRXZFLFdBQU87QUFBQSxNQUNMLFFBQVFJO0FBQUEsTUFDUixLQUFLLElBQUksZUFBZUEsSUFBRyxXQUFXLFdBQVcsQ0FBQyxXQUFXLFdBQVcsU0FBUyxHQUFHLGdCQUFnQjtBQUFBLE1BQ3BHLEtBQUssSUFBSSxlQUFlQSxJQUFHLFdBQVcsUUFBUSxDQUFDLFdBQVcsU0FBUyxHQUFHLFdBQVc7QUFBQSxNQUNqRixNQUFNLElBQUksZUFBZUEsSUFBRyxZQUFZLFdBQVcsQ0FBQyxXQUFXLFNBQVMsR0FBRyxXQUFXO0FBQUEsTUFDdEYsTUFBTSxJQUFJLGVBQWVBLElBQUcsWUFBWSxXQUFXLENBQUMsU0FBUyxHQUFHLFdBQVc7QUFBQSxNQUMzRSxxQkFBcUIsSUFBSTtBQUFBLFFBQWVBLElBQUc7QUFBQSxRQUF1QjtBQUFBLFFBQVcsQ0FBQyxXQUFXLFdBQVcsUUFBUSxRQUFRLE1BQU07QUFBQSxRQUN4SDtBQUFBLE1BQWdCO0FBQUEsTUFDbEIscUJBQXFCLElBQUksZUFBZUEsSUFBRyx1QkFBdUIsV0FBVztBQUFBLFFBQUM7QUFBQSxRQUFXO0FBQUEsUUFBVztBQUFBLFFBQVE7QUFBQSxRQUFRO0FBQUEsUUFDbEg7QUFBQSxNQUFTLEdBQUcsZ0JBQWdCO0FBQUEsTUFDOUIsU0FBUyxJQUFJLGVBQWVBLElBQUcsU0FBUyxRQUFRLENBQUMsU0FBUyxHQUFHLFdBQVc7QUFBQSxJQUMxRTtBQUFBLEVBQ0Y7QUFFQSxXQUFTLG9CQUFxQkEsS0FBSUQsS0FBSTtBQUNwQyxVQUFNRixPQUFNLFlBQU87QUFFbkIsUUFBSUEsS0FBSSxXQUFXLE9BQU87QUFDeEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLGVBQWVBLEtBQUksOEJBQThCO0FBRXZELFdBQU8sU0FBVSxRQUFRLEtBQUssSUFBSTtBQUNoQyxVQUFJO0FBRUosNEJBQXNCRSxLQUFJLEtBQUssWUFBVTtBQUN2QyxjQUFNLFNBQVMsYUFBYUEsS0FBSSxRQUFRLE1BQU07QUFDOUMsaUJBQVMsR0FBRyxNQUFNO0FBQUEsTUFDcEIsQ0FBQztBQUVELGFBQU87QUFBQSxJQUNUO0FBQUEsRUFDRjtBQUVBLFdBQVMsV0FBWSxRQUFRLEtBQUssSUFBSTtBQUNwQyxXQUFPLEdBQUcsSUFBSTtBQUFBLEVBQ2hCO0FBRUEsV0FBUyxhQUFjLEtBQUs7QUFDMUIsV0FBTyxNQUFNLElBQUk7QUFBQSxFQUNuQjs7O0FDcjZDQSxNQUFxQixNQUFyQixNQUF5QjtBQUFBLElBQ3ZCLFlBQWEsVUFBVSxTQUFTO0FBQzlCLFdBQUssUUFBUSxvQkFBSSxJQUFJO0FBQ3JCLFdBQUssV0FBVztBQUNoQixXQUFLLFVBQVU7QUFBQSxJQUNqQjtBQUFBLElBRUEsUUFBUyxLQUFLO0FBQ1osWUFBTSxFQUFFLE9BQU8sUUFBUSxJQUFJO0FBQzNCLFlBQU0sUUFBUSxTQUFPO0FBQUUsZ0JBQVEsS0FBSyxHQUFHO0FBQUEsTUFBRyxDQUFDO0FBQzNDLFlBQU0sTUFBTTtBQUFBLElBQ2Q7QUFBQSxJQUVBLElBQUssS0FBSztBQUNSLFlBQU0sRUFBRSxNQUFNLElBQUk7QUFFbEIsWUFBTSxPQUFPLE1BQU0sSUFBSSxHQUFHO0FBQzFCLFVBQUksU0FBUyxRQUFXO0FBQ3RCLGNBQU0sT0FBTyxHQUFHO0FBQ2hCLGNBQU0sSUFBSSxLQUFLLElBQUk7QUFBQSxNQUNyQjtBQUVBLGFBQU87QUFBQSxJQUNUO0FBQUEsSUFFQSxJQUFLLEtBQUssS0FBSyxLQUFLO0FBQ2xCLFlBQU0sRUFBRSxNQUFNLElBQUk7QUFFbEIsWUFBTSxjQUFjLE1BQU0sSUFBSSxHQUFHO0FBQ2pDLFVBQUksZ0JBQWdCLFFBQVc7QUFDN0IsY0FBTSxPQUFPLEdBQUc7QUFDaEIsYUFBSyxRQUFRLGFBQWEsR0FBRztBQUFBLE1BQy9CLFdBQVcsTUFBTSxTQUFTLEtBQUssVUFBVTtBQUN2QyxjQUFNLFlBQVksTUFBTSxLQUFLLEVBQUUsS0FBSyxFQUFFO0FBQ3RDLGNBQU0sWUFBWSxNQUFNLElBQUksU0FBUztBQUNyQyxjQUFNLE9BQU8sU0FBUztBQUN0QixhQUFLLFFBQVEsV0FBVyxHQUFHO0FBQUEsTUFDN0I7QUFFQSxZQUFNLElBQUksS0FBSyxHQUFHO0FBQUEsSUFDcEI7QUFBQSxFQUNGOzs7QUN6Q0EsTUFBTUUsY0FBYTtBQUNuQixNQUFNQyxjQUFhO0FBRW5CLE1BQU0sa0JBQWtCO0FBRXhCLE1BQU0sYUFBYTtBQUVuQixNQUFNLGdCQUFnQjtBQUN0QixNQUFNLGVBQWU7QUFDckIsTUFBTSxlQUFlO0FBQ3JCLE1BQU0sZ0JBQWdCO0FBQ3RCLE1BQU0sY0FBYztBQUNwQixNQUFNLGdCQUFnQjtBQUN0QixNQUFNLGVBQWU7QUFFckIsTUFBTSxtQkFBbUI7QUFDekIsTUFBTSxzQkFBc0I7QUFDNUIsTUFBTSxvQkFBb0I7QUFDMUIsTUFBTSxxQkFBcUI7QUFDM0IsTUFBTSxxQkFBcUI7QUFDM0IsTUFBTSxzQkFBc0I7QUFDNUIsTUFBTSxzQkFBc0I7QUFDNUIsTUFBTSxnQkFBZ0I7QUFDdEIsTUFBTSxpQkFBaUI7QUFDdkIsTUFBTSwyQkFBMkI7QUFDakMsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSxpQkFBaUI7QUFDdkIsTUFBTSx3QkFBd0I7QUFDOUIsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSx1QkFBdUI7QUFDN0IsTUFBTSxrQ0FBa0M7QUFFeEMsTUFBTSxhQUFhO0FBQ25CLE1BQU0sY0FBYztBQUVwQixNQUFNLG9CQUFvQjtBQUUxQixNQUFNLDBCQUEwQjtBQUNoQyxNQUFNLCtCQUErQkMsUUFBTyxLQUFLLENBQUMsR0FBTSxHQUFNLEdBQU0sSUFBTSxDQUFJLENBQUM7QUFFL0UsTUFBTSw4QkFBOEI7QUFFcEMsTUFBTSxrQkFBa0JBLFFBQU8sS0FBSyxDQUFDLENBQUMsQ0FBQztBQUV2QyxXQUFTLE1BQU8sTUFBTTtBQUNwQixVQUFNLFVBQVUsSUFBSSxXQUFXO0FBRS9CLFVBQU0sV0FBVyxPQUFPLE9BQU8sQ0FBQyxHQUFHLElBQUk7QUFDdkMsWUFBUSxTQUFTLFFBQVE7QUFFekIsV0FBTyxRQUFRLE1BQU07QUFBQSxFQUN2QjtBQUVBLE1BQU0sYUFBTixNQUFpQjtBQUFBLElBQ2YsY0FBZTtBQUNiLFdBQUssVUFBVSxDQUFDO0FBQUEsSUFDbEI7QUFBQSxJQUVBLFNBQVUsTUFBTTtBQUNkLFdBQUssUUFBUSxLQUFLLElBQUk7QUFBQSxJQUN4QjtBQUFBLElBRUEsUUFBUztBQUNQLFlBQU0sUUFBUSxhQUFhLEtBQUssT0FBTztBQUV2QyxZQUFNO0FBQUEsUUFDSjtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxNQUNGLElBQUk7QUFFSixVQUFJLFNBQVM7QUFFYixZQUFNLGVBQWU7QUFDckIsWUFBTSxpQkFBaUI7QUFDdkIsWUFBTSxrQkFBa0I7QUFDeEIsWUFBTSxnQkFBZ0I7QUFDdEIsWUFBTSxhQUFhO0FBQ25CLGdCQUFVO0FBRVYsWUFBTSxrQkFBa0I7QUFDeEIsWUFBTSxnQkFBZ0IsUUFBUSxTQUFTO0FBQ3ZDLGdCQUFVO0FBRVYsWUFBTSxnQkFBZ0I7QUFDdEIsWUFBTSxjQUFjLE1BQU0sU0FBUztBQUNuQyxnQkFBVTtBQUVWLFlBQU0saUJBQWlCO0FBQ3ZCLFlBQU0sZUFBZSxPQUFPLFNBQVM7QUFDckMsZ0JBQVU7QUFFVixZQUFNLGlCQUFpQjtBQUN2QixZQUFNLGVBQWUsT0FBTyxTQUFTO0FBQ3JDLGdCQUFVO0FBRVYsWUFBTSxrQkFBa0I7QUFDeEIsWUFBTSxnQkFBZ0IsUUFBUSxTQUFTO0FBQ3ZDLGdCQUFVO0FBRVYsWUFBTSxrQkFBa0I7QUFDeEIsWUFBTSxnQkFBZ0IsUUFBUSxTQUFTO0FBQ3ZDLGdCQUFVO0FBRVYsWUFBTSxhQUFhO0FBRW5CLFlBQU0sdUJBQXVCLGVBQWUsSUFBSSxTQUFPO0FBQ3JELGNBQU0sWUFBWTtBQUNsQixZQUFJLFNBQVM7QUFFYixrQkFBVSxJQUFLLElBQUksTUFBTSxTQUFTO0FBRWxDLGVBQU87QUFBQSxNQUNULENBQUM7QUFFRCxZQUFNLGdCQUFnQixRQUFRLE9BQU8sQ0FBQyxRQUFRLFVBQVU7QUFDdEQsY0FBTSxxQkFBcUIsTUFBTSxVQUFVO0FBRTNDLDJCQUFtQixRQUFRLFlBQVU7QUFDbkMsZ0JBQU0sQ0FBQyxFQUFFLGFBQWEsZ0JBQWdCLElBQUk7QUFDMUMsZUFBSyxjQUFjRCxpQkFBZ0IsS0FBSyxvQkFBb0IsR0FBRztBQUM3RCxtQkFBTyxLQUFLLE1BQU07QUFDbEIsbUJBQU8sS0FBSyxFQUFFLFFBQVEsaUJBQWlCLENBQUM7QUFDeEMsc0JBQVU7QUFBQSxVQUNaO0FBQUEsUUFDRixDQUFDO0FBRUQsZUFBTztBQUFBLE1BQ1QsR0FBRyxDQUFDLENBQUM7QUFFTCw0QkFBc0IsUUFBUSxTQUFPO0FBQ25DLFlBQUksU0FBUztBQUViLGtCQUFVLEtBQU0sSUFBSSxRQUFRLFNBQVM7QUFBQSxNQUN2QyxDQUFDO0FBRUQsWUFBTSxtQkFBbUIsV0FBVyxJQUFJLFdBQVM7QUFDL0MsaUJBQVMsTUFBTSxRQUFRLENBQUM7QUFFeEIsY0FBTSxjQUFjO0FBQ3BCLGNBQU0sU0FBUztBQUVmLGtCQUFVLElBQUssSUFBSSxNQUFNLE1BQU07QUFFL0IsZUFBTztBQUFBLE1BQ1QsQ0FBQztBQUVELFlBQU0sbUJBQW1CLFdBQVcsSUFBSSxXQUFTO0FBQy9DLGlCQUFTLE1BQU0sUUFBUSxDQUFDO0FBRXhCLGNBQU0sY0FBYztBQUNwQixjQUFNLFNBQVM7QUFFZixrQkFBVSxJQUFLLElBQUksTUFBTSxNQUFNO0FBRS9CLGVBQU87QUFBQSxNQUNULENBQUM7QUFFRCxZQUFNLGVBQWUsQ0FBQztBQUN0QixZQUFNLGdCQUFnQixRQUFRLElBQUksU0FBTztBQUN2QyxjQUFNLFlBQVk7QUFFbEIsY0FBTSxTQUFTQyxRQUFPLEtBQUssY0FBYyxJQUFJLE1BQU0sQ0FBQztBQUNwRCxjQUFNLE9BQU9BLFFBQU8sS0FBSyxLQUFLLE1BQU07QUFDcEMsY0FBTSxRQUFRQSxRQUFPLE9BQU8sQ0FBQyxRQUFRLE1BQU0sZUFBZSxDQUFDO0FBRTNELHFCQUFhLEtBQUssS0FBSztBQUV2QixrQkFBVSxNQUFNO0FBRWhCLGVBQU87QUFBQSxNQUNULENBQUM7QUFFRCxZQUFNLG1CQUFtQixjQUFjLElBQUksY0FBWTtBQUNyRCxjQUFNLGNBQWM7QUFDcEIsa0JBQVUsNkJBQTZCO0FBQ3ZDLGVBQU87QUFBQSxNQUNULENBQUM7QUFFRCxZQUFNLHdCQUF3QixrQkFBa0IsSUFBSSxnQkFBYztBQUNoRSxjQUFNLE9BQU8scUJBQXFCLFVBQVU7QUFFNUMsbUJBQVcsU0FBUztBQUVwQixrQkFBVSxLQUFLO0FBRWYsZUFBTztBQUFBLE1BQ1QsQ0FBQztBQUVELFlBQU0saUJBQWlCLFFBQVEsSUFBSSxDQUFDLE9BQU8sVUFBVTtBQUNuRCxjQUFNLFVBQVUsU0FBUztBQUV6QixjQUFNLE9BQU8sY0FBYyxLQUFLO0FBRWhDLGtCQUFVLEtBQUs7QUFFZixlQUFPO0FBQUEsTUFDVCxDQUFDO0FBRUQsWUFBTSxXQUFXO0FBQ2pCLFlBQU0sYUFBYTtBQUVuQixlQUFTLE1BQU0sUUFBUSxDQUFDO0FBQ3hCLFlBQU0sWUFBWTtBQUNsQixZQUFNLGlCQUFpQixXQUFXLFNBQVMsV0FBVztBQUN0RCxZQUFNLGNBQWMsS0FBTSxPQUFPLFNBQVMsSUFBSyxJQUFJLEtBQUssSUFBSSxlQUFlLFNBQVMsY0FBYyxTQUFTLHNCQUFzQixVQUM3SCxpQkFBaUIsSUFBSyxJQUFJLEtBQUssSUFBSSxpQkFBaUIsU0FBUyxrQkFBa0IsU0FBUyxRQUFRLFNBQVM7QUFDN0csWUFBTSxVQUFVLElBQUssY0FBYztBQUNuQyxnQkFBVTtBQUVWLFlBQU0sV0FBVyxTQUFTO0FBRTFCLFlBQU0sV0FBVztBQUVqQixZQUFNLE1BQU1BLFFBQU8sTUFBTSxRQUFRO0FBRWpDLFVBQUksTUFBTSxVQUFVO0FBRXBCLFVBQUksY0FBYyxVQUFVLEVBQUk7QUFDaEMsVUFBSSxjQUFjLFlBQVksRUFBSTtBQUNsQyxVQUFJLGNBQWMsWUFBWSxFQUFJO0FBQ2xDLFVBQUksY0FBYyxVQUFVLEVBQUk7QUFDaEMsVUFBSSxjQUFjLFlBQVksRUFBSTtBQUNsQyxVQUFJLGNBQWMsV0FBVyxFQUFJO0FBQ2pDLFVBQUksY0FBYyxRQUFRLFFBQVEsRUFBSTtBQUN0QyxVQUFJLGNBQWMsaUJBQWlCLEVBQUk7QUFDdkMsVUFBSSxjQUFjLE1BQU0sUUFBUSxFQUFJO0FBQ3BDLFVBQUksY0FBYyxlQUFlLEVBQUk7QUFDckMsVUFBSSxjQUFjLE9BQU8sUUFBUSxFQUFJO0FBQ3JDLFVBQUksY0FBYyxnQkFBZ0IsRUFBSTtBQUN0QyxVQUFJLGNBQWMsT0FBTyxRQUFRLEVBQUk7QUFDckMsVUFBSSxjQUFjLE9BQU8sU0FBUyxJQUFJLGlCQUFpQixHQUFHLEVBQUk7QUFDOUQsVUFBSSxjQUFjLFFBQVEsUUFBUSxFQUFJO0FBQ3RDLFVBQUksY0FBYyxpQkFBaUIsRUFBSTtBQUN2QyxVQUFJLGNBQWMsUUFBUSxRQUFRLEVBQUk7QUFDdEMsVUFBSSxjQUFjLGlCQUFpQixHQUFJO0FBQ3ZDLFVBQUksY0FBYyxVQUFVLEdBQUk7QUFDaEMsVUFBSSxjQUFjLFlBQVksR0FBSTtBQUVsQyxvQkFBYyxRQUFRLENBQUNDLFNBQVEsVUFBVTtBQUN2QyxZQUFJLGNBQWNBLFNBQVEsa0JBQW1CLFFBQVEsYUFBYztBQUFBLE1BQ3JFLENBQUM7QUFFRCxZQUFNLFFBQVEsQ0FBQyxJQUFJLFVBQVU7QUFDM0IsWUFBSSxjQUFjLElBQUksZ0JBQWlCLFFBQVEsV0FBWTtBQUFBLE1BQzdELENBQUM7QUFFRCxhQUFPLFFBQVEsQ0FBQyxPQUFPLFVBQVU7QUFDL0IsY0FBTSxDQUFDLGFBQWEsaUJBQWlCLE1BQU0sSUFBSTtBQUUvQyxjQUFNLGNBQWMsaUJBQWtCLFFBQVE7QUFDOUMsWUFBSSxjQUFjLGFBQWEsV0FBVztBQUMxQyxZQUFJLGNBQWMsaUJBQWlCLGNBQWMsQ0FBQztBQUNsRCxZQUFJLGNBQWUsV0FBVyxPQUFRLE9BQU8sU0FBUyxHQUFHLGNBQWMsQ0FBQztBQUFBLE1BQzFFLENBQUM7QUFFRCxhQUFPLFFBQVEsQ0FBQyxPQUFPLFVBQVU7QUFDL0IsY0FBTSxDQUFDLFlBQVksV0FBVyxTQUFTLElBQUk7QUFFM0MsY0FBTSxjQUFjLGlCQUFrQixRQUFRO0FBQzlDLFlBQUksY0FBYyxZQUFZLFdBQVc7QUFDekMsWUFBSSxjQUFjLFdBQVcsY0FBYyxDQUFDO0FBQzVDLFlBQUksY0FBYyxXQUFXLGNBQWMsQ0FBQztBQUFBLE1BQzlDLENBQUM7QUFFRCxjQUFRLFFBQVEsQ0FBQyxRQUFRLFVBQVU7QUFDakMsY0FBTSxDQUFDLFlBQVksWUFBWSxTQUFTLElBQUk7QUFFNUMsY0FBTSxlQUFlLGtCQUFtQixRQUFRO0FBQ2hELFlBQUksY0FBYyxZQUFZLFlBQVk7QUFDMUMsWUFBSSxjQUFjLFlBQVksZUFBZSxDQUFDO0FBQzlDLFlBQUksY0FBYyxXQUFXLGVBQWUsQ0FBQztBQUFBLE1BQy9DLENBQUM7QUFFRCxjQUFRLFFBQVEsQ0FBQyxPQUFPLFVBQVU7QUFDaEMsY0FBTSxFQUFFLFlBQUFDLGFBQVkscUJBQXFCLElBQUk7QUFDN0MsY0FBTSxtQkFBb0JBLGdCQUFlLE9BQVFBLFlBQVcsU0FBUztBQUNyRSxjQUFNLG9CQUFxQix5QkFBeUIsT0FBUSxxQkFBcUIsU0FBUztBQUMxRixjQUFNLHFCQUFxQjtBQUUzQixjQUFNLGNBQWMsa0JBQW1CLFFBQVE7QUFDL0MsWUFBSSxjQUFjLE1BQU0sT0FBTyxXQUFXO0FBQzFDLFlBQUksY0FBYyxNQUFNLGFBQWEsY0FBYyxDQUFDO0FBQ3BELFlBQUksY0FBYyxNQUFNLGlCQUFpQixjQUFjLENBQUM7QUFDeEQsWUFBSSxjQUFjLGtCQUFrQixjQUFjLEVBQUU7QUFDcEQsWUFBSSxjQUFjLE1BQU0saUJBQWlCLGNBQWMsRUFBRTtBQUN6RCxZQUFJLGNBQWMsbUJBQW1CLGNBQWMsRUFBRTtBQUNyRCxZQUFJLGNBQWMsTUFBTSxVQUFVLFFBQVEsY0FBYyxFQUFFO0FBQzFELFlBQUksY0FBYyxvQkFBb0IsY0FBYyxFQUFFO0FBQUEsTUFDeEQsQ0FBQztBQUVELHFCQUFlLFFBQVEsQ0FBQyxLQUFLLFVBQVU7QUFDckMsY0FBTSxFQUFFLE1BQU0sSUFBSTtBQUNsQixjQUFNLFlBQVkscUJBQXFCLEtBQUs7QUFFNUMsWUFBSSxjQUFjLE1BQU0sUUFBUSxTQUFTO0FBQ3pDLGNBQU0sUUFBUSxDQUFDLE1BQU1DLFdBQVU7QUFDN0IsY0FBSSxjQUFjLEtBQUssUUFBUSxZQUFZLElBQUtBLFNBQVEsQ0FBRTtBQUFBLFFBQzVELENBQUM7QUFBQSxNQUNILENBQUM7QUFFRCxvQkFBYyxRQUFRLENBQUMsVUFBVSxVQUFVO0FBQ3pDLGNBQU0sRUFBRSxRQUFBRixTQUFRLGlCQUFpQixJQUFJO0FBRXJDLGNBQU0sZ0JBQWdCO0FBQ3RCLGNBQU0sVUFBVTtBQUNoQixjQUFNLFdBQVc7QUFDakIsY0FBTSxZQUFZO0FBQ2xCLGNBQU0sWUFBWTtBQUVsQixZQUFJLGNBQWMsZUFBZUEsT0FBTTtBQUN2QyxZQUFJLGNBQWMsU0FBU0EsVUFBUyxDQUFDO0FBQ3JDLFlBQUksY0FBYyxVQUFVQSxVQUFTLENBQUM7QUFDdEMsWUFBSSxjQUFjLFdBQVdBLFVBQVMsQ0FBQztBQUN2QyxZQUFJLGNBQWMsaUJBQWlCLEtBQUssR0FBR0EsVUFBUyxDQUFDO0FBQ3JELFlBQUksY0FBYyxXQUFXQSxVQUFTLEVBQUU7QUFDeEMsWUFBSSxjQUFjLE1BQVFBLFVBQVMsRUFBRTtBQUNyQyxZQUFJLGNBQWMsa0JBQWtCQSxVQUFTLEVBQUU7QUFDL0MsWUFBSSxjQUFjLEdBQVFBLFVBQVMsRUFBRTtBQUNyQyxZQUFJLGNBQWMsSUFBUUEsVUFBUyxFQUFFO0FBQUEsTUFDdkMsQ0FBQztBQUVELDRCQUFzQixRQUFRLFNBQU87QUFDbkMsY0FBTSxZQUFZLElBQUk7QUFFdEIsY0FBTSx5QkFBeUI7QUFDL0IsY0FBTSxhQUFhO0FBQ25CLGNBQU0sdUJBQXVCLElBQUksUUFBUTtBQUN6QyxjQUFNLDBCQUEwQjtBQUVoQyxZQUFJLGNBQWMsd0JBQXdCLFNBQVM7QUFDbkQsWUFBSSxjQUFjLFlBQVksWUFBWSxDQUFDO0FBQzNDLFlBQUksY0FBYyxzQkFBc0IsWUFBWSxDQUFDO0FBQ3JELFlBQUksY0FBYyx5QkFBeUIsWUFBWSxFQUFFO0FBRXpELFlBQUksUUFBUSxRQUFRLENBQUMsUUFBUSxVQUFVO0FBQ3JDLGdCQUFNLGNBQWMsWUFBWSxLQUFNLFFBQVE7QUFFOUMsZ0JBQU0sQ0FBQyxhQUFhLGFBQWEsSUFBSTtBQUNyQyxjQUFJLGNBQWMsYUFBYSxXQUFXO0FBQzFDLGNBQUksY0FBYyxjQUFjLFFBQVEsY0FBYyxDQUFDO0FBQUEsUUFDekQsQ0FBQztBQUFBLE1BQ0gsQ0FBQztBQUVELGlCQUFXLFFBQVEsQ0FBQyxPQUFPLFVBQVU7QUFDbkMsY0FBTSxjQUFjLGlCQUFpQixLQUFLO0FBRTFDLFlBQUksY0FBYyxNQUFNLE1BQU0sUUFBUSxXQUFXO0FBQ2pELGNBQU0sTUFBTSxRQUFRLENBQUMsTUFBTSxjQUFjO0FBQ3ZDLGNBQUksY0FBYyxNQUFNLGNBQWMsSUFBSyxZQUFZLENBQUU7QUFBQSxRQUMzRCxDQUFDO0FBQUEsTUFDSCxDQUFDO0FBRUQsaUJBQVcsUUFBUSxDQUFDLE9BQU8sVUFBVTtBQUNuQyxjQUFNLGNBQWMsaUJBQWlCLEtBQUs7QUFFMUMsWUFBSSxjQUFjLE1BQU0sTUFBTSxRQUFRLFdBQVc7QUFDakQsY0FBTSxNQUFNLFFBQVEsQ0FBQyxNQUFNLGNBQWM7QUFDdkMsY0FBSSxjQUFjLE1BQU0sY0FBYyxJQUFLLFlBQVksQ0FBRTtBQUFBLFFBQzNELENBQUM7QUFBQSxNQUNILENBQUM7QUFFRCxtQkFBYSxRQUFRLENBQUMsT0FBTyxVQUFVO0FBQ3JDLGNBQU0sS0FBSyxLQUFLLGNBQWMsS0FBSyxDQUFDO0FBQUEsTUFDdEMsQ0FBQztBQUVELHVCQUFpQixRQUFRLHFCQUFtQjtBQUMxQyxxQ0FBNkIsS0FBSyxLQUFLLGVBQWU7QUFBQSxNQUN4RCxDQUFDO0FBRUQsNEJBQXNCLFFBQVEsQ0FBQyxnQkFBZ0IsVUFBVTtBQUN2RCx1QkFBZSxLQUFLLEtBQUssa0JBQWtCLEtBQUssRUFBRSxNQUFNO0FBQUEsTUFDMUQsQ0FBQztBQUVELHFCQUFlLFFBQVEsQ0FBQyxlQUFlLFVBQVU7QUFDL0Msc0JBQWMsS0FBSyxLQUFLLFFBQVEsS0FBSyxFQUFFLFVBQVUsTUFBTTtBQUFBLE1BQ3pELENBQUM7QUFFRCxVQUFJLGNBQWMsYUFBYSxTQUFTO0FBQ3hDLFlBQU0sV0FBVztBQUFBLFFBQ2YsQ0FBQyxrQkFBa0IsR0FBRyxZQUFZO0FBQUEsUUFDbEMsQ0FBQyxxQkFBcUIsUUFBUSxRQUFRLGVBQWU7QUFBQSxRQUNyRCxDQUFDLG1CQUFtQixNQUFNLFFBQVEsYUFBYTtBQUFBLFFBQy9DLENBQUMsb0JBQW9CLE9BQU8sUUFBUSxjQUFjO0FBQUEsTUFDcEQ7QUFDQSxVQUFJLE9BQU8sU0FBUyxHQUFHO0FBQ3JCLGlCQUFTLEtBQUssQ0FBQyxvQkFBb0IsT0FBTyxRQUFRLGNBQWMsQ0FBQztBQUFBLE1BQ25FO0FBQ0EsZUFBUyxLQUFLLENBQUMscUJBQXFCLFFBQVEsUUFBUSxlQUFlLENBQUM7QUFDcEUsZUFBUyxLQUFLLENBQUMscUJBQXFCLFFBQVEsUUFBUSxlQUFlLENBQUM7QUFDcEUscUJBQWUsUUFBUSxDQUFDLEtBQUssVUFBVTtBQUNyQyxpQkFBUyxLQUFLLENBQUMsMEJBQTBCLElBQUksTUFBTSxRQUFRLHFCQUFxQixLQUFLLENBQUMsQ0FBQztBQUFBLE1BQ3pGLENBQUM7QUFDRCxvQkFBYyxRQUFRLGNBQVk7QUFDaEMsaUJBQVMsS0FBSyxDQUFDLGdCQUFnQixHQUFHLFNBQVMsTUFBTSxDQUFDO0FBQUEsTUFDcEQsQ0FBQztBQUNELDRCQUFzQixRQUFRLFNBQU87QUFDbkMsaUJBQVMsS0FBSyxDQUFDLGlDQUFpQyxHQUFHLElBQUksTUFBTSxDQUFDO0FBQUEsTUFDaEUsQ0FBQztBQUNELFVBQUksaUJBQWlCLEdBQUc7QUFDdEIsaUJBQVMsS0FBSyxDQUFDLGdCQUFnQixnQkFBZ0IsaUJBQWlCLE9BQU8sZ0JBQWdCLEVBQUUsQ0FBQyxDQUFDLENBQUM7QUFBQSxNQUM5RjtBQUNBLGVBQVMsS0FBSyxDQUFDLHVCQUF1QixRQUFRLFFBQVEsY0FBYyxDQUFDLENBQUMsQ0FBQztBQUN2RSx1QkFBaUIsUUFBUSxxQkFBbUI7QUFDMUMsaUJBQVMsS0FBSyxDQUFDLHNCQUFzQixHQUFHLGVBQWUsQ0FBQztBQUFBLE1BQzFELENBQUM7QUFDRCx3QkFBa0IsUUFBUSxnQkFBYztBQUN0QyxpQkFBUyxLQUFLLENBQUMsc0JBQXNCLEdBQUcsV0FBVyxNQUFNLENBQUM7QUFBQSxNQUM1RCxDQUFDO0FBQ0QsY0FBUSxRQUFRLFdBQVM7QUFDdkIsaUJBQVMsS0FBSyxDQUFDLHNCQUFzQixHQUFHLE1BQU0sVUFBVSxNQUFNLENBQUM7QUFBQSxNQUNqRSxDQUFDO0FBQ0QsZUFBUyxLQUFLLENBQUMsZUFBZSxHQUFHLFNBQVMsQ0FBQztBQUMzQyxlQUFTLFFBQVEsQ0FBQyxNQUFNLFVBQVU7QUFDaEMsY0FBTSxDQUFDLE1BQU0sTUFBTUEsT0FBTSxJQUFJO0FBRTdCLGNBQU0sYUFBYSxZQUFZLElBQUssUUFBUTtBQUM1QyxZQUFJLGNBQWMsTUFBTSxVQUFVO0FBQ2xDLFlBQUksY0FBYyxNQUFNLGFBQWEsQ0FBQztBQUN0QyxZQUFJLGNBQWNBLFNBQVEsYUFBYSxDQUFDO0FBQUEsTUFDMUMsQ0FBQztBQUVELFlBQU0sT0FBTyxJQUFJLFNBQVMsTUFBTTtBQUNoQyxXQUFLLE9BQU8sSUFBSSxNQUFNLGtCQUFrQixhQUFhLENBQUM7QUFDdEQsTUFBQUQsUUFBTyxLQUFLLEtBQUssVUFBVSxDQUFDLEVBQUUsS0FBSyxLQUFLLGVBQWU7QUFFdkQsVUFBSSxjQUFjLFFBQVEsS0FBSyxlQUFlLEdBQUcsY0FBYztBQUUvRCxhQUFPO0FBQUEsSUFDVDtBQUFBLEVBQ0Y7QUFFQSxXQUFTLGNBQWUsT0FBTztBQUM3QixVQUFNLEVBQUUsZ0JBQWdCLG9CQUFvQixlQUFlLElBQUksTUFBTTtBQUVyRSxVQUFNLG1CQUFtQjtBQUV6QixXQUFPQSxRQUFPLEtBQUs7QUFBQSxNQUNqQjtBQUFBLElBQ0YsRUFDRyxPQUFPLGNBQWMsZUFBZSxNQUFNLENBQUMsRUFDM0MsT0FBTyxjQUFjLG1CQUFtQixNQUFNLENBQUMsRUFDL0MsT0FBTyxjQUFjLGVBQWUsTUFBTSxDQUFDLEVBQzNDLE9BQU8sZUFBZSxPQUFPLENBQUMsUUFBUSxDQUFDLFdBQVcsV0FBVyxNQUFNO0FBQ2xFLGFBQU8sT0FDSixPQUFPLGNBQWMsU0FBUyxDQUFDLEVBQy9CLE9BQU8sY0FBYyxXQUFXLENBQUM7QUFBQSxJQUN0QyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQ0wsT0FBTyxtQkFBbUIsT0FBTyxDQUFDLFFBQVEsQ0FBQyxXQUFXLGFBQWEsRUFBRSxVQUFVLE1BQU07QUFDcEYsYUFBTyxPQUNKLE9BQU8sY0FBYyxTQUFTLENBQUMsRUFDL0IsT0FBTyxjQUFjLFdBQVcsQ0FBQyxFQUNqQyxPQUFPLGNBQWMsY0FBYyxDQUFDLENBQUM7QUFBQSxJQUMxQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQ0wsT0FBTyxlQUFlLE9BQU8sQ0FBQyxRQUFRLENBQUMsV0FBVyxXQUFXLE1BQU07QUFDbEUsWUFBTSxhQUFhO0FBQ25CLGFBQU8sT0FDSixPQUFPLGNBQWMsU0FBUyxDQUFDLEVBQy9CLE9BQU8sY0FBYyxXQUFXLENBQUMsRUFDakMsT0FBTyxDQUFDLFVBQVUsQ0FBQztBQUFBLElBQ3hCLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUFBLEVBQ1g7QUFFQSxXQUFTLHFCQUFzQixZQUFZO0FBQ3pDLFVBQU0sRUFBRSxZQUFZLElBQUk7QUFFeEIsV0FBT0EsUUFBTztBQUFBLE1BQUs7QUFBQSxRQUNqQjtBQUFBLE1BQ0YsRUFDRyxPQUFPLGNBQWMsV0FBVyxJQUFJLENBQUMsRUFDckMsT0FBTyxDQUFDLENBQUMsQ0FBQyxFQUNWLE9BQU8sY0FBYyxXQUFXLEtBQUssQ0FBQyxFQUN0QyxPQUFPLENBQUMsYUFBYSxZQUFZLE1BQU0sQ0FBQyxFQUN4QyxPQUFPLFlBQVksT0FBTyxDQUFDLFFBQVEsU0FBUztBQUMzQyxlQUFPLEtBQUssWUFBWSxJQUFJO0FBQzVCLGVBQU87QUFBQSxNQUNULEdBQUcsQ0FBQyxDQUFDLENBQUM7QUFBQSxJQUNSO0FBQUEsRUFDRjtBQUVBLFdBQVMsYUFBYyxTQUFTO0FBQzlCLFVBQU0sVUFBVSxvQkFBSSxJQUFJO0FBQ3hCLFVBQU0sUUFBUSxvQkFBSSxJQUFJO0FBQ3RCLFVBQU0sU0FBUyxDQUFDO0FBQ2hCLFVBQU0sU0FBUyxDQUFDO0FBQ2hCLFVBQU0sVUFBVSxDQUFDO0FBQ2pCLFVBQU0sb0JBQW9CLENBQUM7QUFDM0IsVUFBTSxtQkFBbUIsb0JBQUksSUFBSTtBQUNqQyxVQUFNLG9CQUFvQixvQkFBSSxJQUFJO0FBRWxDLFlBQVEsUUFBUSxXQUFTO0FBQ3ZCLFlBQU0sRUFBRSxNQUFNLFlBQVksZUFBZSxJQUFJO0FBRTdDLGNBQVEsSUFBSSxNQUFNO0FBRWxCLGNBQVEsSUFBSSxJQUFJO0FBQ2hCLFlBQU0sSUFBSSxJQUFJO0FBRWQsY0FBUSxJQUFJLFVBQVU7QUFDdEIsWUFBTSxJQUFJLFVBQVU7QUFFcEIsY0FBUSxJQUFJLGNBQWM7QUFFMUIsWUFBTSxXQUFXLFFBQVEsV0FBUztBQUNoQyxnQkFBUSxJQUFJLEtBQUs7QUFDakIsY0FBTSxJQUFJLEtBQUs7QUFBQSxNQUNqQixDQUFDO0FBRUQsWUFBTSxPQUFPLFFBQVEsV0FBUztBQUM1QixjQUFNLENBQUMsV0FBVyxTQUFTLElBQUk7QUFDL0IsZ0JBQVEsSUFBSSxTQUFTO0FBQ3JCLGdCQUFRLElBQUksU0FBUztBQUNyQixjQUFNLElBQUksU0FBUztBQUNuQixlQUFPLEtBQUssQ0FBQyxNQUFNLE1BQU0sV0FBVyxTQUFTLENBQUM7QUFBQSxNQUNoRCxDQUFDO0FBRUQsVUFBSSxDQUFDLE1BQU0sUUFBUSxLQUFLLENBQUMsQ0FBQyxVQUFVLE1BQU0sZUFBZSxRQUFRLEdBQUc7QUFDbEUsY0FBTSxRQUFRLFFBQVEsQ0FBQyxVQUFVLEtBQUssQ0FBQyxDQUFDLENBQUM7QUFDekMseUJBQWlCLElBQUksSUFBSTtBQUFBLE1BQzNCO0FBRUEsWUFBTSxRQUFRLFFBQVEsWUFBVTtBQUM5QixjQUFNLENBQUMsWUFBWSxTQUFTLFVBQVUsY0FBYyxDQUFDLEdBQUcsV0FBVyxJQUFJO0FBRXZFLGdCQUFRLElBQUksVUFBVTtBQUV0QixjQUFNLFVBQVUsU0FBUyxTQUFTLFFBQVE7QUFFMUMsWUFBSSxxQkFBcUI7QUFDekIsWUFBSSxZQUFZLFNBQVMsR0FBRztBQUMxQixnQkFBTSxrQkFBa0IsWUFBWSxNQUFNO0FBQzFDLDBCQUFnQixLQUFLO0FBRXJCLCtCQUFxQixnQkFBZ0IsS0FBSyxHQUFHO0FBRTdDLGNBQUksbUJBQW1CLGtCQUFrQixrQkFBa0I7QUFDM0QsY0FBSSxxQkFBcUIsUUFBVztBQUNsQywrQkFBbUI7QUFBQSxjQUNqQixJQUFJO0FBQUEsY0FDSixPQUFPO0FBQUEsWUFDVDtBQUNBLDhCQUFrQixrQkFBa0IsSUFBSTtBQUFBLFVBQzFDO0FBRUEsa0JBQVEsSUFBSSwyQkFBMkI7QUFDdkMsZ0JBQU0sSUFBSSwyQkFBMkI7QUFFckMsc0JBQVksUUFBUSxVQUFRO0FBQzFCLG9CQUFRLElBQUksSUFBSTtBQUNoQixrQkFBTSxJQUFJLElBQUk7QUFBQSxVQUNoQixDQUFDO0FBRUQsa0JBQVEsSUFBSSxPQUFPO0FBQUEsUUFDckI7QUFFQSxnQkFBUSxLQUFLLENBQUMsTUFBTSxNQUFNLFNBQVMsWUFBWSxvQkFBb0IsV0FBVyxDQUFDO0FBRS9FLFlBQUksZUFBZSxVQUFVO0FBQzNCLDRCQUFrQixJQUFJLE9BQU8sTUFBTSxPQUFPO0FBQzFDLGdCQUFNLHFCQUFxQixhQUFhLE1BQU07QUFDOUMsY0FBSSxpQkFBaUIsSUFBSSxJQUFJLEtBQUssQ0FBQyxrQkFBa0IsSUFBSSxrQkFBa0IsR0FBRztBQUM1RSxvQkFBUSxLQUFLLENBQUMsWUFBWSxTQUFTLFlBQVksTUFBTSxDQUFDLENBQUM7QUFDdkQsOEJBQWtCLElBQUksa0JBQWtCO0FBQUEsVUFDMUM7QUFBQSxRQUNGO0FBQUEsTUFDRixDQUFDO0FBQUEsSUFDSCxDQUFDO0FBRUQsYUFBUyxTQUFVLFNBQVMsVUFBVTtBQUNwQyxZQUFNLFlBQVksQ0FBQyxPQUFPLEVBQUUsT0FBTyxRQUFRO0FBRTNDLFlBQU0sS0FBSyxVQUFVLEtBQUssR0FBRztBQUM3QixVQUFJLE9BQU8sRUFBRSxNQUFNLFFBQVc7QUFDNUIsZUFBTztBQUFBLE1BQ1Q7QUFFQSxjQUFRLElBQUksT0FBTztBQUNuQixZQUFNLElBQUksT0FBTztBQUNqQixlQUFTLFFBQVEsYUFBVztBQUMxQixnQkFBUSxJQUFJLE9BQU87QUFDbkIsY0FBTSxJQUFJLE9BQU87QUFBQSxNQUNuQixDQUFDO0FBRUQsWUFBTSxTQUFTLFVBQVUsSUFBSSxZQUFZLEVBQUUsS0FBSyxFQUFFO0FBQ2xELGNBQVEsSUFBSSxNQUFNO0FBRWxCLGFBQU8sRUFBRSxJQUFJLENBQUMsSUFBSSxRQUFRLFNBQVMsUUFBUTtBQUUzQyxhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sY0FBYyxNQUFNLEtBQUssT0FBTztBQUN0QyxnQkFBWSxLQUFLO0FBQ2pCLFVBQU0sZ0JBQWdCLFlBQVksT0FBTyxDQUFDLFFBQVEsUUFBUSxVQUFVO0FBQ2xFLGFBQU8sTUFBTSxJQUFJO0FBQ2pCLGFBQU87QUFBQSxJQUNULEdBQUcsQ0FBQyxDQUFDO0FBRUwsVUFBTSxZQUFZLE1BQU0sS0FBSyxLQUFLLEVBQUUsSUFBSSxVQUFRLGNBQWMsSUFBSSxDQUFDO0FBQ25FLGNBQVUsS0FBSyxjQUFjO0FBQzdCLFVBQU0sY0FBYyxVQUFVLE9BQU8sQ0FBQyxRQUFRLGFBQWEsY0FBYztBQUN2RSxhQUFPLFlBQVksV0FBVyxDQUFDLElBQUk7QUFDbkMsYUFBTztBQUFBLElBQ1QsR0FBRyxDQUFDLENBQUM7QUFFTCxVQUFNLG9CQUFvQixPQUFPLEtBQUssTUFBTSxFQUFFLElBQUksUUFBTSxPQUFPLEVBQUUsQ0FBQztBQUNsRSxzQkFBa0IsS0FBSyxpQkFBaUI7QUFDeEMsVUFBTSxhQUFhLENBQUM7QUFDcEIsVUFBTSxhQUFhLGtCQUFrQixJQUFJLFVBQVE7QUFDL0MsWUFBTSxDQUFDLEVBQUUsUUFBUSxTQUFTLFFBQVEsSUFBSTtBQUV0QyxVQUFJO0FBQ0osVUFBSSxTQUFTLFNBQVMsR0FBRztBQUN2QixjQUFNLGNBQWMsU0FBUyxLQUFLLEdBQUc7QUFDckMsaUJBQVMsV0FBVyxXQUFXO0FBQy9CLFlBQUksV0FBVyxRQUFXO0FBQ3hCLG1CQUFTO0FBQUEsWUFDUCxPQUFPLFNBQVMsSUFBSSxVQUFRLFlBQVksSUFBSSxDQUFDO0FBQUEsWUFDN0MsUUFBUTtBQUFBLFVBQ1Y7QUFDQSxxQkFBVyxXQUFXLElBQUk7QUFBQSxRQUM1QjtBQUFBLE1BQ0YsT0FBTztBQUNMLGlCQUFTO0FBQUEsTUFDWDtBQUVBLGFBQU87QUFBQSxRQUNMLGNBQWMsTUFBTTtBQUFBLFFBQ3BCLFlBQVksT0FBTztBQUFBLFFBQ25CO0FBQUEsTUFDRjtBQUFBLElBQ0YsQ0FBQztBQUNELFVBQU0sZUFBZSxrQkFBa0IsT0FBTyxDQUFDLFFBQVEsTUFBTSxVQUFVO0FBQ3JFLFlBQU0sQ0FBQyxFQUFFLElBQUk7QUFDYixhQUFPLEVBQUUsSUFBSTtBQUNiLGFBQU87QUFBQSxJQUNULEdBQUcsQ0FBQyxDQUFDO0FBQ0wsVUFBTSxpQkFBaUIsT0FBTyxLQUFLLFVBQVUsRUFBRSxJQUFJLFFBQU0sV0FBVyxFQUFFLENBQUM7QUFFdkUsVUFBTSxhQUFhLE9BQU8sSUFBSSxXQUFTO0FBQ3JDLFlBQU0sQ0FBQyxPQUFPLFdBQVcsU0FBUyxJQUFJO0FBQ3RDLGFBQU87QUFBQSxRQUNMLFlBQVksS0FBSztBQUFBLFFBQ2pCLFlBQVksU0FBUztBQUFBLFFBQ3JCLGNBQWMsU0FBUztBQUFBLE1BQ3pCO0FBQUEsSUFDRixDQUFDO0FBQ0QsZUFBVyxLQUFLLGlCQUFpQjtBQUVqQyxVQUFNLGNBQWMsUUFBUSxJQUFJLFlBQVU7QUFDeEMsWUFBTSxDQUFDLE9BQU8sU0FBUyxNQUFNLGVBQWUsV0FBVyxJQUFJO0FBQzNELGFBQU87QUFBQSxRQUNMLFlBQVksS0FBSztBQUFBLFFBQ2pCLGFBQWEsT0FBTztBQUFBLFFBQ3BCLGNBQWMsSUFBSTtBQUFBLFFBQ2xCO0FBQUEsUUFDQTtBQUFBLE1BQ0Y7QUFBQSxJQUNGLENBQUM7QUFDRCxnQkFBWSxLQUFLLGtCQUFrQjtBQUVuQyxVQUFNLHdCQUF3QixPQUFPLEtBQUssaUJBQWlCLEVBQ3hELElBQUksUUFBTSxrQkFBa0IsRUFBRSxDQUFDLEVBQy9CLElBQUksVUFBUTtBQUNYLGFBQU87QUFBQSxRQUNMLElBQUksS0FBSztBQUFBLFFBQ1QsTUFBTSxZQUFZLDJCQUEyQjtBQUFBLFFBQzdDLE9BQU8sY0FBYztBQUFBLFFBQ3JCLGFBQWEsS0FBSyxNQUFNLElBQUksVUFBUSxZQUFZLElBQUksQ0FBQztBQUFBLFFBQ3JELFFBQVE7QUFBQSxNQUNWO0FBQUEsSUFDRixDQUFDO0FBRUgsVUFBTSxxQkFBcUIsc0JBQXNCLElBQUksVUFBUTtBQUMzRCxhQUFPO0FBQUEsUUFDTCxJQUFJLEtBQUs7QUFBQSxRQUNULE9BQU8sQ0FBQyxJQUFJO0FBQUEsUUFDWixRQUFRO0FBQUEsTUFDVjtBQUFBLElBQ0YsQ0FBQztBQUNELFVBQU0seUJBQXlCLG1CQUFtQixPQUFPLENBQUMsUUFBUSxNQUFNLFVBQVU7QUFDaEYsYUFBTyxLQUFLLEVBQUUsSUFBSTtBQUNsQixhQUFPO0FBQUEsSUFDVCxHQUFHLENBQUMsQ0FBQztBQUVMLFVBQU0saUJBQWlCLENBQUM7QUFDeEIsVUFBTSx3QkFBd0IsQ0FBQztBQUMvQixVQUFNLGFBQWEsUUFBUSxJQUFJLFdBQVM7QUFDdEMsWUFBTSxhQUFhLFlBQVksTUFBTSxJQUFJO0FBQ3pDLFlBQU0sY0FBY0Y7QUFDcEIsWUFBTSxrQkFBa0IsWUFBWSxNQUFNLFVBQVU7QUFFcEQsVUFBSTtBQUNKLFlBQU0sU0FBUyxNQUFNLFdBQVcsSUFBSSxVQUFRLFlBQVksSUFBSSxDQUFDO0FBQzdELFVBQUksT0FBTyxTQUFTLEdBQUc7QUFDckIsZUFBTyxLQUFLLGNBQWM7QUFDMUIsY0FBTSxXQUFXLE9BQU8sS0FBSyxHQUFHO0FBQ2hDLG9CQUFZLGVBQWUsUUFBUTtBQUNuQyxZQUFJLGNBQWMsUUFBVztBQUMzQixzQkFBWTtBQUFBLFlBQ1YsT0FBTztBQUFBLFlBQ1AsUUFBUTtBQUFBLFVBQ1Y7QUFDQSx5QkFBZSxRQUFRLElBQUk7QUFBQSxRQUM3QjtBQUFBLE1BQ0YsT0FBTztBQUNMLG9CQUFZO0FBQUEsTUFDZDtBQUVBLFlBQU0sa0JBQWtCLGNBQWMsTUFBTSxjQUFjO0FBRTFELFlBQU0sZUFBZSxZQUFZLE9BQU8sQ0FBQyxRQUFRLFFBQVEsVUFBVTtBQUNqRSxjQUFNLENBQUMsUUFBUSxZQUFZLE1BQU0sZUFBZU0sWUFBVyxJQUFJO0FBQy9ELFlBQUksV0FBVyxZQUFZO0FBQ3pCLGlCQUFPLEtBQUssQ0FBQyxPQUFPLE1BQU0sZUFBZSxZQUFZQSxZQUFXLENBQUM7QUFBQSxRQUNuRTtBQUNBLGVBQU87QUFBQSxNQUNULEdBQUcsQ0FBQyxDQUFDO0FBRUwsVUFBSSx1QkFBdUI7QUFDM0IsWUFBTSxvQkFBb0IsYUFDdkIsT0FBTyxDQUFDLENBQUMsRUFBRSxFQUFFLGFBQWEsTUFBTTtBQUMvQixlQUFPLGtCQUFrQjtBQUFBLE1BQzNCLENBQUMsRUFDQSxJQUFJLENBQUMsQ0FBQyxPQUFPLEVBQUUsYUFBYSxNQUFNO0FBQ2pDLGVBQU8sQ0FBQyxPQUFPLG1CQUFtQix1QkFBdUIsYUFBYSxDQUFDLENBQUM7QUFBQSxNQUMxRSxDQUFDO0FBQ0gsVUFBSSxrQkFBa0IsU0FBUyxHQUFHO0FBQ2hDLCtCQUF1QjtBQUFBLFVBQ3JCLFNBQVM7QUFBQSxVQUNULFFBQVE7QUFBQSxRQUNWO0FBQ0EsOEJBQXNCLEtBQUssb0JBQW9CO0FBQUEsTUFDakQ7QUFFQSxZQUFNLGlCQUFpQixXQUFXLE9BQU8sQ0FBQyxRQUFRLE9BQU8sVUFBVTtBQUNqRSxjQUFNLENBQUMsTUFBTSxJQUFJO0FBQ2pCLFlBQUksV0FBVyxZQUFZO0FBQ3pCLGlCQUFPLEtBQUssQ0FBQyxRQUFRLElBQUksSUFBSSxHQUFHTixXQUFVLENBQUM7QUFBQSxRQUM3QztBQUNBLGVBQU87QUFBQSxNQUNULEdBQUcsQ0FBQyxDQUFDO0FBRUwsWUFBTSx1QkFBdUIsY0FBYyxRQUFRO0FBQ25ELFlBQU0scUJBQXFCLGFBQ3hCLE9BQU8sQ0FBQyxDQUFDLEVBQUUsSUFBSSxNQUFNLFNBQVMsb0JBQW9CLEVBQ2xELElBQUksQ0FBQyxDQUFDLE9BQU8sRUFBRSxFQUFFLFVBQVUsTUFBTTtBQUNoQyxZQUFJLGlCQUFpQixJQUFJLE1BQU0sSUFBSSxHQUFHO0FBQ3BDLGNBQUksbUJBQW1CO0FBQ3ZCLGdCQUFNLGlCQUFpQixZQUFZO0FBQ25DLG1CQUFTLElBQUksR0FBRyxNQUFNLGdCQUFnQixLQUFLO0FBQ3pDLGtCQUFNLENBQUMsYUFBYSxhQUFhLFVBQVUsSUFBSSxZQUFZLENBQUM7QUFDNUQsZ0JBQUksZ0JBQWdCLG1CQUFtQixlQUFlLHdCQUF3QixnQkFBZ0IsWUFBWTtBQUN4RyxpQ0FBbUI7QUFDbkI7QUFBQSxZQUNGO0FBQUEsVUFDRjtBQUNBLGlCQUFPLENBQUMsT0FBT0EsY0FBYSxpQkFBaUIsZ0JBQWdCO0FBQUEsUUFDL0QsT0FBTztBQUNMLGlCQUFPLENBQUMsT0FBT0EsY0FBYSxrQkFBa0JDLGFBQVksRUFBRTtBQUFBLFFBQzlEO0FBQUEsTUFDRixDQUFDO0FBQ0gsWUFBTSxpQkFBaUIsMkJBQTJCLGFBQy9DLE9BQU8sQ0FBQyxDQUFDLEVBQUUsSUFBSSxNQUFNLFNBQVMsb0JBQW9CLEVBQ2xELElBQUksQ0FBQyxDQUFDLE9BQU8sRUFBRSxFQUFFLEVBQUVLLFlBQVcsTUFBTTtBQUNuQyxlQUFPLENBQUMsT0FBT0EsZUFBY04sY0FBYUMsV0FBVTtBQUFBLE1BQ3RELENBQUMsQ0FBQztBQUVKLFlBQU0sWUFBWTtBQUFBLFFBQ2hCO0FBQUEsUUFDQTtBQUFBLFFBQ0E7QUFBQSxRQUNBLFFBQVE7QUFBQSxNQUNWO0FBRUEsYUFBTztBQUFBLFFBQ0wsT0FBTztBQUFBLFFBQ1A7QUFBQSxRQUNBO0FBQUEsUUFDQSxZQUFZO0FBQUEsUUFDWjtBQUFBLFFBQ0E7QUFBQSxRQUNBO0FBQUEsTUFDRjtBQUFBLElBQ0YsQ0FBQztBQUNELFVBQU0saUJBQWlCLE9BQU8sS0FBSyxjQUFjLEVBQUUsSUFBSSxRQUFNLGVBQWUsRUFBRSxDQUFDO0FBRS9FLFdBQU87QUFBQSxNQUNMLFNBQVM7QUFBQSxNQUNULFlBQVk7QUFBQSxNQUNaLFFBQVE7QUFBQSxNQUNSLFNBQVM7QUFBQSxNQUNULFFBQVE7QUFBQSxNQUNSLFlBQVk7QUFBQSxNQUNaO0FBQUEsTUFDQSxnQkFBZ0I7QUFBQSxNQUNoQixtQkFBbUI7QUFBQSxNQUNuQixPQUFPO0FBQUEsTUFDUCxTQUFTO0FBQUEsSUFDWDtBQUFBLEVBQ0Y7QUFFQSxXQUFTLDJCQUE0QixPQUFPO0FBQzFDLFFBQUksZ0JBQWdCO0FBQ3BCLFdBQU8sTUFBTSxJQUFJLENBQUMsQ0FBQyxPQUFPLFdBQVcsR0FBRyxpQkFBaUI7QUFDdkQsVUFBSTtBQUNKLFVBQUksaUJBQWlCLEdBQUc7QUFDdEIsaUJBQVMsQ0FBQyxPQUFPLFdBQVc7QUFBQSxNQUM5QixPQUFPO0FBQ0wsaUJBQVMsQ0FBQyxRQUFRLGVBQWUsV0FBVztBQUFBLE1BQzlDO0FBQ0Esc0JBQWdCO0FBQ2hCLGFBQU87QUFBQSxJQUNULENBQUM7QUFBQSxFQUNIO0FBRUEsV0FBUyxlQUFnQixHQUFHLEdBQUc7QUFDN0IsV0FBTyxJQUFJO0FBQUEsRUFDYjtBQUVBLFdBQVMsa0JBQW1CLEdBQUcsR0FBRztBQUNoQyxVQUFNLENBQUMsRUFBRSxFQUFFLFVBQVUsU0FBUyxJQUFJO0FBQ2xDLFVBQU0sQ0FBQyxFQUFFLEVBQUUsVUFBVSxTQUFTLElBQUk7QUFFbEMsUUFBSSxXQUFXLFVBQVU7QUFDdkIsYUFBTztBQUFBLElBQ1Q7QUFDQSxRQUFJLFdBQVcsVUFBVTtBQUN2QixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sZUFBZSxVQUFVLEtBQUssR0FBRztBQUN2QyxVQUFNLGVBQWUsVUFBVSxLQUFLLEdBQUc7QUFDdkMsUUFBSSxlQUFlLGNBQWM7QUFDL0IsYUFBTztBQUFBLElBQ1Q7QUFDQSxRQUFJLGVBQWUsY0FBYztBQUMvQixhQUFPO0FBQUEsSUFDVDtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsV0FBUyxrQkFBbUIsR0FBRyxHQUFHO0FBQ2hDLFVBQU0sQ0FBQyxRQUFRLE9BQU8sS0FBSyxJQUFJO0FBQy9CLFVBQU0sQ0FBQyxRQUFRLE9BQU8sS0FBSyxJQUFJO0FBRS9CLFFBQUksV0FBVyxRQUFRO0FBQ3JCLGFBQU8sU0FBUztBQUFBLElBQ2xCO0FBRUEsUUFBSSxVQUFVLE9BQU87QUFDbkIsYUFBTyxRQUFRO0FBQUEsSUFDakI7QUFFQSxXQUFPLFFBQVE7QUFBQSxFQUNqQjtBQUVBLFdBQVMsbUJBQW9CLEdBQUcsR0FBRztBQUNqQyxVQUFNLENBQUMsUUFBUSxRQUFRLEtBQUssSUFBSTtBQUNoQyxVQUFNLENBQUMsUUFBUSxRQUFRLEtBQUssSUFBSTtBQUVoQyxRQUFJLFdBQVcsUUFBUTtBQUNyQixhQUFPLFNBQVM7QUFBQSxJQUNsQjtBQUVBLFFBQUksVUFBVSxPQUFPO0FBQ25CLGFBQU8sUUFBUTtBQUFBLElBQ2pCO0FBRUEsV0FBTyxTQUFTO0FBQUEsRUFDbEI7QUFFQSxXQUFTLGFBQWMsTUFBTTtBQUMzQixVQUFNLGlCQUFpQixLQUFLLENBQUM7QUFDN0IsV0FBUSxtQkFBbUIsT0FBTyxtQkFBbUIsTUFBTyxNQUFNO0FBQUEsRUFDcEU7QUFFQSxXQUFTLGNBQWUsT0FBTztBQUM3QixRQUFJLFNBQVMsS0FBTTtBQUNqQixhQUFPLENBQUMsS0FBSztBQUFBLElBQ2Y7QUFFQSxVQUFNLFNBQVMsQ0FBQztBQUNoQixRQUFJLG1CQUFtQjtBQUV2QixPQUFHO0FBQ0QsVUFBSU0sU0FBUSxRQUFRO0FBRXBCLGdCQUFVO0FBQ1YseUJBQW1CLFVBQVU7QUFFN0IsVUFBSSxrQkFBa0I7QUFDcEIsUUFBQUEsVUFBUztBQUFBLE1BQ1g7QUFFQSxhQUFPLEtBQUtBLE1BQUs7QUFBQSxJQUNuQixTQUFTO0FBRVQsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLE1BQU8sT0FBTyxXQUFXO0FBQ2hDLFVBQU0saUJBQWlCLFFBQVE7QUFDL0IsUUFBSSxtQkFBbUIsR0FBRztBQUN4QixhQUFPO0FBQUEsSUFDVDtBQUNBLFdBQU8sUUFBUSxZQUFZO0FBQUEsRUFDN0I7QUFFQSxXQUFTLFFBQVMsUUFBUSxRQUFRO0FBQ2hDLFFBQUksSUFBSTtBQUNSLFFBQUksSUFBSTtBQUVSLFVBQU0sU0FBUyxPQUFPO0FBQ3RCLGFBQVMsSUFBSSxRQUFRLElBQUksUUFBUSxLQUFLO0FBQ3BDLFdBQUssSUFBSSxPQUFPLENBQUMsS0FBSztBQUN0QixXQUFLLElBQUksS0FBSztBQUFBLElBQ2hCO0FBRUEsWUFBUyxLQUFLLEtBQU0sT0FBTztBQUFBLEVBQzdCO0FBRUEsTUFBTyxnQkFBUTs7O0FDbDZCZixNQUFNLGtCQUFrQjtBQUV4QixNQUFJLEtBQUs7QUFFVCxNQUFJLHdCQUF3QjtBQUVyQixXQUFTLFdBQVksS0FBSztBQUMvQixTQUFLO0FBQUEsRUFDUDtBQU1PLFdBQVMsUUFBUyxVQUFVLE9BQU8sU0FBUztBQUNqRCxRQUFJLE9BQU8saUJBQWlCLFFBQVE7QUFDcEMsUUFBSSxTQUFTLE1BQU07QUFDakIsVUFBSSxTQUFTLFFBQVEsR0FBRyxNQUFNLEdBQUc7QUFDL0IsZUFBTyxhQUFhLFVBQVUsT0FBTyxPQUFPO0FBQUEsTUFDOUMsT0FBTztBQUNMLFlBQUksU0FBUyxDQUFDLE1BQU0sT0FBTyxTQUFTLFNBQVMsU0FBUyxDQUFDLE1BQU0sS0FBSztBQUNoRSxxQkFBVyxTQUFTLFVBQVUsR0FBRyxTQUFTLFNBQVMsQ0FBQztBQUFBLFFBQ3REO0FBQ0EsZUFBTyxjQUFjLFVBQVUsT0FBTyxPQUFPO0FBQUEsTUFDL0M7QUFBQSxJQUNGO0FBRUEsV0FBTyxPQUFPLE9BQU8sRUFBRSxXQUFXLFNBQVMsR0FBRyxJQUFJO0FBQUEsRUFDcEQ7QUFFQSxNQUFNLGlCQUFpQjtBQUFBLElBQ3JCLFNBQVM7QUFBQSxNQUNQLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sT0FBTyxNQUFNO0FBQUEsTUFDdEI7QUFBQSxNQUNBLFFBQVMsR0FBRztBQUNWLGVBQU8sQ0FBQyxDQUFDO0FBQUEsTUFDWDtBQUFBLE1BQ0EsTUFBTyxHQUFHO0FBQ1IsZUFBTyxJQUFJLElBQUk7QUFBQSxNQUNqQjtBQUFBLE1BQ0EsS0FBTSxTQUFTO0FBQ2IsZUFBTyxRQUFRLE9BQU87QUFBQSxNQUN4QjtBQUFBLE1BQ0EsTUFBTyxTQUFTLE9BQU87QUFDckIsZ0JBQVEsUUFBUSxLQUFLO0FBQUEsTUFDdkI7QUFBQSxNQUNBLFdBQVk7QUFDVixlQUFPLEtBQUs7QUFBQSxNQUNkO0FBQUEsSUFDRjtBQUFBLElBQ0EsTUFBTTtBQUFBLE1BQ0osTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sVUFBVTtBQUFBLE1BQ1YsY0FBYztBQUFBLE1BQ2QsYUFBYyxHQUFHO0FBQ2YsZUFBTyxPQUFPLFVBQVUsQ0FBQyxLQUFLLEtBQUssUUFBUSxLQUFLO0FBQUEsTUFDbEQ7QUFBQSxNQUNBLFNBQVM7QUFBQSxNQUNULE9BQU87QUFBQSxNQUNQLEtBQU0sU0FBUztBQUNiLGVBQU8sUUFBUSxPQUFPO0FBQUEsTUFDeEI7QUFBQSxNQUNBLE1BQU8sU0FBUyxPQUFPO0FBQ3JCLGdCQUFRLFFBQVEsS0FBSztBQUFBLE1BQ3ZCO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLE1BQU07QUFBQSxNQUNKLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLFlBQUksT0FBTyxNQUFNLFlBQVksRUFBRSxXQUFXLEdBQUc7QUFDM0MsaUJBQU87QUFBQSxRQUNUO0FBRUEsY0FBTUMsUUFBTyxFQUFFLFdBQVcsQ0FBQztBQUMzQixlQUFPQSxTQUFRLEtBQUtBLFNBQVE7QUFBQSxNQUM5QjtBQUFBLE1BQ0EsUUFBUyxHQUFHO0FBQ1YsZUFBTyxPQUFPLGFBQWEsQ0FBQztBQUFBLE1BQzlCO0FBQUEsTUFDQSxNQUFPLEdBQUc7QUFDUixlQUFPLEVBQUUsV0FBVyxDQUFDO0FBQUEsTUFDdkI7QUFBQSxNQUNBLEtBQU0sU0FBUztBQUNiLGVBQU8sUUFBUSxRQUFRO0FBQUEsTUFDekI7QUFBQSxNQUNBLE1BQU8sU0FBUyxPQUFPO0FBQ3JCLGdCQUFRLFNBQVMsS0FBSztBQUFBLE1BQ3hCO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sT0FBTyxVQUFVLENBQUMsS0FBSyxLQUFLLFVBQVUsS0FBSztBQUFBLE1BQ3BEO0FBQUEsTUFDQSxTQUFTO0FBQUEsTUFDVCxPQUFPO0FBQUEsTUFDUCxLQUFNLFNBQVM7QUFDYixlQUFPLFFBQVEsUUFBUTtBQUFBLE1BQ3pCO0FBQUEsTUFDQSxNQUFPLFNBQVMsT0FBTztBQUNyQixnQkFBUSxTQUFTLEtBQUs7QUFBQSxNQUN4QjtBQUFBLE1BQ0EsV0FBWTtBQUNWLGVBQU8sS0FBSztBQUFBLE1BQ2Q7QUFBQSxJQUNGO0FBQUEsSUFDQSxLQUFLO0FBQUEsTUFDSCxNQUFNO0FBQUEsTUFDTixNQUFNO0FBQUEsTUFDTixNQUFNO0FBQUEsTUFDTixVQUFVO0FBQUEsTUFDVixjQUFjO0FBQUEsTUFDZCxhQUFjLEdBQUc7QUFDZixlQUFPLE9BQU8sVUFBVSxDQUFDLEtBQUssS0FBSyxlQUFlLEtBQUs7QUFBQSxNQUN6RDtBQUFBLE1BQ0EsU0FBUztBQUFBLE1BQ1QsT0FBTztBQUFBLE1BQ1AsS0FBTSxTQUFTO0FBQ2IsZUFBTyxRQUFRLFFBQVE7QUFBQSxNQUN6QjtBQUFBLE1BQ0EsTUFBTyxTQUFTLE9BQU87QUFDckIsZ0JBQVEsU0FBUyxLQUFLO0FBQUEsTUFDeEI7QUFBQSxNQUNBLFdBQVk7QUFDVixlQUFPLEtBQUs7QUFBQSxNQUNkO0FBQUEsSUFDRjtBQUFBLElBQ0EsTUFBTTtBQUFBLE1BQ0osTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sVUFBVTtBQUFBLE1BQ1YsY0FBYztBQUFBLE1BQ2QsYUFBYyxHQUFHO0FBQ2YsZUFBTyxPQUFPLE1BQU0sWUFBWSxhQUFhO0FBQUEsTUFDL0M7QUFBQSxNQUNBLFNBQVM7QUFBQSxNQUNULE9BQU87QUFBQSxNQUNQLEtBQU0sU0FBUztBQUNiLGVBQU8sUUFBUSxRQUFRO0FBQUEsTUFDekI7QUFBQSxNQUNBLE1BQU8sU0FBUyxPQUFPO0FBQ3JCLGdCQUFRLFNBQVMsS0FBSztBQUFBLE1BQ3hCO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sT0FBTyxNQUFNO0FBQUEsTUFDdEI7QUFBQSxNQUNBLFNBQVM7QUFBQSxNQUNULE9BQU87QUFBQSxNQUNQLEtBQU0sU0FBUztBQUNiLGVBQU8sUUFBUSxVQUFVO0FBQUEsTUFDM0I7QUFBQSxNQUNBLE1BQU8sU0FBUyxPQUFPO0FBQ3JCLGdCQUFRLFdBQVcsS0FBSztBQUFBLE1BQzFCO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sT0FBTyxNQUFNO0FBQUEsTUFDdEI7QUFBQSxNQUNBLFNBQVM7QUFBQSxNQUNULE9BQU87QUFBQSxNQUNQLEtBQU0sU0FBUztBQUNiLGVBQU8sUUFBUSxXQUFXO0FBQUEsTUFDNUI7QUFBQSxNQUNBLE1BQU8sU0FBUyxPQUFPO0FBQ3JCLGdCQUFRLFlBQVksS0FBSztBQUFBLE1BQzNCO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLE1BQU07QUFBQSxNQUNKLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLFVBQVU7QUFBQSxNQUNWLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sTUFBTTtBQUFBLE1BQ2Y7QUFBQSxNQUNBLFVBQVc7QUFDVCxlQUFPO0FBQUEsTUFDVDtBQUFBLE1BQ0EsUUFBUztBQUNQLGVBQU87QUFBQSxNQUNUO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxFQUNGO0FBRUEsTUFBTSxzQkFBc0IsSUFBSSxJQUFJLE9BQU8sT0FBTyxjQUFjLEVBQUUsSUFBSSxPQUFLLEVBQUUsSUFBSSxDQUFDO0FBRTNFLFdBQVMsaUJBQWtCLE1BQU07QUFDdEMsVUFBTSxTQUFTLGVBQWUsSUFBSTtBQUNsQyxXQUFRLFdBQVcsU0FBYSxTQUFTO0FBQUEsRUFDM0M7QUFFQSxXQUFTLGNBQWUsVUFBVSxPQUFPLFNBQVM7QUFDaEQsVUFBTSxRQUFRLFFBQVEsT0FBTyxRQUFRLElBQUksQ0FBQztBQUUxQyxRQUFJLE9BQU8sTUFBTSxRQUFRO0FBQ3pCLFFBQUksU0FBUyxRQUFXO0FBQ3RCLGFBQU87QUFBQSxJQUNUO0FBRUEsUUFBSSxhQUFhLG9CQUFvQjtBQUNuQyxhQUFPLHNCQUFzQixPQUFPO0FBQUEsSUFDdEMsT0FBTztBQUNMLGFBQU8saUJBQWlCLFVBQVUsT0FBTyxPQUFPO0FBQUEsSUFDbEQ7QUFFQSxVQUFNLFFBQVEsSUFBSTtBQUVsQixXQUFPO0FBQUEsRUFDVDtBQUVBLFdBQVMsc0JBQXVCLFNBQVM7QUFDdkMsV0FBTztBQUFBLE1BQ0wsTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sTUFBTTtBQUFBLE1BQ04sY0FBYztBQUFBLE1BQ2QsYUFBYyxHQUFHO0FBQ2YsWUFBSSxNQUFNLE1BQU07QUFDZCxpQkFBTztBQUFBLFFBQ1Q7QUFFQSxZQUFJLE1BQU0sUUFBVztBQUNuQixpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFlBQVksRUFBRSxjQUFjO0FBQ2xDLFlBQUksV0FBVztBQUNiLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGVBQU8sT0FBTyxNQUFNO0FBQUEsTUFDdEI7QUFBQSxNQUNBLFFBQVMsR0FBRyxLQUFLLE9BQU87QUFDdEIsWUFBSSxFQUFFLE9BQU8sR0FBRztBQUNkLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGVBQU8sUUFBUSxLQUFLLEdBQUcsUUFBUSxJQUFJLGtCQUFrQixHQUFHLEtBQUs7QUFBQSxNQUMvRDtBQUFBLE1BQ0EsTUFBTyxHQUFHLEtBQUs7QUFDYixZQUFJLE1BQU0sTUFBTTtBQUNkLGlCQUFPO0FBQUEsUUFDVDtBQUVBLFlBQUksT0FBTyxNQUFNLFVBQVU7QUFDekIsaUJBQU8sSUFBSSxhQUFhLENBQUM7QUFBQSxRQUMzQjtBQUVBLGVBQU8sRUFBRTtBQUFBLE1BQ1g7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUVBLFdBQVMsaUJBQWtCLFVBQVUsT0FBTyxTQUFTO0FBQ25ELFFBQUksY0FBYztBQUNsQixRQUFJLG1CQUFtQjtBQUN2QixRQUFJLHdCQUF3QjtBQUU1QixhQUFTLFdBQVk7QUFDbkIsVUFBSSxnQkFBZ0IsTUFBTTtBQUN4QixzQkFBYyxRQUFRLElBQUksUUFBUSxFQUFFO0FBQUEsTUFDdEM7QUFDQSxhQUFPO0FBQUEsSUFDVDtBQUVBLGFBQVMsV0FBWSxHQUFHO0FBQ3RCLFlBQU0sUUFBUSxTQUFTO0FBRXZCLFVBQUkscUJBQXFCLE1BQU07QUFDN0IsMkJBQW1CLE1BQU0sV0FBVyxTQUFTLGtCQUFrQjtBQUFBLE1BQ2pFO0FBRUEsYUFBTyxpQkFBaUIsS0FBSyxPQUFPLENBQUM7QUFBQSxJQUN2QztBQUVBLGFBQVMsc0JBQXVCO0FBQzlCLFVBQUksMEJBQTBCLE1BQU07QUFDbEMsY0FBTSxJQUFJLFNBQVM7QUFDbkIsZ0NBQXdCLFFBQVEsSUFBSSxrQkFBa0IsRUFBRSxNQUFNLGlCQUFpQixDQUFDO0FBQUEsTUFDbEY7QUFDQSxhQUFPO0FBQUEsSUFDVDtBQUVBLFdBQU87QUFBQSxNQUNMLE1BQU0sc0JBQXNCLFFBQVE7QUFBQSxNQUNwQyxNQUFNO0FBQUEsTUFDTixNQUFNO0FBQUEsTUFDTixjQUFjO0FBQUEsTUFDZCxhQUFjLEdBQUc7QUFDZixZQUFJLE1BQU0sTUFBTTtBQUNkLGlCQUFPO0FBQUEsUUFDVDtBQUVBLFlBQUksTUFBTSxRQUFXO0FBQ25CLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGNBQU0sWUFBWSxFQUFFLGNBQWM7QUFDbEMsWUFBSSxXQUFXO0FBQ2IsaUJBQU8sV0FBVyxDQUFDO0FBQUEsUUFDckI7QUFFQSxlQUFPLE9BQU8sTUFBTSxZQUFZLG9CQUFvQjtBQUFBLE1BQ3REO0FBQUEsTUFDQSxRQUFTLEdBQUcsS0FBSyxPQUFPO0FBQ3RCLFlBQUksRUFBRSxPQUFPLEdBQUc7QUFDZCxpQkFBTztBQUFBLFFBQ1Q7QUFFQSxZQUFJLG9CQUFvQixLQUFLLE9BQU87QUFDbEMsaUJBQU8sSUFBSSxjQUFjLENBQUM7QUFBQSxRQUM1QjtBQUVBLGVBQU8sUUFBUSxLQUFLLEdBQUcsUUFBUSxJQUFJLFFBQVEsR0FBRyxLQUFLO0FBQUEsTUFDckQ7QUFBQSxNQUNBLE1BQU8sR0FBRyxLQUFLO0FBQ2IsWUFBSSxNQUFNLE1BQU07QUFDZCxpQkFBTztBQUFBLFFBQ1Q7QUFFQSxZQUFJLE9BQU8sTUFBTSxVQUFVO0FBQ3pCLGlCQUFPLElBQUksYUFBYSxDQUFDO0FBQUEsUUFDM0I7QUFFQSxlQUFPLEVBQUU7QUFBQSxNQUNYO0FBQUEsTUFDQSxXQUFZO0FBQ1YsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxFQUNGO0FBRUEsTUFBTSxzQkFBc0I7QUFBQSxJQUMxQixDQUFDLEtBQUssU0FBUztBQUFBLElBQ2YsQ0FBQyxLQUFLLE1BQU07QUFBQSxJQUNaLENBQUMsS0FBSyxNQUFNO0FBQUEsSUFDWixDQUFDLEtBQUssUUFBUTtBQUFBLElBQ2QsQ0FBQyxLQUFLLE9BQU87QUFBQSxJQUNiLENBQUMsS0FBSyxLQUFLO0FBQUEsSUFDWCxDQUFDLEtBQUssTUFBTTtBQUFBLElBQ1osQ0FBQyxLQUFLLE9BQU87QUFBQSxFQUNmLEVBQ0csT0FBTyxDQUFDLFFBQVEsQ0FBQyxRQUFRLElBQUksTUFBTTtBQUNsQyxXQUFPLE1BQU0sTUFBTSxJQUFJLHVCQUF1QixNQUFNLFFBQVEsSUFBSTtBQUNoRSxXQUFPO0FBQUEsRUFDVCxHQUFHLENBQUMsQ0FBQztBQUVQLFdBQVMsdUJBQXdCLFFBQVEsTUFBTTtBQUM3QyxVQUFNLFdBQVcsSUFBSTtBQUVyQixVQUFNLGFBQWEsWUFBWSxJQUFJO0FBQ25DLFVBQU0sT0FBTztBQUFBLE1BQ1gsVUFBVTtBQUFBLE1BQ1YsVUFBVSxTQUFTLFFBQVEsYUFBYSxPQUFPO0FBQUEsTUFDL0MsV0FBVyxTQUFTLFFBQVEsYUFBYSxhQUFhO0FBQUEsTUFDdEQsYUFBYSxTQUFTLFFBQVEsYUFBYSxlQUFlO0FBQUEsTUFDMUQsaUJBQWlCLFNBQVMsWUFBWSxhQUFhLGVBQWU7QUFBQSxJQUNwRTtBQUVBLFdBQU87QUFBQSxNQUNMLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLE1BQU07QUFBQSxNQUNOLGNBQWM7QUFBQSxNQUNkLGFBQWMsR0FBRztBQUNmLGVBQU8sMkJBQTJCLEdBQUcsSUFBSTtBQUFBLE1BQzNDO0FBQUEsTUFDQSxRQUFTLEdBQUcsS0FBSyxPQUFPO0FBQ3RCLGVBQU8sc0JBQXNCLEdBQUcsTUFBTSxLQUFLLEtBQUs7QUFBQSxNQUNsRDtBQUFBLE1BQ0EsTUFBTyxLQUFLLEtBQUs7QUFDZixlQUFPLG9CQUFvQixLQUFLLE1BQU0sR0FBRztBQUFBLE1BQzNDO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFTyxXQUFTLGFBQWMsVUFBVSxPQUFPLFNBQVM7QUFDdEQsVUFBTSxnQkFBZ0Isb0JBQW9CLFFBQVE7QUFDbEQsUUFBSSxrQkFBa0IsUUFBVztBQUMvQixhQUFPO0FBQUEsSUFDVDtBQUVBLFFBQUksU0FBUyxRQUFRLEdBQUcsTUFBTSxHQUFHO0FBQy9CLFlBQU0sSUFBSSxNQUFNLHVCQUF1QixRQUFRO0FBQUEsSUFDakQ7QUFFQSxRQUFJLGtCQUFrQixTQUFTLFVBQVUsQ0FBQztBQUMxQyxVQUFNLGNBQWMsUUFBUSxpQkFBaUIsT0FBTyxPQUFPO0FBRTNELFFBQUksb0JBQW9CO0FBQ3hCLFVBQU0sTUFBTSxnQkFBZ0I7QUFDNUIsV0FBTyxzQkFBc0IsT0FBTyxnQkFBZ0IsaUJBQWlCLE1BQU0sS0FBSztBQUM5RTtBQUFBLElBQ0Y7QUFDQSxzQkFBa0IsZ0JBQWdCLFVBQVUsaUJBQWlCO0FBRTdELFFBQUksZ0JBQWdCLENBQUMsTUFBTSxPQUFPLGdCQUFnQixnQkFBZ0IsU0FBUyxDQUFDLE1BQU0sS0FBSztBQUNyRix3QkFBa0IsZ0JBQWdCLFVBQVUsR0FBRyxnQkFBZ0IsU0FBUyxDQUFDO0FBQUEsSUFDM0U7QUFHQSxRQUFJLDBCQUEwQixnQkFBZ0IsUUFBUSxPQUFPLEdBQUc7QUFDaEUsUUFBSSxvQkFBb0IsSUFBSSx1QkFBdUIsR0FBRztBQUNwRCxnQ0FBMEIsSUFBSSxPQUFPLGlCQUFpQixJQUFJO0FBQUEsSUFDNUQsT0FBTztBQUNMLGdDQUEwQixJQUFJLE9BQU8saUJBQWlCLElBQUksTUFBTSwwQkFBMEI7QUFBQSxJQUM1RjtBQUNBLFVBQU0sbUJBQW1CLE1BQU07QUFDL0Isc0JBQWtCLElBQUksT0FBTyxpQkFBaUIsSUFBSTtBQUVsRCxXQUFPO0FBQUEsTUFDTCxNQUFNLFNBQVMsUUFBUSxPQUFPLEdBQUc7QUFBQSxNQUNqQyxNQUFNO0FBQUEsTUFDTixNQUFNO0FBQUEsTUFDTixjQUFjO0FBQUEsTUFDZCxhQUFjLEdBQUc7QUFDZixZQUFJLE1BQU0sTUFBTTtBQUNkLGlCQUFPO0FBQUEsUUFDVDtBQUVBLFlBQUksT0FBTyxNQUFNLFlBQVksRUFBRSxXQUFXLFFBQVc7QUFDbkQsaUJBQU87QUFBQSxRQUNUO0FBRUEsZUFBTyxFQUFFLE1BQU0sU0FBVSxTQUFTO0FBQ2hDLGlCQUFPLFlBQVksYUFBYSxPQUFPO0FBQUEsUUFDekMsQ0FBQztBQUFBLE1BQ0g7QUFBQSxNQUNBLFFBQVMsS0FBSyxLQUFLLE9BQU87QUFDeEIsWUFBSSxJQUFJLE9BQU8sR0FBRztBQUNoQixpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFNBQVMsQ0FBQztBQUVoQixjQUFNLElBQUksSUFBSSxlQUFlLEdBQUc7QUFDaEMsaUJBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLGdCQUFNLFVBQVUsSUFBSSxzQkFBc0IsS0FBSyxDQUFDO0FBQ2hELGNBQUk7QUFFRixtQkFBTyxLQUFLLFlBQVksUUFBUSxTQUFTLEdBQUcsQ0FBQztBQUFBLFVBQy9DLFVBQUU7QUFDQSxnQkFBSSxlQUFlLE9BQU87QUFBQSxVQUM1QjtBQUFBLFFBQ0Y7QUFFQSxZQUFJO0FBQ0YsaUJBQU8sS0FBSyxRQUFRLEtBQUssS0FBSyxRQUFRLElBQUksZ0JBQWdCLEdBQUcsS0FBSztBQUFBLFFBQ3BFLFNBQVMsR0FBRztBQUVWLGtCQUFRLElBQUkseUJBQXlCLEVBQUUsWUFBWSxRQUFRLElBQUksZUFBZSxFQUFFLE9BQU8sQ0FBQztBQUN4RixpQkFBTyxLQUFLLFFBQVEsS0FBSyxLQUFLLFFBQVEsSUFBSSxnQkFBZ0IsR0FBRyxLQUFLO0FBQUEsUUFDcEU7QUFFQSxlQUFPLFdBQVc7QUFFbEIsZUFBTztBQUFBLE1BQ1Q7QUFBQSxNQUNBLE1BQU8sVUFBVSxLQUFLO0FBQ3BCLFlBQUksYUFBYSxNQUFNO0FBQ3JCLGlCQUFPO0FBQUEsUUFDVDtBQUVBLFlBQUksRUFBRSxvQkFBb0IsUUFBUTtBQUNoQyxnQkFBTSxJQUFJLE1BQU0sbUJBQW1CO0FBQUEsUUFDckM7QUFFQSxjQUFNLFVBQVUsU0FBUztBQUN6QixZQUFJLFlBQVksUUFBVztBQUN6QixpQkFBTyxRQUFRO0FBQUEsUUFDakI7QUFFQSxjQUFNLElBQUksU0FBUztBQUVuQixjQUFNLFdBQVcsUUFBUSxJQUFJLGVBQWU7QUFDNUMsY0FBTSxjQUFjLFNBQVMsbUJBQW1CLEdBQUc7QUFDbkQsWUFBSTtBQUNGLGdCQUFNLFNBQVMsSUFBSSxlQUFlLEdBQUcsWUFBWSxPQUFPLElBQUk7QUFDNUQsY0FBSSx3QkFBd0I7QUFFNUIsbUJBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLGtCQUFNLFNBQVMsWUFBWSxNQUFNLFNBQVMsQ0FBQyxHQUFHLEdBQUc7QUFDakQsZ0JBQUk7QUFDRixrQkFBSSxzQkFBc0IsUUFBUSxHQUFHLE1BQU07QUFBQSxZQUM3QyxVQUFFO0FBQ0Esa0JBQUksWUFBWSxTQUFTLGFBQWEsSUFBSSxpQkFBaUIsTUFBTSxNQUFNLGlCQUFpQjtBQUN0RixvQkFBSSxlQUFlLE1BQU07QUFBQSxjQUMzQjtBQUFBLFlBQ0Y7QUFDQSxnQkFBSSx3QkFBd0I7QUFBQSxVQUM5QjtBQUVBLGlCQUFPO0FBQUEsUUFDVCxVQUFFO0FBQ0Esc0JBQVksTUFBTSxHQUFHO0FBQUEsUUFDdkI7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLHFCQUFzQjtBQUM3QixVQUFNLElBQUksS0FBSztBQUVmLGFBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLFlBQU0sTUFBTSxLQUFLLENBQUM7QUFFbEIsVUFBSSxRQUFRLE1BQU07QUFDaEI7QUFBQSxNQUNGO0FBRUEsWUFBTSxVQUFVLElBQUk7QUFDcEIsVUFBSSxZQUFZLFFBQVc7QUFDekI7QUFBQSxNQUNGO0FBQ0EsY0FBUSxLQUFLLEdBQUc7QUFBQSxJQUNsQjtBQUVBLFNBQUssR0FBRyxTQUFTO0FBQUEsRUFDbkI7QUFFQSxXQUFTLHNCQUF1QixLQUFLLE1BQU0sS0FBSyxPQUFPO0FBQ3JELFFBQUksSUFBSSxPQUFPLEdBQUc7QUFDaEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLE9BQU8saUJBQWlCLEtBQUssUUFBUTtBQUMzQyxVQUFNLFNBQVMsSUFBSSxlQUFlLEdBQUc7QUFFckMsV0FBTyxJQUFJLGVBQWUsS0FBSyxNQUFNLE1BQU0sUUFBUSxLQUFLLEtBQUs7QUFBQSxFQUMvRDtBQUVBLFdBQVMsb0JBQXFCLEtBQUssTUFBTSxLQUFLO0FBQzVDLFFBQUksUUFBUSxNQUFNO0FBQ2hCLGFBQU87QUFBQSxJQUNUO0FBRUEsVUFBTSxTQUFTLElBQUk7QUFDbkIsUUFBSSxXQUFXLFFBQVc7QUFDeEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxVQUFNLFNBQVMsSUFBSTtBQUNuQixVQUFNLE9BQU8saUJBQWlCLEtBQUssUUFBUTtBQUMzQyxVQUFNLFNBQVMsS0FBSyxTQUFTLEtBQUssS0FBSyxNQUFNO0FBQzdDLFFBQUksT0FBTyxPQUFPLEdBQUc7QUFDbkIsWUFBTSxJQUFJLE1BQU0sMkJBQTJCO0FBQUEsSUFDN0M7QUFFQSxRQUFJLFNBQVMsR0FBRztBQUNkLFlBQU0sY0FBYyxLQUFLO0FBQ3pCLFlBQU0sZUFBZSxLQUFLO0FBQzFCLFlBQU0sc0JBQXNCLEtBQUs7QUFFakMsWUFBTSxXQUFXLE9BQU8sTUFBTSxTQUFTLEtBQUssUUFBUTtBQUNwRCxlQUFTLFFBQVEsR0FBRyxVQUFVLFFBQVEsU0FBUztBQUM3QyxxQkFBYSxTQUFTLElBQUksUUFBUSxXQUFXLEdBQUcsb0JBQW9CLElBQUksS0FBSyxDQUFDLENBQUM7QUFBQSxNQUNqRjtBQUNBLFdBQUssVUFBVSxLQUFLLEtBQUssUUFBUSxHQUFHLFFBQVEsUUFBUTtBQUNwRCxVQUFJLHdCQUF3QjtBQUFBLElBQzlCO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLDJCQUE0QixPQUFPLFVBQVU7QUFDcEQsUUFBSSxVQUFVLE1BQU07QUFDbEIsYUFBTztBQUFBLElBQ1Q7QUFFQSxRQUFJLGlCQUFpQixnQkFBZ0I7QUFDbkMsYUFBTyxNQUFNLEdBQUcsYUFBYTtBQUFBLElBQy9CO0FBRUEsVUFBTSxjQUFjLE9BQU8sVUFBVSxZQUFZLE1BQU0sV0FBVztBQUNsRSxRQUFJLENBQUMsYUFBYTtBQUNoQixhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sY0FBYyxpQkFBaUIsUUFBUTtBQUM3QyxXQUFPLE1BQU0sVUFBVSxNQUFNLEtBQUssT0FBTyxhQUFXLFlBQVksYUFBYSxPQUFPLENBQUM7QUFBQSxFQUN2RjtBQUVBLFdBQVMsZUFBZ0IsUUFBUSxNQUFNLE1BQU0sUUFBUSxLQUFLLFFBQVEsTUFBTTtBQUN0RSxRQUFJLE9BQU87QUFDVCxZQUFNLElBQUksSUFBSSxhQUFhLE1BQU07QUFDakMsV0FBSyxLQUFLO0FBQ1YsV0FBSyxLQUFLLE9BQU8sU0FBUyxNQUFNLElBQUksR0FBRyxxQkFBcUIsQ0FBQyxDQUFDO0FBQUEsSUFDaEUsT0FBTztBQUNMLFdBQUssS0FBSztBQUNWLFdBQUssS0FBSztBQUFBLElBQ1o7QUFFQSxTQUFLLEtBQUs7QUFDVixTQUFLLEtBQUs7QUFFVixTQUFLLFNBQVM7QUFFZCxXQUFPLElBQUksTUFBTSxNQUFNLHFCQUFxQjtBQUFBLEVBQzlDO0FBRUEsMEJBQXdCO0FBQUEsSUFDdEIsSUFBSyxRQUFRLFVBQVU7QUFDckIsVUFBSSxZQUFZLFFBQVE7QUFDdEIsZUFBTztBQUFBLE1BQ1Q7QUFFQSxhQUFPLE9BQU8sY0FBYyxRQUFRLE1BQU07QUFBQSxJQUM1QztBQUFBLElBQ0EsSUFBSyxRQUFRLFVBQVUsVUFBVTtBQUMvQixZQUFNLFFBQVEsT0FBTyxjQUFjLFFBQVE7QUFDM0MsVUFBSSxVQUFVLE1BQU07QUFDbEIsZUFBTyxPQUFPLFFBQVE7QUFBQSxNQUN4QjtBQUVBLGFBQU8sT0FBTyxZQUFZLEtBQUs7QUFBQSxJQUNqQztBQUFBLElBQ0EsSUFBSyxRQUFRLFVBQVUsT0FBTyxVQUFVO0FBQ3RDLFlBQU0sUUFBUSxPQUFPLGNBQWMsUUFBUTtBQUMzQyxVQUFJLFVBQVUsTUFBTTtBQUNsQixlQUFPLFFBQVEsSUFBSTtBQUNuQixlQUFPO0FBQUEsTUFDVDtBQUVBLGFBQU8sYUFBYSxPQUFPLEtBQUs7QUFDaEMsYUFBTztBQUFBLElBQ1Q7QUFBQSxJQUNBLFFBQVMsUUFBUTtBQUNmLFlBQU0sT0FBTyxDQUFDO0FBRWQsWUFBTSxFQUFFLE9BQU8sSUFBSTtBQUNuQixlQUFTLElBQUksR0FBRyxNQUFNLFFBQVEsS0FBSztBQUNqQyxjQUFNLE1BQU0sRUFBRSxTQUFTO0FBQ3ZCLGFBQUssS0FBSyxHQUFHO0FBQUEsTUFDZjtBQUVBLFdBQUssS0FBSyxRQUFRO0FBRWxCLGFBQU87QUFBQSxJQUNUO0FBQUEsSUFDQSx5QkFBMEIsUUFBUSxVQUFVO0FBQzFDLFlBQU0sUUFBUSxPQUFPLGNBQWMsUUFBUTtBQUMzQyxVQUFJLFVBQVUsTUFBTTtBQUNsQixlQUFPO0FBQUEsVUFDTCxVQUFVO0FBQUEsVUFDVixjQUFjO0FBQUEsVUFDZCxZQUFZO0FBQUEsUUFDZDtBQUFBLE1BQ0Y7QUFFQSxhQUFPLE9BQU8seUJBQXlCLFFBQVEsUUFBUTtBQUFBLElBQ3pEO0FBQUEsRUFDRjtBQUVBLFNBQU8saUJBQWlCLGVBQWUsV0FBVztBQUFBLElBQ2hELFVBQVU7QUFBQSxNQUNSLFlBQVk7QUFBQSxNQUNaLFFBQVM7QUFDUCxjQUFNLE1BQU0sS0FBSztBQUNqQixZQUFJLFFBQVEsTUFBTTtBQUNoQixlQUFLLEtBQUs7QUFDVixpQkFBTyxXQUFXLEdBQUc7QUFBQSxRQUN2QjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixNQUFPLEtBQUs7QUFDVixlQUFPLElBQUksZUFBZSxLQUFLLElBQUksS0FBSyxJQUFJLEtBQUssSUFBSSxLQUFLLFFBQVEsR0FBRztBQUFBLE1BQ3ZFO0FBQUEsSUFDRjtBQUFBLElBQ0EsZUFBZTtBQUFBLE1BQ2IsTUFBTyxVQUFVO0FBQ2YsWUFBSSxPQUFPLGFBQWEsVUFBVTtBQUNoQyxpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFFBQVEsU0FBUyxRQUFRO0FBQy9CLFlBQUksTUFBTSxLQUFLLEtBQUssUUFBUSxLQUFLLFNBQVMsS0FBSyxRQUFRO0FBQ3JELGlCQUFPO0FBQUEsUUFDVDtBQUVBLGVBQU87QUFBQSxNQUNUO0FBQUEsSUFDRjtBQUFBLElBQ0EsYUFBYTtBQUFBLE1BQ1gsTUFBTyxPQUFPO0FBQ1osZUFBTyxLQUFLLGFBQWEsY0FBWTtBQUNuQyxnQkFBTSxPQUFPLEtBQUs7QUFDbEIsaUJBQU8sS0FBSyxRQUFRLEtBQUssS0FBSyxTQUFTLElBQUksUUFBUSxLQUFLLFFBQVEsQ0FBQyxDQUFDO0FBQUEsUUFDcEUsQ0FBQztBQUFBLE1BQ0g7QUFBQSxJQUNGO0FBQUEsSUFDQSxjQUFjO0FBQUEsTUFDWixNQUFPLE9BQU8sT0FBTztBQUNuQixjQUFNLEVBQUUsSUFBSSxRQUFRLElBQUksTUFBTSxJQUFJLEtBQUssSUFBSTtBQUMzQyxjQUFNLE1BQU0sR0FBRyxPQUFPO0FBRXRCLGNBQU0sVUFBVSxPQUFPLE1BQU0sS0FBSyxRQUFRO0FBQzFDLGFBQUssTUFBTSxTQUFTLEtBQUssTUFBTSxLQUFLLENBQUM7QUFDckMsYUFBSyxVQUFVLEtBQUssS0FBSyxRQUFRLE9BQU8sR0FBRyxPQUFPO0FBQUEsTUFDcEQ7QUFBQSxJQUNGO0FBQUEsSUFDQSxjQUFjO0FBQUEsTUFDWixNQUFPLFNBQVM7QUFDZCxjQUFNLEVBQUUsSUFBSSxRQUFRLElBQUksS0FBSyxJQUFJO0FBQ2pDLGNBQU0sTUFBTSxHQUFHLE9BQU87QUFFdEIsY0FBTSxXQUFXLEtBQUssWUFBWSxLQUFLLEtBQUssTUFBTTtBQUNsRCxZQUFJLFNBQVMsT0FBTyxHQUFHO0FBQ3JCLGdCQUFNLElBQUksTUFBTSw4QkFBOEI7QUFBQSxRQUNoRDtBQUVBLFlBQUk7QUFDRixpQkFBTyxRQUFRLFFBQVE7QUFBQSxRQUN6QixVQUFFO0FBQ0EsZUFBSyxnQkFBZ0IsS0FBSyxLQUFLLFFBQVEsUUFBUTtBQUFBLFFBQ2pEO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLFFBQVM7QUFDUCxjQUFNLEVBQUUsUUFBUSxJQUFJLEtBQUssSUFBSTtBQUM3QixjQUFNLEVBQUUsVUFBVSxhQUFhLFNBQVMsTUFBQUMsTUFBSyxJQUFJO0FBRWpELGVBQU8sS0FBSyxhQUFhLGNBQVk7QUFDbkMsZ0JBQU0sU0FBUyxDQUFDO0FBQ2hCLG1CQUFTLElBQUksR0FBRyxNQUFNLFFBQVEsS0FBSztBQUNqQyxrQkFBTSxRQUFRLFFBQVFBLE1BQUssU0FBUyxJQUFJLElBQUksV0FBVyxDQUFDLENBQUM7QUFDekQsbUJBQU8sS0FBSyxLQUFLO0FBQUEsVUFDbkI7QUFDQSxpQkFBTztBQUFBLFFBQ1QsQ0FBQztBQUFBLE1BQ0g7QUFBQSxJQUNGO0FBQUEsSUFDQSxVQUFVO0FBQUEsTUFDUixRQUFTO0FBQ1AsZUFBTyxLQUFLLE9BQU8sRUFBRSxTQUFTO0FBQUEsTUFDaEM7QUFBQSxJQUNGO0FBQUEsRUFDRixDQUFDO0FBRU0sV0FBUyxzQkFBdUIsVUFBVTtBQUMvQyxXQUFPLE1BQU0sU0FBUyxRQUFRLE9BQU8sR0FBRyxJQUFJO0FBQUEsRUFDOUM7QUFFQSxXQUFTLFlBQWEsS0FBSztBQUN6QixXQUFPLElBQUksT0FBTyxDQUFDLEVBQUUsWUFBWSxJQUFJLElBQUksTUFBTSxDQUFDO0FBQUEsRUFDbEQ7QUFFQSxXQUFTLFNBQVUsT0FBTztBQUN4QixXQUFPO0FBQUEsRUFDVDs7O0FDcnhCQSxNQUFNQyxhQUFZO0FBQ2xCLE1BQUk7QUFBQSxJQUNGLHdCQUFBQztBQUFBLElBQ0EsbUJBQUFDO0FBQUEsRUFDRixJQUFJO0FBRUosTUFBTUMsY0FBYTtBQUVuQixNQUFNLHFCQUFxQjtBQUMzQixNQUFNLGdCQUFnQjtBQUN0QixNQUFNLGtCQUFrQjtBQUV4QixNQUFNLGVBQWU7QUFDckIsTUFBTSxpQkFBaUI7QUFFdkIsTUFBTSxtQkFBbUI7QUFDekIsTUFBTSxrQkFBa0I7QUFFeEIsTUFBTSxjQUFjLE9BQU8sYUFBYTtBQUV4QyxNQUFNLG9CQUFvQjtBQUUxQixNQUFNO0FBQUEsSUFDSjtBQUFBLElBQ0EsYUFBQUM7QUFBQSxFQUNGLElBQUk7QUFFSixNQUFNLGVBQWU7QUFBQSxJQUNuQixPQUFPO0FBQUEsSUFDUCxXQUFXLENBQUM7QUFBQSxJQUNaLFNBQVM7QUFBQSxJQUNULFNBQVM7QUFBQSxFQUNYO0FBRUEsTUFBSUMsTUFBSztBQUNULE1BQUksTUFBTTtBQUNWLE1BQUksVUFBVTtBQUVkLE1BQUksaUJBQWlCO0FBQ3JCLE1BQUksc0JBQXNCO0FBQzFCLE1BQUksa0JBQWtCO0FBQ3RCLE1BQUksbUJBQW1CO0FBRXZCLE1BQUkscUJBQXFCO0FBQ3pCLE1BQUkscUJBQXFCO0FBRXpCLE1BQU0saUJBQWlCLG9CQUFJLElBQUk7QUFFL0IsTUFBcUIsZUFBckIsTUFBcUIsY0FBYTtBQUFBLElBQ2hDLE9BQU8sWUFBYSxLQUFLLE1BQU07QUFDN0IsTUFBQUEsTUFBSztBQUNMLFlBQU07QUFDTixnQkFBVSxLQUFLLFdBQVc7QUFDMUIsVUFBSSxLQUFLLFdBQVcsT0FBTztBQUN6QixRQUFBSiwwQkFBeUJBO0FBQ3pCLFFBQUFDLHFCQUFvQkE7QUFBQSxNQUN0QjtBQUFBLElBQ0Y7QUFBQSxJQUVBLE9BQU8sWUFBYSxLQUFLO0FBQ3ZCLG1CQUFhLFVBQVUsUUFBUSxhQUFXO0FBQ3hDLGdCQUFRLFNBQVMsR0FBRztBQUFBLE1BQ3RCLENBQUM7QUFBQSxJQUNIO0FBQUEsSUFFQSxPQUFPLElBQUssYUFBYTtBQUN2QixZQUFNLFFBQVEsZ0JBQWdCO0FBRTlCLFlBQU0saUJBQWlCLE1BQU0sVUFBVSxDQUFDO0FBRXhDLFVBQUksZ0JBQWdCLE1BQU07QUFDeEIsZUFBTztBQUFBLE1BQ1Q7QUFFQSxZQUFNLFdBQVcsTUFBTSxRQUFRLElBQUksV0FBVztBQUM5QyxVQUFJLGFBQWEsTUFBTTtBQUNyQixjQUFNLFFBQVEsZUFBZSxLQUFLLFVBQVUsTUFBTSxPQUFPO0FBQ3pELGVBQU8sTUFBTSxVQUFVLE1BQU0sU0FBUyxDQUFDO0FBQUEsTUFDekM7QUFFQSxZQUFNLFVBQVUsSUFBSSxjQUFhO0FBQ2pDLGNBQVEsU0FBUztBQUNqQixjQUFRLFdBQVcsZUFBZTtBQUNsQyx3QkFBa0IsU0FBUyxXQUFXO0FBRXRDLGFBQU87QUFBQSxJQUNUO0FBQUEsSUFFQSxjQUFlO0FBQ2IsV0FBSyxXQUFXO0FBQ2hCLFdBQUssZUFBZSxvQkFBb0I7QUFFeEMsV0FBSyxpQkFBaUI7QUFBQSxRQUNwQixRQUFRO0FBQUEsUUFDUixRQUFRO0FBQUEsTUFDVjtBQUVBLFdBQUssV0FBVyxDQUFDO0FBQ2pCLFdBQUssZ0JBQWdCLElBQUksSUFBSSxJQUFJLGtCQUFrQjtBQUNuRCxXQUFLLGtCQUFrQixvQkFBSSxJQUFJO0FBQy9CLFdBQUssVUFBVTtBQUNmLFdBQUssU0FBUyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUM7QUFFckIsbUJBQWEsVUFBVSxLQUFLLElBQUk7QUFBQSxJQUNsQztBQUFBLElBRUEsU0FBVSxLQUFLO0FBQ2IsWUFBTSxLQUFLLEtBQUssZUFBZSxFQUFFLFFBQVEsWUFBVTtBQUNqRCxlQUFPLGlCQUFpQjtBQUFBLE1BQzFCLENBQUM7QUFDRCxXQUFLLGdCQUFnQixNQUFNO0FBRTNCLE1BQVEsb0JBQW9CO0FBRTVCLFdBQUssY0FBYyxRQUFRLEdBQUc7QUFDOUIsV0FBSyxXQUFXLENBQUM7QUFBQSxJQUNuQjtBQUFBLElBRUEsSUFBSSxTQUFVO0FBQ1osYUFBTyxLQUFLO0FBQUEsSUFDZDtBQUFBLElBRUEsSUFBSSxPQUFRLE9BQU87QUFDakIsWUFBTSxZQUFZLEtBQUssWUFBWSxRQUFRLFVBQVU7QUFFckQsV0FBSyxVQUFVO0FBRWYsVUFBSSxhQUFhLGFBQWEsVUFBVSxXQUFXLFNBQVMsYUFBYSxVQUFVLENBQUMsR0FBRztBQUNyRiwwQkFBa0IsTUFBTSxLQUFLO0FBQUEsTUFDL0I7QUFBQSxJQUNGO0FBQUEsSUFFQSxJQUFLLFdBQVcsVUFBVSxDQUFDLEdBQUc7QUFDNUIsWUFBTSxjQUFjLFFBQVEsVUFBVTtBQUV0QyxVQUFJLElBQUksY0FBYyxLQUFLLGNBQWMsU0FBUyxJQUFJO0FBQ3RELFVBQUksTUFBTSxRQUFXO0FBQ25CLFlBQUk7QUFDRixnQkFBTSxNQUFNRyxJQUFHLE9BQU87QUFFdEIsZ0JBQU0sRUFBRSxTQUFTLE9BQU8sSUFBSTtBQUM1QixnQkFBTSxpQkFBa0IsV0FBVyxPQUMvQiw0QkFBNEIsV0FBVyxRQUFRLEdBQUcsSUFDbEQsMkJBQTJCLFNBQVM7QUFFeEMsY0FBSSxLQUFLLE1BQU0sV0FBVyxnQkFBZ0IsR0FBRztBQUFBLFFBQy9DLFVBQUU7QUFDQSxjQUFJLGFBQWE7QUFDZixpQkFBSyxjQUFjLFdBQVcsQ0FBQztBQUFBLFVBQ2pDO0FBQUEsUUFDRjtBQUFBLE1BQ0Y7QUFFQSxhQUFPO0FBQUEsSUFDVDtBQUFBLElBRUEsY0FBZSxXQUFXO0FBQ3hCLFVBQUk7QUFDSixjQUFRLElBQUksS0FBSyxTQUFTLFNBQVMsT0FBTyxhQUFhO0FBQ3JELGVBQU8sTUFBTSxJQUFJO0FBQUEsTUFDbkI7QUFDQSxVQUFJLE1BQU0sUUFBVztBQUNuQixhQUFLLFNBQVMsU0FBUyxJQUFJO0FBQUEsTUFDN0I7QUFDQSxhQUFPO0FBQUEsSUFDVDtBQUFBLElBRUEsY0FBZSxXQUFXLEdBQUc7QUFDM0IsVUFBSSxNQUFNLFFBQVc7QUFDbkIsYUFBSyxTQUFTLFNBQVMsSUFBSTtBQUFBLE1BQzdCLE9BQU87QUFDTCxlQUFPLEtBQUssU0FBUyxTQUFTO0FBQUEsTUFDaEM7QUFBQSxJQUNGO0FBQUEsSUFFQSxNQUFPLE1BQU0sZ0JBQWdCLEtBQUs7QUFDaEMsWUFBTSxJQUFJLDRCQUE0QjtBQUN0QyxZQUFNLFFBQVEsT0FBTyxPQUFPLFFBQVEsV0FBVztBQUFBLFFBQzdDLENBQUMsT0FBTyxJQUFJLEdBQUcsQ0FBQyxHQUFHO0FBQUEsVUFDakIsT0FBTztBQUFBLFFBQ1Q7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFFBQ0Y7QUFBQSxRQUNBLENBQUMsT0FBTyxJQUFJLEdBQUcsQ0FBQyxHQUFHO0FBQUEsVUFDakIsT0FBTztBQUFBLFFBQ1Q7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFFBQ0Y7QUFBQSxRQUNBLENBQUMsT0FBTyxJQUFJLEdBQUcsQ0FBQyxHQUFHO0FBQUEsVUFDakIsT0FBTztBQUFBLFVBQ1AsVUFBVTtBQUFBLFFBQ1o7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFVBQ0EsSUFBSyxLQUFLO0FBQ1IsaUJBQUssT0FBTyxJQUFJLEdBQUcsQ0FBQyxJQUFJO0FBQUEsVUFDMUI7QUFBQSxRQUNGO0FBQUEsUUFDQSxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQUMsR0FBRztBQUFBLFVBQ2xCLFVBQVU7QUFBQSxRQUNaO0FBQUEsUUFDQSxLQUFLO0FBQUEsVUFDSCxNQUFPO0FBQ0wsbUJBQU8sS0FBSyxPQUFPLElBQUksSUFBSSxDQUFDO0FBQUEsVUFDOUI7QUFBQSxVQUNBLElBQUssS0FBSztBQUNSLGlCQUFLLE9BQU8sSUFBSSxJQUFJLENBQUMsSUFBSTtBQUFBLFVBQzNCO0FBQUEsUUFDRjtBQUFBLFFBQ0EsQ0FBQyxPQUFPLElBQUksR0FBRyxDQUFDLEdBQUc7QUFBQSxVQUNqQixPQUFPLENBQUMsSUFBSTtBQUFBLFFBQ2Q7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFFBQ0Y7QUFBQSxRQUNBLENBQUMsT0FBTyxJQUFJLEdBQUcsQ0FBQyxHQUFHO0FBQUEsVUFDakIsT0FBTyxvQkFBSSxJQUFJO0FBQUEsUUFDakI7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFFBQ0Y7QUFBQSxRQUNBLENBQUMsT0FBTyxJQUFJLEdBQUcsQ0FBQyxHQUFHO0FBQUEsVUFDakIsT0FBTztBQUFBLFVBQ1AsVUFBVTtBQUFBLFFBQ1o7QUFBQSxRQUNBLElBQUk7QUFBQSxVQUNGLE1BQU87QUFDTCxtQkFBTyxLQUFLLE9BQU8sSUFBSSxHQUFHLENBQUM7QUFBQSxVQUM3QjtBQUFBLFVBQ0EsSUFBSyxLQUFLO0FBQ1IsaUJBQUssT0FBTyxJQUFJLEdBQUcsQ0FBQyxJQUFJO0FBQUEsVUFDMUI7QUFBQSxRQUNGO0FBQUEsUUFDQSxDQUFDLE9BQU8sSUFBSSxLQUFLLENBQUMsR0FBRztBQUFBLFVBQ25CLE9BQU87QUFBQSxRQUNUO0FBQUEsUUFDQSxNQUFNO0FBQUEsVUFDSixNQUFPO0FBQ0wsbUJBQU8sS0FBSyxPQUFPLElBQUksS0FBSyxDQUFDO0FBQUEsVUFDL0I7QUFBQSxRQUNGO0FBQUEsUUFDQSxDQUFDLE9BQU8sSUFBSSxHQUFHLENBQUMsR0FBRztBQUFBLFVBQ2pCLE9BQU87QUFBQSxRQUNUO0FBQUEsUUFDQSxJQUFJO0FBQUEsVUFDRixNQUFPO0FBQ0wsbUJBQU8sS0FBSyxPQUFPLElBQUksR0FBRyxDQUFDO0FBQUEsVUFDN0I7QUFBQSxRQUNGO0FBQUEsTUFDRixDQUFDO0FBQ0QsUUFBRSxZQUFZO0FBRWQsWUFBTSxlQUFlLElBQUksRUFBRSxJQUFJO0FBQy9CLFlBQU0sT0FBTyxJQUFJLEdBQUcsQ0FBQyxJQUFJO0FBQ3pCLFlBQU0sS0FBSztBQUVYLFlBQU0sSUFBSSxhQUFhLG1CQUFtQixHQUFHO0FBQzdDLFVBQUk7QUFDRixjQUFNLGNBQWMsRUFBRTtBQUV0QixRQUFBSix3QkFBdUIsS0FBSyxXQUFXO0FBRXZDLGNBQU0sS0FBSyxNQUFXLE1BQU0sYUFBYSxHQUFHO0FBQUEsTUFDOUMsVUFBRTtBQUNBLFVBQUUsTUFBTSxHQUFHO0FBQUEsTUFDYjtBQUVBLGFBQU87QUFBQSxJQUNUO0FBQUEsSUFFQSxPQUFRLEtBQUs7QUFDWCxZQUFNLE1BQU1JLElBQUcsT0FBTztBQUN0QixhQUFPLElBQUksT0FBTyxHQUFHO0FBQUEsSUFDdkI7QUFBQSxJQUVBLEtBQU0sS0FBSyxPQUFPLE9BQU87QUFDdkIsWUFBTSxNQUFNQSxJQUFHLE9BQU87QUFFdEIsVUFBSSxTQUFTLElBQUk7QUFDakIsVUFBSSxXQUFXLFFBQVc7QUFDeEIsaUJBQVM7QUFBQSxNQUNYO0FBRUEsWUFBTSxJQUFJLE1BQU0sbUJBQW1CLEdBQUc7QUFDdEMsVUFBSTtBQUNGLGNBQU0sY0FBYyxJQUFJLGFBQWEsUUFBUSxFQUFFLEtBQUs7QUFDcEQsWUFBSSxDQUFDLGFBQWE7QUFDaEIsZ0JBQU0sSUFBSSxNQUFNLGNBQWMsSUFBSSxtQkFBbUIsTUFBTSxDQUFDLFNBQVMsTUFBTSxFQUFFLGtCQUFrQjtBQUFBLFFBQ2pHO0FBQUEsTUFDRixVQUFFO0FBQ0EsVUFBRSxNQUFNLEdBQUc7QUFBQSxNQUNiO0FBRUEsWUFBTSxJQUFJLE1BQU07QUFDaEIsYUFBTyxJQUFJLEVBQUUsUUFBUSxrQkFBa0IsS0FBSyxLQUFLO0FBQUEsSUFDbkQ7QUFBQSxJQUVBLEtBQU0sUUFBUSxPQUFPLEtBQUs7QUFDeEIsWUFBTSxJQUFJLE1BQU07QUFDaEIsWUFBTSxVQUFVLElBQUksRUFBRSxRQUFRLGtCQUFrQixLQUFLLEtBQUs7QUFDMUQsY0FBUSxLQUFLLE9BQU8sU0FBUyxTQUFTQSxJQUFHLHFCQUFxQixNQUFNLENBQUM7QUFDckUsYUFBTztBQUFBLElBQ1Q7QUFBQSxJQUVBLE1BQU8sTUFBTSxVQUFVO0FBQ3JCLFlBQU0sTUFBTUEsSUFBRyxPQUFPO0FBRXRCLFlBQU0sZ0JBQWdCLGlCQUFpQixJQUFJO0FBQzNDLFVBQUksa0JBQWtCLE1BQU07QUFDMUIsZUFBTyxjQUFjO0FBQUEsTUFDdkI7QUFDQSxZQUFNLFlBQVksYUFBYSxNQUFNLE1BQU0sT0FBTyxJQUFJO0FBRXRELFlBQU0sV0FBVyxVQUFVLE1BQU0sVUFBVSxHQUFHO0FBQzlDLGFBQU8sVUFBVSxRQUFRLFVBQVUsS0FBSyxJQUFJO0FBQUEsSUFDOUM7QUFBQSxJQUVBLGNBQWUsTUFBTTtBQUNuQixZQUFNLE1BQU1BLElBQUcsT0FBTztBQUV0QixZQUFNLGNBQWMsQ0FBQztBQUNyQixVQUFJO0FBQ0YsY0FBTSxRQUFRLEtBQUssSUFBSSxpQkFBaUI7QUFDeEMsY0FBTSxTQUFTLElBQUksc0JBQXNCO0FBQ3pDLGNBQU0sMkJBQTJCLElBQUksU0FBUyxXQUFXLENBQUMsQ0FBQztBQUUzRCxjQUFNLFlBQVksS0FBSztBQUN2QixjQUFNLGFBQWMsS0FBSyxjQUFjLENBQUM7QUFDeEMsY0FBTSxhQUFjLEtBQUssY0FBYyxLQUFLLElBQUksa0JBQWtCO0FBRWxFLGNBQU0sWUFBWSxDQUFDO0FBQ25CLGNBQU0sYUFBYSxDQUFDO0FBQ3BCLGNBQU0sVUFBVTtBQUFBLFVBQ2QsTUFBTSxzQkFBc0IsU0FBUztBQUFBLFVBQ3JDLGdCQUFnQixtQkFBbUIsU0FBUztBQUFBLFVBQzVDLFlBQVksc0JBQXNCLFdBQVcsRUFBRTtBQUFBLFVBQy9DLFlBQVksV0FBVyxJQUFJLFdBQVMsc0JBQXNCLE1BQU0sRUFBRSxDQUFDO0FBQUEsVUFDbkUsUUFBUTtBQUFBLFVBQ1IsU0FBUztBQUFBLFFBQ1g7QUFFQSxjQUFNLGdCQUFnQixXQUFXLE1BQU07QUFDdkMsbUJBQVcsUUFBUSxXQUFTO0FBQzFCLGdCQUFNLFVBQVUsTUFBTSxLQUFLLE1BQU0sTUFBTSxjQUFjLENBQUMsRUFDbkQsUUFBUSxlQUFhO0FBQ3BCLGtCQUFNLGdCQUFnQixLQUFLLEtBQUssV0FBVyxLQUFLLEVBQUUsaUJBQWlCO0FBQ25FLDBCQUFjLEtBQUssS0FBSyxJQUFJLGFBQWEsQ0FBQztBQUFBLFVBQzVDLENBQUM7QUFBQSxRQUNMLENBQUM7QUFFRCxjQUFNLFNBQVMsS0FBSyxVQUFVLENBQUM7QUFDL0IsZUFBTyxvQkFBb0IsTUFBTSxFQUFFLFFBQVEsVUFBUTtBQUNqRCxnQkFBTSxZQUFZLEtBQUssU0FBUyxPQUFPLElBQUksQ0FBQztBQUM1QyxvQkFBVSxLQUFLLENBQUMsTUFBTSxVQUFVLElBQUksQ0FBQztBQUFBLFFBQ3ZDLENBQUM7QUFFRCxjQUFNLGNBQWMsQ0FBQztBQUNyQixjQUFNLG1CQUFtQixDQUFDO0FBQzFCLHNCQUFjLFFBQVEsV0FBUztBQUM3QixnQkFBTSxJQUFJLE1BQU0sbUJBQW1CLEdBQUc7QUFDdEMsc0JBQVksS0FBSyxDQUFDO0FBQ2xCLGdCQUFNLGNBQWMsRUFBRTtBQUV0QixnQkFBTSxZQUNILE9BQU8sVUFBUTtBQUNkLG1CQUFPLE1BQU0sSUFBSSxFQUFFLGNBQWM7QUFBQSxVQUNuQyxDQUFDLEVBQ0EsUUFBUSxVQUFRO0FBQ2Ysa0JBQU0sU0FBUyxNQUFNLElBQUk7QUFFekIsa0JBQU0sWUFBWSxPQUFPO0FBQ3pCLGtCQUFNLGNBQWMsVUFBVSxJQUFJLGNBQVksZUFBZSxNQUFNLFNBQVMsWUFBWSxTQUFTLGFBQWEsQ0FBQztBQUUvRyx3QkFBWSxJQUFJLElBQUksQ0FBQyxRQUFRLGFBQWEsV0FBVztBQUNyRCxzQkFBVSxRQUFRLENBQUMsVUFBVSxVQUFVO0FBQ3JDLG9CQUFNLEtBQUssWUFBWSxLQUFLO0FBQzVCLCtCQUFpQixFQUFFLElBQUksQ0FBQyxVQUFVLFdBQVc7QUFBQSxZQUMvQyxDQUFDO0FBQUEsVUFDSCxDQUFDO0FBQUEsUUFDTCxDQUFDO0FBRUQsY0FBTSxVQUFVLEtBQUssV0FBVyxDQUFDO0FBQ2pDLGNBQU0sY0FBYyxPQUFPLEtBQUssT0FBTztBQUN2QyxjQUFNLGdCQUFnQixZQUFZLE9BQU8sQ0FBQyxRQUFRLFNBQVM7QUFDekQsZ0JBQU0sUUFBUSxRQUFRLElBQUk7QUFDMUIsZ0JBQU0sVUFBVyxTQUFTLFVBQVcsV0FBVztBQUNoRCxjQUFJLGlCQUFpQixPQUFPO0FBQzFCLG1CQUFPLEtBQUssR0FBRyxNQUFNLElBQUksT0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUM7QUFBQSxVQUM3QyxPQUFPO0FBQ0wsbUJBQU8sS0FBSyxDQUFDLFNBQVMsS0FBSyxDQUFDO0FBQUEsVUFDOUI7QUFDQSxpQkFBTztBQUFBLFFBQ1QsR0FBRyxDQUFDLENBQUM7QUFFTCxjQUFNLGNBQWMsQ0FBQztBQUVyQixzQkFBYyxRQUFRLENBQUMsQ0FBQyxNQUFNLFdBQVcsTUFBTTtBQUM3QyxjQUFJLE9BQU87QUFDWCxjQUFJO0FBQ0osY0FBSTtBQUNKLGNBQUksa0JBQWtCLENBQUM7QUFDdkIsY0FBSTtBQUVKLGNBQUksT0FBTyxnQkFBZ0IsWUFBWTtBQUNyQyxrQkFBTSxJQUFJLFlBQVksSUFBSTtBQUMxQixnQkFBSSxNQUFNLFVBQWEsTUFBTSxRQUFRLENBQUMsR0FBRztBQUN2QyxvQkFBTSxDQUFDLFlBQVksYUFBYSxnQkFBZ0IsSUFBSTtBQUVwRCxrQkFBSSxZQUFZLFNBQVMsR0FBRztBQUMxQixzQkFBTSxJQUFJLE1BQU0sb0NBQW9DLElBQUksZ0NBQWdDO0FBQUEsY0FDMUY7QUFDQSxxQkFBTyxpQkFBaUIsWUFBWSxDQUFDLENBQUM7QUFDdEMsb0JBQU0sV0FBVyxXQUFXLFVBQVUsQ0FBQztBQUV2QyxxQkFBTyxTQUFTO0FBQ2hCLDJCQUFhLFNBQVM7QUFDdEIsOEJBQWdCLFNBQVM7QUFDekIscUJBQU87QUFFUCxvQkFBTSxrQkFBa0IsSUFBSSxrQkFBa0Isa0JBQWtCLFNBQVMsUUFBUSxDQUFDO0FBQ2xGLG9CQUFNLGNBQWMseUJBQXlCLElBQUksUUFBUSxpQkFBaUIsT0FBTyx3QkFBd0I7QUFDekcsZ0NBQWtCLGNBQWMsS0FBSyxXQUFXLEVBQUUsSUFBSSxxQkFBcUI7QUFDM0Usa0JBQUksZUFBZSxXQUFXO0FBQzlCLGtCQUFJLGVBQWUsZUFBZTtBQUFBLFlBQ3BDLE9BQU87QUFDTCwyQkFBYSxLQUFLLFNBQVMsTUFBTTtBQUNqQyw4QkFBZ0IsQ0FBQztBQUNqQixxQkFBTztBQUFBLFlBQ1Q7QUFBQSxVQUNGLE9BQU87QUFDTCxnQkFBSSxZQUFZLFVBQVU7QUFDeEIscUJBQU87QUFBQSxZQUNUO0FBQ0EseUJBQWEsS0FBSyxTQUFTLFlBQVksY0FBYyxNQUFNO0FBQzNELDZCQUFpQixZQUFZLGlCQUFpQixDQUFDLEdBQUcsSUFBSSxDQUFBQyxVQUFRLEtBQUssU0FBU0EsS0FBSSxDQUFDO0FBQ2pGLG1CQUFPLFlBQVk7QUFDbkIsZ0JBQUksT0FBTyxTQUFTLFlBQVk7QUFDOUIsb0JBQU0sSUFBSSxNQUFNLG9EQUFvRCxJQUFJO0FBQUEsWUFDMUU7QUFFQSxrQkFBTSxLQUFLLGVBQWUsTUFBTSxZQUFZLGFBQWE7QUFDekQsa0JBQU0sa0JBQWtCLGlCQUFpQixFQUFFO0FBQzNDLGdCQUFJLG9CQUFvQixRQUFXO0FBQ2pDLG9CQUFNLENBQUMsVUFBVSxnQkFBZ0IsSUFBSTtBQUNyQyxxQkFBTyxpQkFBaUIsRUFBRTtBQUUxQixxQkFBTyxTQUFTO0FBQ2hCLDJCQUFhLFNBQVM7QUFDdEIsOEJBQWdCLFNBQVM7QUFFekIsb0JBQU0sa0JBQWtCLElBQUksa0JBQWtCLGtCQUFrQixTQUFTLFFBQVEsQ0FBQztBQUNsRixvQkFBTSxjQUFjLHlCQUF5QixJQUFJLFFBQVEsaUJBQWlCLE9BQU8sd0JBQXdCO0FBQ3pHLGdDQUFrQixjQUFjLEtBQUssV0FBVyxFQUFFLElBQUkscUJBQXFCO0FBQzNFLGtCQUFJLGVBQWUsV0FBVztBQUM5QixrQkFBSSxlQUFlLGVBQWU7QUFBQSxZQUNwQztBQUFBLFVBQ0Y7QUFFQSxnQkFBTSxpQkFBaUIsV0FBVztBQUNsQyxnQkFBTSxvQkFBb0IsY0FBYyxJQUFJLE9BQUssRUFBRSxJQUFJO0FBQ3ZELGdCQUFNLFlBQVksTUFBTSxrQkFBa0IsS0FBSyxFQUFFLElBQUksTUFBTTtBQUUzRCxxQkFBVyxLQUFLLENBQUMsTUFBTSxnQkFBZ0IsbUJBQW1CLGlCQUFrQixTQUFTLGdCQUFpQkgsY0FBYSxDQUFDLENBQUM7QUFDckgsc0JBQVksS0FBSyxDQUFDLE1BQU0sV0FBVyxNQUFNLFlBQVksZUFBZSxJQUFJLENBQUM7QUFBQSxRQUMzRSxDQUFDO0FBRUQsY0FBTSx5QkFBeUIsT0FBTyxLQUFLLGdCQUFnQjtBQUMzRCxZQUFJLHVCQUF1QixTQUFTLEdBQUc7QUFDckMsZ0JBQU0sSUFBSSxNQUFNLGlDQUFpQyx1QkFBdUIsS0FBSyxJQUFJLENBQUM7QUFBQSxRQUNwRjtBQUVBLGNBQU0sTUFBTSxRQUFRLFdBQVcsY0FBTSxPQUFPLEdBQUcsSUFBSTtBQUNuRCxZQUFJO0FBQ0YsY0FBSSxLQUFLO0FBQUEsUUFDWCxVQUFFO0FBQ0EsY0FBSSxLQUFLLE9BQU87QUFBQSxRQUNsQjtBQUVBLGNBQU0sZUFBZSxLQUFLLElBQUksS0FBSyxJQUFJO0FBRXZDLGNBQU0sYUFBYSxjQUFjO0FBQ2pDLFlBQUksYUFBYSxHQUFHO0FBQ2xCLGdCQUFNLG9CQUFvQixJQUFJQztBQUM5QixnQkFBTSxpQkFBaUIsT0FBTyxNQUFNLGFBQWEsaUJBQWlCO0FBRWxFLGdCQUFNLGdCQUFnQixDQUFDO0FBQ3ZCLGdCQUFNLG1CQUFtQixDQUFDO0FBRTFCLHNCQUFZLFFBQVEsQ0FBQyxDQUFDLE1BQU0sV0FBVyxNQUFNLFlBQVksZUFBZSxJQUFJLEdBQUcsVUFBVTtBQUN2RixrQkFBTSxVQUFVLE9BQU8sZ0JBQWdCLElBQUk7QUFDM0Msa0JBQU0sZUFBZSxPQUFPLGdCQUFnQixTQUFTO0FBQ3JELGtCQUFNLFVBQVUsVUFBVSxNQUFNLGNBQWMsTUFBTSxZQUFZLGVBQWUsSUFBSTtBQUVuRiwyQkFBZSxJQUFJLFFBQVEsaUJBQWlCLEVBQUUsYUFBYSxPQUFPO0FBQ2xFLDJCQUFlLElBQUssUUFBUSxvQkFBcUJBLFlBQVcsRUFBRSxhQUFhLFlBQVk7QUFDdkYsMkJBQWUsSUFBSyxRQUFRLG9CQUFzQixJQUFJQSxZQUFZLEVBQUUsYUFBYSxPQUFPO0FBRXhGLDZCQUFpQixLQUFLLFNBQVMsWUFBWTtBQUMzQywwQkFBYyxLQUFLLE9BQU87QUFBQSxVQUM1QixDQUFDO0FBRUQsZ0JBQU0sSUFBSSxhQUFhLG1CQUFtQixHQUFHO0FBQzdDLHNCQUFZLEtBQUssQ0FBQztBQUNsQixnQkFBTSxjQUFjLEVBQUU7QUFFdEIsY0FBSSxnQkFBZ0IsYUFBYSxnQkFBZ0IsVUFBVTtBQUMzRCxjQUFJLHdCQUF3QjtBQUU1Qix1QkFBYSxpQkFBaUI7QUFBQSxRQUNoQztBQUVBLGVBQU87QUFBQSxNQUNULFVBQUU7QUFDQSxvQkFBWSxRQUFRLE9BQUs7QUFBRSxZQUFFLE1BQU0sR0FBRztBQUFBLFFBQUcsQ0FBQztBQUFBLE1BQzVDO0FBQUEsSUFDRjtBQUFBLElBRUEsT0FBUSxXQUFXLFdBQVc7QUFDNUIsWUFBTSxNQUFNQyxJQUFHLE9BQU87QUFDdEIsWUFBTSxFQUFFLE9BQU8sSUFBSTtBQUNuQixVQUFJLFdBQVcsT0FBTztBQUNwQixhQUFLLGtCQUFrQixXQUFXLEtBQUssU0FBUztBQUFBLE1BQ2xELFdBQVcsV0FBVyxPQUFPO0FBQzNCLGNBQU0sbUJBQW1CLElBQUksNkJBQTZCLE1BQU07QUFDaEUsWUFBSSxrQkFBa0I7QUFDcEIsZ0JBQU0sbUJBQW1CLElBQUksNkJBQTZCLE1BQU07QUFDaEUsY0FBSSxrQkFBa0I7QUFDcEIsbUJBQU8sS0FBSyxrQkFBa0IsV0FBVyxLQUFLLFNBQVM7QUFBQSxVQUN6RDtBQUFBLFFBQ0Y7QUFDQSxRQUFRLHNCQUFzQkEsS0FBSSxLQUFLLFlBQVU7QUFDL0MsY0FBSSxrQkFBa0I7QUFDcEIsaUJBQUssd0JBQXdCLFdBQVcsS0FBSyxRQUFRLFNBQVM7QUFBQSxVQUNoRSxPQUFPO0FBQ0wsaUJBQUssd0JBQXdCLFdBQVcsS0FBSyxRQUFRLFNBQVM7QUFBQSxVQUNoRTtBQUFBLFFBQ0YsQ0FBQztBQUFBLE1BQ0gsT0FBTztBQUNMLGFBQUsscUJBQXFCLFdBQVcsS0FBSyxTQUFTO0FBQUEsTUFDckQ7QUFBQSxJQUNGO0FBQUEsSUFFQSxrQkFBbUIsV0FBVyxLQUFLLFdBQVc7QUFDNUMsWUFBTSxlQUFlLEtBQUssSUFBSSxTQUFTO0FBQ3ZDLFlBQU0sRUFBRSxNQUFNLElBQUk7QUFDbEIsWUFBTSwyQkFBMkI7QUFDakMsWUFBTSwyQkFBMkI7QUFFakMsWUFBTSxJQUFJLGFBQWEsbUJBQW1CLEdBQUc7QUFDN0MsWUFBTSxNQUFNLE1BQU0sRUFBRSxNQUFNLFNBQVMsQ0FBQztBQUNwQyxVQUFJO0FBQ0YsY0FBTSxxQkFBcUIsSUFBSSxlQUFlLENBQUMsVUFBVSxNQUFNRSxTQUFRLGFBQWE7QUFDbEYsVUFBQUEsUUFBTyxTQUFTLEdBQUc7QUFDbkIsaUJBQU87QUFBQSxRQUNULEdBQUcsT0FBTyxDQUFDLFNBQVMsU0FBUyxXQUFXLFNBQVMsQ0FBQztBQUNsRCxjQUFNLDRCQUE0QixFQUFFLE9BQU8sMEJBQTBCLG9CQUFvQixFQUFFLEtBQUs7QUFFaEcsY0FBTSxTQUFTLE9BQU8sTUFBTSxDQUFDO0FBQzdCLGVBQU8sU0FBUyxHQUFHO0FBQ25CLGNBQU0sV0FBVyxPQUFPLE1BQU1QLFVBQVM7QUFDdkMsY0FBTSxhQUFhLE9BQU8sTUFBTUksWUFBVztBQUMzQyxjQUFNLG1CQUFtQixHQUFHLFFBQVEsVUFBVSxZQUFZLElBQUk7QUFFOUQsY0FBTSxRQUFRLFNBQVMsUUFBUTtBQUMvQixjQUFNLFVBQVUsV0FBVyxZQUFZO0FBQ3ZDLGNBQU0sVUFBVSxDQUFDO0FBQ2pCLGlCQUFTLElBQUksR0FBRyxNQUFNLE9BQU8sS0FBSztBQUNoQyxrQkFBUSxLQUFLLFFBQVEsSUFBSSxJQUFJQSxZQUFXLEVBQUUsWUFBWSxDQUFDO0FBQUEsUUFDekQ7QUFDQSxjQUFNLFdBQVcsT0FBTztBQUV4QixZQUFJO0FBQ0YscUJBQVcsVUFBVSxTQUFTO0FBQzVCLGtCQUFNLFdBQVcsS0FBSyxLQUFLLFFBQVEsWUFBWTtBQUMvQyxrQkFBTSxTQUFTLFVBQVUsUUFBUSxRQUFRO0FBQ3pDLGdCQUFJLFdBQVcsUUFBUTtBQUNyQjtBQUFBLFlBQ0Y7QUFBQSxVQUNGO0FBRUEsb0JBQVUsV0FBVztBQUFBLFFBQ3ZCLFVBQUU7QUFDQSxrQkFBUSxRQUFRLFlBQVU7QUFDeEIsZ0JBQUksZUFBZSxNQUFNO0FBQUEsVUFDM0IsQ0FBQztBQUFBLFFBQ0g7QUFBQSxNQUNGLFVBQUU7QUFDQSxVQUFFLE1BQU0sR0FBRztBQUFBLE1BQ2I7QUFBQSxJQUNGO0FBQUEsSUFFQSx3QkFBeUIsV0FBVyxLQUFLLFFBQVEsV0FBVztBQUMxRCxZQUFNLGVBQWUsS0FBSyxJQUFJLFNBQVM7QUFFdkMsWUFBTSxRQUFnQix5QkFBeUIsS0FBSyxRQUFRQyxHQUFFO0FBRTlELFVBQUk7QUFDSixZQUFNLElBQUksYUFBYSxtQkFBbUIsR0FBRztBQUM3QyxVQUFJO0FBQ0YsY0FBTSxTQUFTLElBQUksOEJBQThCLEVBQUUsSUFBSSxJQUFJLFFBQVEsRUFBRSxLQUFLO0FBQzFFLGlCQUFTLE1BQU0sVUFBVSxNQUFNO0FBQUEsTUFDakMsVUFBRTtBQUNBLFVBQUUsTUFBTSxHQUFHO0FBQUEsTUFDYjtBQUVBLFlBQU0sV0FBVztBQUVqQixZQUFNLFlBQW9CLGFBQWEsS0FBSztBQUU1QyxVQUFJLDZCQUE2QixFQUFFLElBQUksU0FBUyxPQUFPLFFBQVEsVUFBVSxTQUFTO0FBRWxGLFlBQU0sa0JBQWtCLFVBQVUsUUFBUSxJQUFJLFlBQVUsSUFBSSxhQUFhLE1BQU0sQ0FBQztBQUVoRixnQkFBVSxRQUFRO0FBQ2xCLFlBQU0sUUFBUTtBQUVkLFVBQUk7QUFDRixtQkFBVyxVQUFVLGlCQUFpQjtBQUNwQyxnQkFBTSxXQUFXLEtBQUssS0FBSyxRQUFRLFlBQVk7QUFDL0MsZ0JBQU0sU0FBUyxVQUFVLFFBQVEsUUFBUTtBQUN6QyxjQUFJLFdBQVcsUUFBUTtBQUNyQjtBQUFBLFVBQ0Y7QUFBQSxRQUNGO0FBRUEsa0JBQVUsV0FBVztBQUFBLE1BQ3ZCLFVBQUU7QUFDQSx3QkFBZ0IsUUFBUSxZQUFVO0FBQ2hDLGNBQUksZ0JBQWdCLE1BQU07QUFBQSxRQUM1QixDQUFDO0FBQUEsTUFDSDtBQUFBLElBQ0Y7QUFBQSxJQUVBLHdCQUF5QixXQUFXLEtBQUssUUFBUSxXQUFXO0FBQzFELFlBQU0sZUFBZSxLQUFLLElBQUksU0FBUztBQUV2QyxZQUFNLGtCQUFrQixDQUFDO0FBQ3pCLFlBQU0scUJBQXFCLElBQUksOEJBQThCO0FBQzdELFlBQU0sV0FBVyxJQUFJO0FBRXJCLFVBQUk7QUFDSixZQUFNLElBQUksYUFBYSxtQkFBbUIsR0FBRztBQUM3QyxVQUFJO0FBQ0YsaUJBQVMsSUFBSSw4QkFBOEIsRUFBRSxVQUFVLFFBQVEsRUFBRSxLQUFLLEVBQUUsUUFBUTtBQUFBLE1BQ2xGLFVBQUU7QUFDQSxVQUFFLE1BQU0sR0FBRztBQUFBLE1BQ2I7QUFFQSxZQUFNLGlDQUF5QywyQkFBMkIsUUFBUSxZQUFVO0FBQzFGLHdCQUFnQixLQUFLLG1CQUFtQixVQUFVLFFBQVEsTUFBTSxDQUFDO0FBQUEsTUFDbkUsQ0FBQztBQUVELFVBQUksNkJBQTZCLEVBQUUsSUFBSSxTQUFTLGdDQUFnQyxJQUFJO0FBRXBGLFVBQUk7QUFDRixtQkFBVyxVQUFVLGlCQUFpQjtBQUNwQyxnQkFBTSxXQUFXLEtBQUssS0FBSyxRQUFRLFlBQVk7QUFDL0MsZ0JBQU0sU0FBUyxVQUFVLFFBQVEsUUFBUTtBQUN6QyxjQUFJLFdBQVcsUUFBUTtBQUNyQjtBQUFBLFVBQ0Y7QUFBQSxRQUNGO0FBQUEsTUFDRixVQUFFO0FBQ0Esd0JBQWdCLFFBQVEsWUFBVTtBQUNoQyxjQUFJLGdCQUFnQixNQUFNO0FBQUEsUUFDNUIsQ0FBQztBQUFBLE1BQ0g7QUFFQSxnQkFBVSxXQUFXO0FBQUEsSUFDdkI7QUFBQSxJQUVBLHFCQUFzQixXQUFXLFdBQVcsV0FBVztBQUNyRCxZQUFNLGVBQWUsS0FBSyxJQUFJLFNBQVM7QUFFdkMsVUFBSSxJQUFJLHNCQUFzQixNQUFNO0FBQ2xDLGNBQU0sU0FBUyxRQUFRLGdCQUFnQixXQUFXO0FBRWxELFlBQUk7QUFDSixnQkFBUSxRQUFRLE1BQU07QUFBQSxVQUNwQixLQUFLO0FBRUgsc0JBQVU7QUFDVjtBQUFBLFVBQ0YsS0FBSztBQUVILHNCQUFVO0FBQ1Y7QUFBQSxRQUNKO0FBRUEsZUFBTyxLQUFLLE9BQU8sTUFBTSxPQUFPLE1BQU0sU0FBUztBQUFBLFVBQzdDLFNBQVMsQ0FBQyxTQUFTLFNBQVM7QUFDMUIsZ0JBQUk7QUFDSixnQkFBSSxRQUFRLFNBQVMsT0FBTztBQUMxQix3QkFBVSxRQUFRLEdBQUcsQ0FBQztBQUN0Qix3QkFBVSxJQUFJLGVBQWUsU0FBUyxXQUFXLENBQUMsV0FBVyxTQUFTLENBQUM7QUFBQSxZQUN6RSxPQUFPO0FBQ0wsb0JBQU0sUUFBUSxPQUFPLE1BQU0sUUFBUSxRQUFRO0FBQzNDLHFCQUFPLFVBQVUsT0FBTyxJQUFJLENBQUFHLFVBQVE7QUFDbEMsc0JBQU0sS0FBSyxJQUFJLFVBQVVBLE9BQU0sRUFBRSxJQUFJLE1BQU0sQ0FBQztBQUM1QyxtQkFBRyxzQkFBc0IsT0FBTyxPQUFPLENBQUM7QUFDeEMsbUJBQUcsc0JBQXNCLE9BQU8sT0FBTyxDQUFDO0FBQ3hDLG1CQUFHLGNBQWMsT0FBTztBQUN4QixtQkFBRyxNQUFNO0FBQUEsY0FDWCxDQUFDO0FBQ0Qsd0JBQVUsSUFBSSxlQUFlLE9BQU8sV0FBVyxDQUFDLFdBQVcsU0FBUyxDQUFDO0FBQ3JFLHNCQUFRLFNBQVM7QUFBQSxZQUNuQjtBQUNBLGdCQUFJLG9CQUFvQjtBQUV4QixZQUFBSCxJQUFHLFFBQVEsU0FBTztBQUNoQixpQ0FBbUIsTUFBTSxHQUFHO0FBQUEsWUFDOUIsQ0FBQztBQUVELG1CQUFPO0FBQUEsVUFDVDtBQUFBLFVBQ0EsUUFBUyxRQUFRO0FBQUEsVUFBQztBQUFBLFVBQ2xCLGFBQWM7QUFDWixnQkFBSSxJQUFJLHNCQUFzQixNQUFNO0FBQ2xDLHdCQUFVLFdBQVc7QUFBQSxZQUN2QjtBQUFBLFVBQ0Y7QUFBQSxRQUNGLENBQUM7QUFBQSxNQUNILE9BQU87QUFDTCwyQkFBbUIsTUFBTSxTQUFTO0FBQUEsTUFDcEM7QUFFQSxlQUFTLG1CQUFvQixTQUFTLEtBQUs7QUFDekMsY0FBTSxFQUFFLHlCQUFBSSx5QkFBd0IsSUFBSTtBQUNwQyxjQUFNLFNBQVMsSUFBSSxPQUFPLElBQUlBLHdCQUF1QixFQUFFLFlBQVk7QUFFbkUsWUFBSTtBQUNKLGNBQU0sSUFBSSxhQUFhLG1CQUFtQixHQUFHO0FBQzdDLFlBQUk7QUFDRiwyQkFBaUIsSUFBSSxxQkFBcUIsUUFBUSxFQUFFLEtBQUs7QUFBQSxRQUMzRCxVQUFFO0FBQ0EsWUFBRSxNQUFNLEdBQUc7QUFBQSxRQUNiO0FBRUEsY0FBTSxVQUFVLGVBQWUsZUFBZTtBQUM5QyxjQUFNLGlCQUFpQixJQUFJLHFCQUFxQjtBQUNoRCxjQUFNLGtCQUFrQixJQUFJLHNCQUFzQjtBQUNsRCxjQUFNLE9BQU8sZ0JBQWdCLElBQUksY0FBYyxFQUFFLFFBQVE7QUFFekQsZUFBTyxLQUFLLGdCQUFnQixNQUFNLFNBQVM7QUFBQSxVQUN6QyxTQUFTLENBQUMsU0FBU0MsVUFBUztBQUMxQixnQkFBSSxJQUFJLGlCQUFpQixPQUFPLEdBQUc7QUFDakMsY0FBQUwsSUFBRyxRQUFRLENBQUFNLFNBQU87QUFDaEIsc0JBQU1DLFVBQVNELEtBQUksT0FBTyxJQUFJRix3QkFBdUIsRUFBRSxZQUFZO0FBRW5FLG9CQUFJO0FBQ0osc0JBQU0saUJBQWlCLElBQUksa0JBQWtCRyxTQUFRLE9BQU87QUFDNUQsb0JBQUk7QUFDRiw2QkFBVyxRQUFRLEtBQUssZ0JBQWdCLFlBQVk7QUFBQSxnQkFDdEQsVUFBRTtBQUNBLGtCQUFBRCxLQUFJLGVBQWUsY0FBYztBQUFBLGdCQUNuQztBQUVBLHNCQUFNLFNBQVMsVUFBVSxRQUFRLFFBQVE7QUFDekMsb0JBQUksV0FBVyxRQUFRO0FBQ3JCLHlCQUFPO0FBQUEsZ0JBQ1Q7QUFBQSxjQUNGLENBQUM7QUFBQSxZQUNIO0FBQUEsVUFDRjtBQUFBLFVBQ0EsUUFBUyxRQUFRO0FBQUEsVUFBQztBQUFBLFVBQ2xCLGFBQWM7QUFDWixzQkFBVSxXQUFXO0FBQUEsVUFDdkI7QUFBQSxRQUNGLENBQUM7QUFBQSxNQUNIO0FBQUEsSUFDRjtBQUFBLElBRUEsY0FBZSxVQUFVO0FBQ3ZCLGFBQU8sSUFBSSxRQUFRLFVBQVUsTUFBTSxJQUFJO0FBQUEsSUFDekM7QUFBQSxJQUVBLFNBQVUsVUFBVSxRQUFRLE1BQU07QUFDaEMsYUFBTyxRQUFRLFVBQVUsT0FBTyxJQUFJO0FBQUEsSUFDdEM7QUFBQSxFQUNGO0FBRUEsV0FBUyw4QkFBK0I7QUFDdEMsV0FBTyxTQUFVLFFBQVEsVUFBVSxLQUFLLE9BQU87QUFDN0MsYUFBTyxRQUFRLEtBQUssTUFBTSxRQUFRLFVBQVUsS0FBSyxLQUFLO0FBQUEsSUFDeEQ7QUFBQSxFQUNGO0FBRUEsV0FBUyxRQUFTLFFBQVEsVUFBVSxLQUFLLFFBQVEsTUFBTTtBQUNyRCxRQUFJLFdBQVcsTUFBTTtBQUNuQixVQUFJLE9BQU87QUFDVCxjQUFNLElBQUksSUFBSSxhQUFhLE1BQU07QUFDakMsYUFBSyxLQUFLO0FBQ1YsYUFBSyxLQUFLLE9BQU8sU0FBUyxNQUFNTixJQUFHLHFCQUFxQixDQUFDLENBQUM7QUFBQSxNQUM1RCxPQUFPO0FBQ0wsYUFBSyxLQUFLO0FBQ1YsYUFBSyxLQUFLO0FBQUEsTUFDWjtBQUFBLElBQ0YsT0FBTztBQUNMLFdBQUssS0FBSztBQUNWLFdBQUssS0FBSztBQUFBLElBQ1o7QUFFQSxTQUFLLEtBQUs7QUFFVixXQUFPLElBQUksTUFBTSxNQUFNLGNBQWM7QUFBQSxFQUN2QztBQUVBLG1CQUFpQjtBQUFBLElBQ2YsSUFBSyxRQUFRLFVBQVU7QUFDckIsVUFBSSxZQUFZLFFBQVE7QUFDdEIsZUFBTztBQUFBLE1BQ1Q7QUFFQSxhQUFPLE9BQU8sS0FBSyxRQUFRO0FBQUEsSUFDN0I7QUFBQSxJQUNBLElBQUssUUFBUSxVQUFVLFVBQVU7QUFDL0IsVUFBSSxPQUFPLGFBQWEsWUFBWSxTQUFTLFdBQVcsR0FBRyxLQUFLLGFBQWEsU0FBUztBQUNwRixlQUFPLE9BQU8sUUFBUTtBQUFBLE1BQ3hCO0FBRUEsWUFBTVEsVUFBUyxPQUFPLE1BQU0sUUFBUTtBQUNwQyxVQUFJQSxZQUFXLE1BQU07QUFDbkIsZUFBT0EsUUFBTyxRQUFRO0FBQUEsTUFDeEI7QUFFQSxhQUFPLE9BQU8sUUFBUTtBQUFBLElBQ3hCO0FBQUEsSUFDQSxJQUFLLFFBQVEsVUFBVSxPQUFPLFVBQVU7QUFDdEMsYUFBTyxRQUFRLElBQUk7QUFDbkIsYUFBTztBQUFBLElBQ1Q7QUFBQSxJQUNBLFFBQVMsUUFBUTtBQUNmLGFBQU8sT0FBTyxNQUFNO0FBQUEsSUFDdEI7QUFBQSxJQUNBLHlCQUEwQixRQUFRLFVBQVU7QUFDMUMsVUFBSSxPQUFPLFVBQVUsZUFBZSxLQUFLLFFBQVEsUUFBUSxHQUFHO0FBQzFELGVBQU8sT0FBTyx5QkFBeUIsUUFBUSxRQUFRO0FBQUEsTUFDekQ7QUFFQSxhQUFPO0FBQUEsUUFDTCxVQUFVO0FBQUEsUUFDVixjQUFjO0FBQUEsUUFDZCxZQUFZO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxFQUNGO0FBRUEsU0FBTyxpQkFBaUIsUUFBUSxXQUFXO0FBQUEsSUFDekMsQ0FBQyxPQUFPLElBQUksS0FBSyxDQUFDLEdBQUc7QUFBQSxNQUNuQixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLFNBQVMsY0FBYztBQUFBLE1BQ3JDO0FBQUEsSUFDRjtBQUFBLElBQ0EsTUFBTTtBQUFBLE1BQ0osWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksS0FBSyxDQUFDO0FBQUEsTUFDL0I7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxPQUFPLENBQUMsR0FBRztBQUFBLE1BQ3JCLFlBQVk7QUFBQSxNQUNaLFFBQVM7QUFDUCxjQUFNLE1BQU1SLElBQUcsT0FBTztBQUN0QixjQUFNLElBQUksS0FBSyxtQkFBbUIsR0FBRztBQUNyQyxZQUFJO0FBQ0YsZ0JBQU0sTUFBTSxJQUFJLFlBQVksRUFBRSxLQUFLO0FBQ25DLGdCQUFNLFVBQVUsS0FBSztBQUNyQixpQkFBTyxRQUFRLEtBQUssS0FBSyxJQUFJO0FBQUEsUUFDL0IsVUFBRTtBQUNBLFlBQUUsTUFBTSxHQUFHO0FBQUEsUUFDYjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLE9BQU8sSUFBSSxPQUFPLENBQUM7QUFBQSxNQUNqQztBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLE1BQU0sQ0FBQyxHQUFHO0FBQUEsTUFDcEIsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxTQUFTLFVBQVU7QUFBQSxNQUNqQztBQUFBLElBQ0Y7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssT0FBTyxJQUFJLE1BQU0sQ0FBQztBQUFBLE1BQ2hDO0FBQUEsSUFDRjtBQUFBLElBQ0EsQ0FBQyxPQUFPLElBQUksU0FBUyxDQUFDLEdBQUc7QUFBQSxNQUN2QixZQUFZO0FBQUEsTUFDWixRQUFTO0FBQ1AsY0FBTSxNQUFNLEtBQUs7QUFDakIsWUFBSSxRQUFRLE1BQU07QUFDaEIsZUFBSyxLQUFLO0FBQ1YsaUJBQU8sV0FBVyxHQUFHO0FBQUEsUUFDdkI7QUFFQSxZQUFJLEtBQUssT0FBTyxNQUFNO0FBQ3BCLGVBQUssS0FBSztBQUFBLFFBQ1o7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLElBQ0EsVUFBVTtBQUFBLE1BQ1IsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksU0FBUyxDQUFDO0FBQUEsTUFDbkM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxPQUFPLENBQUMsR0FBRztBQUFBLE1BQ3JCLFlBQVk7QUFBQSxNQUNaLE1BQU8sS0FBSztBQUNWLGNBQU0sSUFBSSxLQUFLO0FBQ2YsZUFBTyxJQUFJLEVBQUUsS0FBSyxJQUFJLEtBQUssSUFBSSxHQUFHO0FBQUEsTUFDcEM7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixNQUFPLEtBQUs7QUFDVixlQUFPLEtBQUssT0FBTyxJQUFJLE9BQU8sQ0FBQyxFQUFFLEdBQUc7QUFBQSxNQUN0QztBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLE9BQU8sQ0FBQyxHQUFHO0FBQUEsTUFDckIsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGNBQU0sTUFBTUEsSUFBRyxPQUFPO0FBQ3RCLGNBQU0sSUFBSSxLQUFLLG1CQUFtQixHQUFHO0FBQ3JDLFlBQUk7QUFDRixnQkFBTSxVQUFVLEtBQUs7QUFDckIsaUJBQU8sUUFBUSxLQUFLLEVBQUUsT0FBTyxRQUFRLElBQUksaUJBQWlCLENBQUM7QUFBQSxRQUM3RCxVQUFFO0FBQ0EsWUFBRSxNQUFNLEdBQUc7QUFBQSxRQUNiO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssT0FBTyxJQUFJLE9BQU8sQ0FBQztBQUFBLE1BQ2pDO0FBQUEsSUFDRjtBQUFBLElBQ0EsQ0FBQyxPQUFPLElBQUksV0FBVyxDQUFDLEdBQUc7QUFBQSxNQUN6QixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsY0FBTSxTQUFTLEtBQUs7QUFDcEIsWUFBSSxXQUFXLE1BQU07QUFDbkIsaUJBQU8sS0FBSztBQUFBLFFBQ2Q7QUFFQSxlQUFPQSxJQUFHLE9BQU8sRUFBRSxtQkFBbUIsTUFBTTtBQUFBLE1BQzlDO0FBQUEsSUFDRjtBQUFBLElBQ0EsWUFBWTtBQUFBLE1BQ1YsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksV0FBVyxDQUFDO0FBQUEsTUFDckM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxZQUFZLENBQUMsR0FBRztBQUFBLE1BQzFCLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxjQUFNLFFBQVEsS0FBSztBQUNuQixlQUFPLE1BQU0sS0FBSztBQUFBLE1BQ3BCO0FBQUEsSUFDRjtBQUFBLElBQ0EsYUFBYTtBQUFBLE1BQ1gsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksWUFBWSxDQUFDO0FBQUEsTUFDdEM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxPQUFPLENBQUMsR0FBRztBQUFBLE1BQ3JCLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxjQUFNLE1BQU1BLElBQUcsT0FBTztBQUN0QixjQUFNLElBQUksS0FBSyxHQUFHO0FBQ2xCLGVBQU8sSUFBSSxFQUFFLEtBQUssSUFBSSxpQkFBaUIsR0FBRztBQUFBLE1BQzVDO0FBQUEsSUFDRjtBQUFBLElBQ0EsUUFBUTtBQUFBLE1BQ04sWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksT0FBTyxDQUFDO0FBQUEsTUFDakM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxHQUFHLENBQUMsR0FBRztBQUFBLE1BQ2pCLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxjQUFNLFFBQVEsT0FBTyxlQUFlLElBQUk7QUFFeEMsWUFBSSxlQUFlLE1BQU07QUFDekIsWUFBSSxpQkFBaUIsUUFBVztBQUM5QixnQkFBTSxNQUFNQSxJQUFHLE9BQU87QUFFdEIsZ0JBQU0sSUFBSSxLQUFLLG1CQUFtQixHQUFHO0FBQ3JDLGNBQUk7QUFDRixrQkFBTSxjQUFjLElBQUksY0FBYyxFQUFFLEtBQUs7QUFDN0MsZ0JBQUksQ0FBQyxZQUFZLE9BQU8sR0FBRztBQUN6QixrQkFBSTtBQUNGLHNCQUFNLGlCQUFpQixJQUFJLGFBQWEsV0FBVztBQUNuRCxzQkFBTSxVQUFVLE1BQU07QUFDdEIsK0JBQWUsUUFBUSxjQUFjLGNBQWM7QUFDbkQsb0JBQUksaUJBQWlCLFFBQVc7QUFDOUIsc0JBQUk7QUFDRiwwQkFBTSxzQkFBc0Isc0JBQXNCLElBQUk7QUFDdEQsbUNBQWUsUUFBUSxNQUFNLGdCQUFnQixxQkFBcUIsR0FBRztBQUFBLGtCQUN2RSxVQUFFO0FBQ0EsNEJBQVEsY0FBYyxnQkFBZ0IsWUFBWTtBQUFBLGtCQUNwRDtBQUFBLGdCQUNGO0FBQUEsY0FDRixVQUFFO0FBQ0Esb0JBQUksZUFBZSxXQUFXO0FBQUEsY0FDaEM7QUFBQSxZQUNGLE9BQU87QUFDTCw2QkFBZTtBQUFBLFlBQ2pCO0FBQUEsVUFDRixVQUFFO0FBQ0EsY0FBRSxNQUFNLEdBQUc7QUFBQSxVQUNiO0FBRUEsZ0JBQU0sTUFBTTtBQUFBLFFBQ2Q7QUFFQSxlQUFPO0FBQUEsTUFDVDtBQUFBLElBQ0Y7QUFBQSxJQUNBLElBQUk7QUFBQSxNQUNGLE1BQU87QUFDTCxlQUFPLEtBQUssT0FBTyxJQUFJLEdBQUcsQ0FBQztBQUFBLE1BQzdCO0FBQUEsSUFDRjtBQUFBLElBQ0EsQ0FBQyxPQUFPLElBQUksY0FBYyxDQUFDLEdBQUc7QUFBQSxNQUM1QixZQUFZO0FBQUEsTUFDWixNQUFPLEtBQUs7QUFDVixjQUFNLE1BQU1BLElBQUcsT0FBTztBQUN0QixlQUFPLElBQUksYUFBYSxJQUFJLElBQUksS0FBSyxFQUFFO0FBQUEsTUFDekM7QUFBQSxJQUNGO0FBQUEsSUFDQSxlQUFlO0FBQUEsTUFDYixNQUFPLEtBQUs7QUFDVixlQUFPLEtBQUssT0FBTyxJQUFJLGNBQWMsQ0FBQyxFQUFFLEdBQUc7QUFBQSxNQUM3QztBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLFNBQVMsQ0FBQyxHQUFHO0FBQUEsTUFDdkIsWUFBWTtBQUFBLE1BQ1osTUFBTyxNQUFNO0FBQ1gsY0FBTSxPQUFPLEtBQUs7QUFFbEIsWUFBSSxPQUFPLEtBQUssQ0FBQztBQUNqQixZQUFJLFNBQVMsTUFBTTtBQUNqQixnQkFBTSxNQUFNQSxJQUFHLE9BQU87QUFDdEIsZ0JBQU0sSUFBSSxLQUFLLG1CQUFtQixHQUFHO0FBQ3JDLGNBQUk7QUFDRixtQkFBTyxnQkFBZ0IsRUFBRSxPQUFPLEtBQUssSUFBSSxHQUFHO0FBQzVDLGlCQUFLLENBQUMsSUFBSTtBQUFBLFVBQ1osVUFBRTtBQUNBLGNBQUUsTUFBTSxHQUFHO0FBQUEsVUFDYjtBQUFBLFFBQ0Y7QUFFQSxlQUFPLEtBQUssSUFBSTtBQUFBLE1BQ2xCO0FBQUEsSUFDRjtBQUFBLElBQ0EsVUFBVTtBQUFBLE1BQ1IsTUFBTyxNQUFNO0FBQ1gsZUFBTyxLQUFLLE9BQU8sSUFBSSxTQUFTLENBQUMsRUFBRSxJQUFJO0FBQUEsTUFDekM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxtQkFBbUIsQ0FBQyxHQUFHO0FBQUEsTUFDakMsWUFBWTtBQUFBLE1BQ1osTUFBTyxLQUFLO0FBQ1YsY0FBTSxZQUFZLEtBQUs7QUFDdkIsY0FBTSxlQUFlLEtBQUssR0FBRztBQUU3QixZQUFJLFNBQVMsYUFBYSxJQUFJLFNBQVM7QUFDdkMsWUFBSSxXQUFXLFFBQVc7QUFDeEIsbUJBQVMsSUFBSSxZQUFZLEtBQUssS0FBSyxHQUFHLEdBQUcsR0FBRztBQUM1Qyx1QkFBYSxJQUFJLFdBQVcsUUFBUSxHQUFHO0FBQUEsUUFDekM7QUFFQSxlQUFPLE9BQU8sSUFBSTtBQUFBLE1BQ3BCO0FBQUEsSUFDRjtBQUFBLElBQ0Esb0JBQW9CO0FBQUEsTUFDbEIsTUFBTyxLQUFLO0FBQ1YsZUFBTyxLQUFLLE9BQU8sSUFBSSxtQkFBbUIsQ0FBQyxFQUFFLEdBQUc7QUFBQSxNQUNsRDtBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLGlCQUFpQixDQUFDLEdBQUc7QUFBQSxNQUMvQixZQUFZO0FBQUEsTUFDWixNQUFPLEtBQUs7QUFDVixjQUFNLElBQUksS0FBSyxtQkFBbUIsR0FBRztBQUNyQyxZQUFJO0FBQ0YsaUJBQU8sSUFBSSxZQUFZLEVBQUUsS0FBSztBQUFBLFFBQ2hDLFVBQUU7QUFDQSxZQUFFLE1BQU0sR0FBRztBQUFBLFFBQ2I7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLElBQ0Esa0JBQWtCO0FBQUEsTUFDaEIsTUFBTyxLQUFLO0FBQ1YsZUFBTyxLQUFLLE9BQU8sSUFBSSxpQkFBaUIsQ0FBQyxFQUFFLEdBQUc7QUFBQSxNQUNoRDtBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLFdBQVcsQ0FBQyxHQUFHO0FBQUEsTUFDekIsWUFBWTtBQUFBLE1BQ1osTUFBTyxLQUFLO0FBQ1YsY0FBTSxTQUFTLEtBQUs7QUFFcEIsY0FBTSxhQUFhLFdBQVc7QUFDOUIsWUFBSSxZQUFZO0FBQ2QsZ0JBQU0sSUFBSSxNQUFNLHlIQUNvRDtBQUFBLFFBQ3RFO0FBRUEsZUFBTztBQUFBLE1BQ1Q7QUFBQSxJQUNGO0FBQUEsSUFDQSxZQUFZO0FBQUEsTUFDVixNQUFPLEtBQUs7QUFDVixlQUFPLEtBQUssT0FBTyxJQUFJLFdBQVcsQ0FBQyxFQUFFLEdBQUc7QUFBQSxNQUMxQztBQUFBLElBQ0Y7QUFBQSxJQUNBLENBQUMsT0FBTyxJQUFJLE1BQU0sQ0FBQyxHQUFHO0FBQUEsTUFDcEIsWUFBWTtBQUFBLE1BQ1osUUFBUztBQUNQLGNBQU0sZUFBZSxLQUFLO0FBQzFCLGNBQU0sZUFBZ0IsaUJBQWlCLE9BQVEsYUFBYSxNQUFNLElBQUksQ0FBQztBQUV2RSxjQUFNLFFBQVEsS0FBSztBQUNuQixlQUFPLE1BQU0sS0FBSyxJQUFJLElBQUksYUFBYSxPQUFPLE1BQU0sS0FBSyxDQUFDLENBQUMsQ0FBQztBQUFBLE1BQzlEO0FBQUEsSUFDRjtBQUFBLElBQ0EsT0FBTztBQUFBLE1BQ0wsTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksTUFBTSxDQUFDO0FBQUEsTUFDaEM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxLQUFLLENBQUMsR0FBRztBQUFBLE1BQ25CLFlBQVk7QUFBQSxNQUNaLE1BQU8sUUFBUTtBQUNiLGNBQU0sVUFBVSxLQUFLO0FBQ3JCLFlBQUksUUFBUSxJQUFJLE1BQU0sR0FBRztBQUN2QixpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFFBQVEsS0FBSztBQUNuQixZQUFJLE1BQU0sSUFBSSxNQUFNLEdBQUc7QUFDckIsaUJBQU87QUFBQSxRQUNUO0FBRUEsY0FBTSxlQUFlLEtBQUs7QUFDMUIsWUFBSSxpQkFBaUIsUUFBUSxhQUFhLEtBQUssTUFBTSxHQUFHO0FBQ3RELGlCQUFPO0FBQUEsUUFDVDtBQUVBLGVBQU87QUFBQSxNQUNUO0FBQUEsSUFDRjtBQUFBLElBQ0EsTUFBTTtBQUFBLE1BQ0osTUFBTyxRQUFRO0FBQ2IsZUFBTyxLQUFLLE9BQU8sSUFBSSxLQUFLLENBQUMsRUFBRSxNQUFNO0FBQUEsTUFDdkM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxNQUFNLENBQUMsR0FBRztBQUFBLE1BQ3BCLFlBQVk7QUFBQSxNQUNaLE1BQU8sUUFBUTtBQUNiLGNBQU0sVUFBVSxLQUFLO0FBRXJCLFlBQUksUUFBUSxRQUFRLElBQUksTUFBTTtBQUM5QixZQUFJLFVBQVUsUUFBVztBQUN2QixpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFFBQVEsS0FBSztBQUNuQixjQUFNLE9BQU8sTUFBTSxLQUFLLE1BQU07QUFDOUIsWUFBSSxTQUFTLE1BQU07QUFDakIsZ0JBQU0sTUFBTUEsSUFBRyxPQUFPO0FBQ3RCLGdCQUFNLElBQUksS0FBSyxtQkFBbUIsR0FBRztBQUNyQyxjQUFJO0FBQ0Ysb0JBQVEsV0FBVyxRQUFRLE1BQU0sRUFBRSxPQUFPLEtBQUssSUFBSSxHQUFHO0FBQUEsVUFDeEQsVUFBRTtBQUNBLGNBQUUsTUFBTSxHQUFHO0FBQUEsVUFDYjtBQUNBLGtCQUFRLElBQUksUUFBUSxLQUFLO0FBQ3pCLGlCQUFPO0FBQUEsUUFDVDtBQUVBLGNBQU0sZUFBZSxLQUFLO0FBQzFCLFlBQUksaUJBQWlCLE1BQU07QUFDekIsaUJBQU8sYUFBYSxNQUFNLE1BQU07QUFBQSxRQUNsQztBQUVBLGVBQU87QUFBQSxNQUNUO0FBQUEsSUFDRjtBQUFBLElBQ0EsT0FBTztBQUFBLE1BQ0wsTUFBTyxRQUFRO0FBQ2IsZUFBTyxLQUFLLE9BQU8sSUFBSSxNQUFNLENBQUMsRUFBRSxNQUFNO0FBQUEsTUFDeEM7QUFBQSxJQUNGO0FBQUEsSUFDQSxDQUFDLE9BQU8sSUFBSSxRQUFRLENBQUMsR0FBRztBQUFBLE1BQ3RCLFlBQVk7QUFBQSxNQUNaLFFBQVM7QUFDUCxjQUFNLGNBQWMsS0FBSztBQUV6QixjQUFNLFNBQVMsS0FBSztBQUNwQixZQUFJLFdBQVcsTUFBTTtBQUNuQixpQkFBTyxXQUFXLFdBQVc7QUFBQSxRQUMvQjtBQUVBLGNBQU0sYUFBYSxLQUFLO0FBQ3hCLFlBQUksZ0JBQWdCLFlBQVk7QUFDOUIsaUJBQU8sY0FBYyxXQUFXO0FBQUEsUUFDbEM7QUFFQSxlQUFPLGNBQWMsV0FBVyxpQkFBaUIsVUFBVTtBQUFBLE1BQzdEO0FBQUEsSUFDRjtBQUFBLElBQ0EsUUFBUTtBQUFBLE1BQ04sTUFBTztBQUNMLGVBQU8sS0FBSyxPQUFPLElBQUksUUFBUSxDQUFDO0FBQUEsTUFDbEM7QUFBQSxJQUNGO0FBQUEsRUFDRixDQUFDO0FBRUQsV0FBUyxZQUFhLE9BQU8sS0FBSztBQUNoQyxTQUFLLFFBQVEsSUFBSSxhQUFhLEtBQUs7QUFDbkMsUUFBSSxlQUFlLEtBQUs7QUFFeEIsU0FBSyxPQUFPO0FBQUEsRUFDZDtBQUVBLGNBQVksVUFBVSxNQUFNLFdBQVk7QUFDdEMsU0FBSztBQUNMLFdBQU87QUFBQSxFQUNUO0FBRUEsY0FBWSxVQUFVLFFBQVEsU0FBVSxLQUFLO0FBQzNDLFFBQUksRUFBRSxLQUFLLFNBQVMsR0FBRztBQUNyQixVQUFJLGdCQUFnQixLQUFLLEtBQUs7QUFBQSxJQUNoQztBQUFBLEVBQ0Y7QUFFQSxXQUFTLG1CQUFvQixRQUFRLEtBQUs7QUFDeEMsV0FBTyxNQUFNLEdBQUc7QUFBQSxFQUNsQjtBQUVBLFdBQVMsMkJBQTRCLFdBQVc7QUFDOUMsVUFBTSxxQkFBcUIsVUFBVSxRQUFRLE9BQU8sR0FBRztBQUV2RCxXQUFPLFNBQVUsS0FBSztBQUNwQixZQUFNLE1BQU0sbUJBQW1CO0FBQy9CLGFBQU8sR0FBRztBQUNWLFVBQUk7QUFDRixlQUFPLElBQUksVUFBVSxrQkFBa0I7QUFBQSxNQUN6QyxVQUFFO0FBQ0EsaUJBQVMsR0FBRztBQUFBLE1BQ2Q7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUVBLFdBQVMsNEJBQTZCLFdBQVcsWUFBWSxXQUFXO0FBQ3RFLFFBQUksdUJBQXVCLE1BQU07QUFDL0IsMkJBQXFCLFVBQVUsU0FBUyxXQUFXLENBQUMsU0FBUyxDQUFDO0FBQzlELDJCQUFxQixXQUFXLFVBQVUsU0FBUyxrQkFBa0IsRUFBRTtBQUFBLElBQ3pFO0FBRUEsZ0JBQVk7QUFFWixXQUFPLFNBQVUsS0FBSztBQUNwQixZQUFNLGlCQUFpQixJQUFJLGFBQWEsU0FBUztBQUVqRCxZQUFNLE1BQU0sbUJBQW1CO0FBQy9CLGFBQU8sR0FBRztBQUNWLFVBQUk7QUFDRixjQUFNLFNBQVMsbUJBQW1CLElBQUksUUFBUSxXQUFXLElBQUksb0JBQW9CLGNBQWM7QUFDL0YsWUFBSSx3QkFBd0I7QUFDNUIsZUFBTztBQUFBLE1BQ1QsVUFBRTtBQUNBLGlCQUFTLEdBQUc7QUFDWixZQUFJLGVBQWUsY0FBYztBQUFBLE1BQ25DO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLHNCQUF1QixjQUFjO0FBQzVDLFdBQU8sU0FBVSxLQUFLO0FBQ3BCLFlBQU0sSUFBSSxhQUFhLG1CQUFtQixHQUFHO0FBQzdDLFVBQUk7QUFDRixlQUFPLElBQUksY0FBYyxFQUFFLEtBQUs7QUFBQSxNQUNsQyxVQUFFO0FBQ0EsVUFBRSxNQUFNLEdBQUc7QUFBQSxNQUNiO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLGdCQUFpQixhQUFhLGNBQWMsS0FBSztBQUN4RCxVQUFNLEVBQUUsSUFBSSxXQUFXLElBQUksUUFBUSxJQUFJO0FBQ3ZDLFVBQU0sYUFBYSxTQUFTLFNBQVM7QUFDckMsVUFBTSxRQUFRLElBQUksY0FBYztBQUNoQyxVQUFNLGNBQWMsSUFBSSwyQkFBMkI7QUFDbkQsVUFBTSwyQkFBMkIsSUFBSSxTQUFTLFdBQVcsQ0FBQyxDQUFDO0FBQzNELFVBQU0sMEJBQTBCLElBQUksU0FBUyxTQUFTLENBQUMsQ0FBQztBQUV4RCxVQUFNLGdCQUFnQixDQUFDO0FBQ3ZCLFVBQU0sZ0JBQWdCLENBQUM7QUFDdkIsVUFBTSxZQUFZLFFBQVEsU0FBUyxXQUFXLEtBQUs7QUFDbkQsVUFBTSxhQUFhLFFBQVEsU0FBUyxRQUFRLEtBQUs7QUFFakQsVUFBTSxlQUFlLHlCQUF5QixJQUFJLFFBQVEsYUFBYSxNQUFNLHVCQUF1QjtBQUNwRyxRQUFJO0FBQ0YsWUFBTSxJQUFJLElBQUksZUFBZSxZQUFZO0FBRXpDLFVBQUksTUFBTSxHQUFHO0FBQ1gsaUJBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLGNBQUksVUFBVTtBQUNkLGdCQUFNLGNBQWMsSUFBSSxzQkFBc0IsY0FBYyxDQUFDO0FBQzdELGNBQUk7QUFDRix1QkFBVyxJQUFJLG9CQUFvQixXQUFXO0FBQzlDLG9CQUFRLHlCQUF5QixJQUFJLFFBQVEsYUFBYSxZQUFZLHdCQUF3QjtBQUFBLFVBQ2hHLFVBQUU7QUFDQSxnQkFBSSxlQUFlLFdBQVc7QUFBQSxVQUNoQztBQUVBLGNBQUk7QUFDSixjQUFJO0FBQ0YseUJBQWEsY0FBYyxLQUFLLEtBQUssRUFBRSxJQUFJLFVBQVEsUUFBUSxTQUFTLElBQUksQ0FBQztBQUFBLFVBQzNFLFVBQUU7QUFDQSxnQkFBSSxlQUFlLEtBQUs7QUFBQSxVQUMxQjtBQUVBLHdCQUFjLEtBQUssV0FBVyxZQUFZLGNBQWMsb0JBQW9CLFVBQVUsV0FBVyxZQUFZLEdBQUcsQ0FBQztBQUNqSCx3QkFBYyxLQUFLLFdBQVcsWUFBWSxjQUFjLGlCQUFpQixVQUFVLFlBQVksWUFBWSxHQUFHLENBQUM7QUFBQSxRQUNqSDtBQUFBLE1BQ0YsT0FBTztBQUNMLGNBQU0sY0FBYyx3QkFBd0IsSUFBSSxRQUFRLGFBQWEsTUFBTSxXQUFXO0FBQ3RGLFlBQUksYUFBYTtBQUNmLGdCQUFNLElBQUksTUFBTSxpQ0FBaUM7QUFBQSxRQUNuRDtBQUVBLGNBQU0sZUFBZSxJQUFJLGVBQWU7QUFDeEMsY0FBTSxxQkFBcUIsSUFBSSxZQUFZLGNBQWMsVUFBVSxLQUFLO0FBRXhFLHNCQUFjLEtBQUssV0FBVyxZQUFZLGNBQWMsb0JBQW9CLG9CQUFvQixXQUFXLENBQUMsR0FBRyxHQUFHLENBQUM7QUFDbkgsc0JBQWMsS0FBSyxXQUFXLFlBQVksY0FBYyxpQkFBaUIsb0JBQW9CLFlBQVksQ0FBQyxHQUFHLEdBQUcsQ0FBQztBQUFBLE1BQ25IO0FBQUEsSUFDRixVQUFFO0FBQ0EsVUFBSSxlQUFlLFlBQVk7QUFBQSxJQUNqQztBQUVBLFFBQUksY0FBYyxXQUFXLEdBQUc7QUFDOUIsWUFBTSxJQUFJLE1BQU0sd0JBQXdCO0FBQUEsSUFDMUM7QUFFQSxXQUFPO0FBQUEsTUFDTCxjQUFjLHFCQUFxQixhQUFhO0FBQUEsTUFDaEQsVUFBVSxxQkFBcUIsYUFBYTtBQUFBLElBQzlDO0FBQUEsRUFDRjtBQUVBLFdBQVMsV0FBWSxNQUFNLE1BQU0sYUFBYSxjQUFjLEtBQUs7QUFDL0QsUUFBSSxLQUFLLFdBQVcsR0FBRyxHQUFHO0FBQ3hCLGFBQU8sbUJBQW1CLE1BQU0sTUFBTSxhQUFhLGNBQWMsR0FBRztBQUFBLElBQ3RFO0FBRUEsV0FBTyxrQkFBa0IsTUFBTSxNQUFNLGFBQWEsY0FBYyxHQUFHO0FBQUEsRUFDckU7QUFFQSxXQUFTLG1CQUFvQixNQUFNLE1BQU0sYUFBYSxjQUFjLEtBQUs7QUFDdkUsVUFBTSxFQUFFLElBQUksUUFBUSxJQUFJO0FBQ3hCLFVBQU0sWUFBWSxLQUFLLE1BQU0sR0FBRyxFQUFFLE1BQU0sQ0FBQztBQUV6QyxVQUFNLFNBQVMsSUFBSSxzQkFBc0I7QUFDekMsVUFBTSwyQkFBMkIsSUFBSSxTQUFTLFdBQVcsQ0FBQyxDQUFDO0FBQzNELFVBQU0sMEJBQTBCLElBQUksU0FBUyxTQUFTLENBQUMsQ0FBQztBQUV4RCxVQUFNLFVBQVUsVUFBVSxJQUFJLFlBQVU7QUFDdEMsWUFBTSxPQUFRLE9BQU8sQ0FBQyxNQUFNLE1BQU8sZ0JBQWdCO0FBQ25ELFlBQU0sV0FBVyxJQUFJLE9BQU8sT0FBTyxDQUFDLENBQUM7QUFFckMsVUFBSTtBQUNKLFlBQU0sYUFBYSxDQUFDO0FBQ3BCLFlBQU0sU0FBUyxJQUFJLGtCQUFrQixhQUFhLFVBQVcsU0FBUyxnQkFBaUIsSUFBSSxDQUFDO0FBQzVGLFVBQUk7QUFDRixjQUFNLFlBQVksQ0FBQyxDQUFDLHdCQUF3QixJQUFJLFFBQVEsUUFBUSxPQUFPLFNBQVM7QUFFaEYsY0FBTSxVQUFVLHlCQUF5QixJQUFJLFFBQVEsUUFBUSxPQUFPLG9CQUFvQjtBQUN4RixZQUFJLHdCQUF3QjtBQUM1QixZQUFJO0FBQ0Ysc0JBQVksUUFBUSxTQUFTLElBQUksWUFBWSxPQUFPLENBQUM7QUFBQSxRQUN2RCxVQUFFO0FBQ0EsY0FBSSxlQUFlLE9BQU87QUFBQSxRQUM1QjtBQUVBLGNBQU0sV0FBVyx5QkFBeUIsSUFBSSxRQUFRLFFBQVEsT0FBTyxpQkFBaUI7QUFDdEYsWUFBSTtBQUNGLGdCQUFNLElBQUksSUFBSSxlQUFlLFFBQVE7QUFFckMsbUJBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLGtCQUFNLElBQUksSUFBSSxzQkFBc0IsVUFBVSxDQUFDO0FBRS9DLGdCQUFJO0FBQ0osZ0JBQUk7QUFDRiw2QkFBZ0IsYUFBYSxNQUFNLElBQUksSUFBSyxJQUFJLGlCQUFpQixDQUFDLElBQUksSUFBSSxZQUFZLENBQUM7QUFBQSxZQUN6RixVQUFFO0FBQ0Esa0JBQUksZUFBZSxDQUFDO0FBQUEsWUFDdEI7QUFFQSxrQkFBTSxVQUFVLFFBQVEsU0FBUyxZQUFZO0FBQzdDLHVCQUFXLEtBQUssT0FBTztBQUFBLFVBQ3pCO0FBQUEsUUFDRixVQUFFO0FBQ0EsY0FBSSxlQUFlLFFBQVE7QUFBQSxRQUM3QjtBQUFBLE1BQ0YsU0FBUyxHQUFHO0FBQ1YsZUFBTztBQUFBLE1BQ1QsVUFBRTtBQUNBLFlBQUksZUFBZSxNQUFNO0FBQUEsTUFDM0I7QUFFQSxhQUFPLFdBQVcsTUFBTSxjQUFjLE1BQU0sVUFBVSxXQUFXLFlBQVksR0FBRztBQUFBLElBQ2xGLENBQUMsRUFDRSxPQUFPLE9BQUssTUFBTSxJQUFJO0FBRXpCLFFBQUksUUFBUSxXQUFXLEdBQUc7QUFDeEIsWUFBTSxJQUFJLE1BQU0sd0JBQXdCO0FBQUEsSUFDMUM7QUFFQSxRQUFJLFNBQVMsV0FBVztBQUN0QixzQ0FBZ0MsT0FBTztBQUFBLElBQ3pDO0FBRUEsVUFBTSxTQUFTLHFCQUFxQixPQUFPO0FBRTNDLFdBQU8sU0FBVSxVQUFVO0FBQ3pCLGFBQU87QUFBQSxJQUNUO0FBQUEsRUFDRjtBQUVBLFdBQVMscUJBQXNCLFdBQVc7QUFDeEMsVUFBTSxJQUFJLDZCQUE2QjtBQUN2QyxXQUFPLGVBQWUsR0FBRyxtQkFBbUI7QUFDNUMsTUFBRSxLQUFLO0FBQ1AsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLCtCQUFnQztBQUN2QyxVQUFNLElBQUksV0FBWTtBQUNwQixhQUFPLEVBQUUsT0FBTyxNQUFNLFNBQVM7QUFBQSxJQUNqQztBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsd0JBQXNCLE9BQU8sT0FBTyxTQUFTLFdBQVc7QUFBQSxJQUN0RCxXQUFXO0FBQUEsTUFDVCxZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLO0FBQUEsTUFDZDtBQUFBLElBQ0Y7QUFBQSxJQUNBLFVBQVU7QUFBQSxNQUNSLFNBQVUsTUFBTTtBQUNkLGNBQU0sWUFBWSxLQUFLO0FBRXZCLGNBQU0sVUFBVSxLQUFLO0FBQ3JCLGNBQU0sWUFBWSxLQUFLLEtBQUssR0FBRztBQUUvQixpQkFBUyxJQUFJLEdBQUcsTUFBTSxVQUFVLFFBQVEsS0FBSztBQUMzQyxnQkFBTSxTQUFTLFVBQVUsQ0FBQztBQUMxQixnQkFBTSxFQUFFLGNBQWMsSUFBSTtBQUUxQixjQUFJLGNBQWMsV0FBVyxTQUFTO0FBQ3BDO0FBQUEsVUFDRjtBQUVBLGdCQUFNLElBQUksY0FBYyxJQUFJLE9BQUssRUFBRSxTQUFTLEVBQUUsS0FBSyxHQUFHO0FBQ3RELGNBQUksTUFBTSxXQUFXO0FBQ25CLG1CQUFPO0FBQUEsVUFDVDtBQUFBLFFBQ0Y7QUFFQSwyQkFBbUIsS0FBSyxZQUFZLEtBQUssV0FBVywrQ0FBK0M7QUFBQSxNQUNyRztBQUFBLElBQ0Y7QUFBQSxJQUNBLFlBQVk7QUFBQSxNQUNWLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDLEVBQUU7QUFBQSxNQUNwQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDLEVBQUU7QUFBQSxNQUNwQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLE1BQU07QUFBQSxNQUNKLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDLEVBQUU7QUFBQSxNQUNwQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxtQ0FBMkIsSUFBSTtBQUMvQixlQUFPLEtBQUssR0FBRyxDQUFDLEVBQUU7QUFBQSxNQUNwQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLGdCQUFnQjtBQUFBLE1BQ2QsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLG1DQUEyQixJQUFJO0FBQy9CLGVBQU8sS0FBSyxHQUFHLENBQUMsRUFBRTtBQUFBLE1BQ3BCO0FBQUEsTUFDQSxJQUFLLElBQUk7QUFDUCxtQ0FBMkIsSUFBSTtBQUMvQixhQUFLLEdBQUcsQ0FBQyxFQUFFLGlCQUFpQjtBQUFBLE1BQzlCO0FBQUEsSUFDRjtBQUFBLElBQ0EsWUFBWTtBQUFBLE1BQ1YsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLG1DQUEyQixJQUFJO0FBQy9CLGVBQU8sS0FBSyxHQUFHLENBQUMsRUFBRTtBQUFBLE1BQ3BCO0FBQUEsSUFDRjtBQUFBLElBQ0EsZUFBZTtBQUFBLE1BQ2IsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLG1DQUEyQixJQUFJO0FBQy9CLGVBQU8sS0FBSyxHQUFHLENBQUMsRUFBRTtBQUFBLE1BQ3BCO0FBQUEsSUFDRjtBQUFBLElBQ0EsZUFBZTtBQUFBLE1BQ2IsWUFBWTtBQUFBLE1BQ1osSUFBSyxNQUFNO0FBQ1QsbUNBQTJCLElBQUk7QUFDL0IsZUFBTyxLQUFLLEdBQUcsQ0FBQyxFQUFFO0FBQUEsTUFDcEI7QUFBQSxJQUNGO0FBQUEsSUFDQSxPQUFPO0FBQUEsTUFDTCxZQUFZO0FBQUEsTUFDWixNQUFPLFNBQVM7QUFDZCxtQ0FBMkIsSUFBSTtBQUMvQixlQUFPLEtBQUssR0FBRyxDQUFDLEVBQUUsTUFBTSxPQUFPO0FBQUEsTUFDakM7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixNQUFPLFVBQVUsTUFBTTtBQUNyQixjQUFNLFlBQVksS0FBSztBQUV2QixjQUFNLGFBQWEsU0FBUyxPQUFPO0FBRW5DLGlCQUFTLElBQUksR0FBRyxNQUFNLFVBQVUsUUFBUSxLQUFLO0FBQzNDLGdCQUFNLFNBQVMsVUFBVSxDQUFDO0FBRTFCLGNBQUksQ0FBQyxPQUFPLGNBQWMsSUFBSSxHQUFHO0FBQy9CO0FBQUEsVUFDRjtBQUVBLGNBQUksT0FBTyxTQUFTLG1CQUFtQixDQUFDLFlBQVk7QUFDbEQsa0JBQU0sT0FBTyxLQUFLO0FBRWxCLGdCQUFJLFNBQVMsWUFBWTtBQUN2QixxQkFBTyxXQUFXLFNBQVMsRUFBRTtBQUFBLFlBQy9CO0FBRUEsa0JBQU0sSUFBSSxNQUFNLE9BQU8sbURBQW1EO0FBQUEsVUFDNUU7QUFFQSxpQkFBTyxPQUFPLE1BQU0sVUFBVSxJQUFJO0FBQUEsUUFDcEM7QUFFQSxZQUFJLEtBQUssZUFBZSxZQUFZO0FBQ2xDLGlCQUFPLFdBQVcsU0FBUyxFQUFFO0FBQUEsUUFDL0I7QUFFQSwyQkFBbUIsS0FBSyxZQUFZLEtBQUssV0FBVyxxQ0FBcUM7QUFBQSxNQUMzRjtBQUFBLElBQ0Y7QUFBQSxFQUNGLENBQUM7QUFFRCxXQUFTLGVBQWdCLE1BQU0sWUFBWSxlQUFlO0FBQ3hELFdBQU8sR0FBRyxXQUFXLFNBQVMsSUFBSSxJQUFJLElBQUksY0FBYyxJQUFJLE9BQUssRUFBRSxTQUFTLEVBQUUsS0FBSyxJQUFJLENBQUM7QUFBQSxFQUMxRjtBQUVBLFdBQVMsMkJBQTRCLFlBQVk7QUFDL0MsVUFBTSxVQUFVLFdBQVc7QUFDM0IsUUFBSSxRQUFRLFNBQVMsR0FBRztBQUN0Qix5QkFBbUIsUUFBUSxDQUFDLEVBQUUsWUFBWSxTQUFTLHdFQUF3RTtBQUFBLElBQzdIO0FBQUEsRUFDRjtBQUVBLFdBQVMsbUJBQW9CLE1BQU0sU0FBUyxTQUFTO0FBQ25ELFVBQU0sdUJBQXVCLFFBQVEsTUFBTSxFQUFFLEtBQUssQ0FBQyxHQUFHLE1BQU0sRUFBRSxjQUFjLFNBQVMsRUFBRSxjQUFjLE1BQU07QUFDM0csVUFBTSxZQUFZLHFCQUFxQixJQUFJLE9BQUs7QUFDOUMsWUFBTSxXQUFXLEVBQUU7QUFDbkIsVUFBSSxTQUFTLFNBQVMsR0FBRztBQUN2QixlQUFPLGdCQUFpQixFQUFFLGNBQWMsSUFBSSxPQUFLLEVBQUUsU0FBUyxFQUFFLEtBQUssTUFBUSxJQUFJO0FBQUEsTUFDakYsT0FBTztBQUNMLGVBQU87QUFBQSxNQUNUO0FBQUEsSUFDRixDQUFDO0FBQ0QsVUFBTSxJQUFJLE1BQU0sR0FBRyxJQUFJLE9BQU8sT0FBTztBQUFBLEdBQU8sVUFBVSxLQUFLLEtBQU0sQ0FBQyxFQUFFO0FBQUEsRUFDdEU7QUFFQSxXQUFTLFdBQVksWUFBWSxjQUFjLE1BQU0sVUFBVSxTQUFTLFVBQVUsS0FBSyxtQkFBbUI7QUFDeEcsVUFBTSxhQUFhLFFBQVE7QUFDM0IsVUFBTSxjQUFjLFNBQVMsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJO0FBRTlDLFFBQUksUUFBUSxNQUFNO0FBQ2hCLFlBQU1BLElBQUcsT0FBTztBQUFBLElBQ2xCO0FBRUEsUUFBSSxlQUFlO0FBQ25CLFFBQUksU0FBUyxpQkFBaUI7QUFDNUIsc0JBQWdCLElBQUksU0FBUyxZQUFZLGFBQWEsaUJBQWlCO0FBQ3ZFLHFCQUFlLElBQUksbUJBQW1CLFlBQVksYUFBYSxpQkFBaUI7QUFBQSxJQUNsRixXQUFXLFNBQVMsZUFBZTtBQUNqQyxzQkFBZ0IsSUFBSSxlQUFlLFlBQVksYUFBYSxpQkFBaUI7QUFDN0UscUJBQWU7QUFBQSxJQUNqQixPQUFPO0FBQ0wsc0JBQWdCLElBQUksWUFBWSxhQUFhLGlCQUFpQjtBQUM5RCxxQkFBZTtBQUFBLElBQ2pCO0FBRUEsV0FBTyxtQkFBbUIsQ0FBQyxZQUFZLGNBQWMsTUFBTSxVQUFVLFNBQVMsVUFBVSxlQUFlLFlBQVksQ0FBQztBQUFBLEVBQ3RIO0FBRUEsV0FBUyxtQkFBb0IsUUFBUTtBQUNuQyxVQUFNLElBQUksbUJBQW1CO0FBQzdCLFdBQU8sZUFBZSxHQUFHLGVBQWU7QUFDeEMsTUFBRSxLQUFLO0FBQ1AsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLHFCQUFzQjtBQUM3QixVQUFNLElBQUksV0FBWTtBQUNwQixhQUFPLEVBQUUsT0FBTyxNQUFNLFNBQVM7QUFBQSxJQUNqQztBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEsb0JBQWtCLE9BQU8sT0FBTyxTQUFTLFdBQVc7QUFBQSxJQUNsRCxZQUFZO0FBQUEsTUFDVixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLEdBQUcsQ0FBQztBQUFBLE1BQ2xCO0FBQUEsSUFDRjtBQUFBLElBQ0EsUUFBUTtBQUFBLE1BQ04sWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxHQUFHLENBQUM7QUFBQSxNQUNsQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLE1BQU07QUFBQSxNQUNKLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDO0FBQUEsTUFDbEI7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLEdBQUcsQ0FBQztBQUFBLE1BQ2xCO0FBQUEsSUFDRjtBQUFBLElBQ0EsZ0JBQWdCO0FBQUEsTUFDZCxZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsY0FBTSxjQUFjLEtBQUs7QUFDekIsZUFBUSxnQkFBZ0IsU0FBYSxjQUFjO0FBQUEsTUFDckQ7QUFBQSxNQUNBLElBQUssSUFBSTtBQUNQLGNBQU0sU0FBUyxLQUFLO0FBQ3BCLGNBQU0sU0FBUyxPQUFPLENBQUM7QUFDdkIsY0FBTSxPQUFPLE9BQU8sQ0FBQztBQUVyQixZQUFJLFNBQVMsb0JBQW9CO0FBQy9CLGdCQUFNLElBQUksTUFBTSw4RUFBOEU7QUFBQSxRQUNoRztBQUVBLGNBQU0sc0JBQXNCLEtBQUs7QUFDakMsWUFBSSx3QkFBd0IsUUFBVztBQUNyQyxpQkFBTyxHQUFHLGdCQUFnQixPQUFPLElBQUk7QUFFckMsZ0JBQU0sVUFBVSxvQkFBb0I7QUFDcEMsa0JBQVEsT0FBT0EsR0FBRTtBQUVqQixlQUFLLEtBQUs7QUFBQSxRQUNaO0FBRUEsWUFBSSxPQUFPLE1BQU07QUFDZixnQkFBTSxDQUFDLFlBQVksY0FBY1MsT0FBTSxVQUFVLFNBQVMsUUFBUSxJQUFJO0FBRXRFLGdCQUFNLGNBQWMsVUFBVSxZQUFZLGNBQWNBLE9BQU0sU0FBUyxVQUFVLElBQUksSUFBSTtBQUN6RixnQkFBTSxVQUFVWixtQkFBa0IsUUFBUTtBQUMxQyxzQkFBWSxLQUFLO0FBQ2pCLGVBQUssS0FBSztBQUVWLGtCQUFRLFFBQVEsYUFBYVksVUFBUyxpQkFBaUIsVUFBVVQsS0FBSSxHQUFHO0FBRXhFLGlCQUFPLEdBQUcsZ0JBQWdCLElBQUksSUFBSTtBQUFBLFFBQ3BDO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFlBQVk7QUFBQSxNQUNWLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDO0FBQUEsTUFDbEI7QUFBQSxJQUNGO0FBQUEsSUFDQSxlQUFlO0FBQUEsTUFDYixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLEdBQUcsQ0FBQztBQUFBLE1BQ2xCO0FBQUEsSUFDRjtBQUFBLElBQ0EsZUFBZTtBQUFBLE1BQ2IsWUFBWTtBQUFBLE1BQ1osTUFBTyxNQUFNO0FBQ1gsY0FBTSxXQUFXLEtBQUssR0FBRyxDQUFDO0FBRTFCLFlBQUksS0FBSyxXQUFXLFNBQVMsUUFBUTtBQUNuQyxpQkFBTztBQUFBLFFBQ1Q7QUFFQSxlQUFPLFNBQVMsTUFBTSxDQUFDLEdBQUcsTUFBTTtBQUM5QixpQkFBTyxFQUFFLGFBQWEsS0FBSyxDQUFDLENBQUM7QUFBQSxRQUMvQixDQUFDO0FBQUEsTUFDSDtBQUFBLElBQ0Y7QUFBQSxJQUNBLE9BQU87QUFBQSxNQUNMLFlBQVk7QUFBQSxNQUNaLE1BQU8sU0FBUztBQUNkLGNBQU0sU0FBUyxLQUFLLEdBQUcsTUFBTSxHQUFHLENBQUM7QUFDakMsZUFBTyxXQUFXLEdBQUcsUUFBUSxNQUFNLE9BQU87QUFBQSxNQUM1QztBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLE1BQU8sVUFBVSxNQUFNO0FBQ3JCLGNBQU0sTUFBTUEsSUFBRyxPQUFPO0FBRXRCLGNBQU0sU0FBUyxLQUFLO0FBQ3BCLGNBQU0sT0FBTyxPQUFPLENBQUM7QUFDckIsY0FBTSxVQUFVLE9BQU8sQ0FBQztBQUN4QixjQUFNLFdBQVcsT0FBTyxDQUFDO0FBRXpCLGNBQU0sY0FBYyxLQUFLO0FBRXpCLGNBQU0sbUJBQW1CLFNBQVM7QUFDbEMsY0FBTSxVQUFVLEtBQUs7QUFFckIsY0FBTSxnQkFBZ0IsSUFBSTtBQUMxQixZQUFJLGVBQWUsYUFBYTtBQUVoQyxZQUFJLGlCQUFpQjtBQUNyQixZQUFJO0FBQ0YsY0FBSTtBQUNKLGNBQUksa0JBQWtCO0FBQ3BCLHNCQUFVLFNBQVMsV0FBVztBQUFBLFVBQ2hDLE9BQU87QUFDTCw2QkFBaUIsU0FBUyxtQkFBbUIsR0FBRztBQUNoRCxzQkFBVSxlQUFlO0FBQUEsVUFDM0I7QUFFQSxjQUFJO0FBQ0osY0FBSSxXQUFXLFNBQVM7QUFDeEIsY0FBSSxnQkFBZ0IsUUFBVztBQUM3Qix1QkFBVyxPQUFPLENBQUM7QUFBQSxVQUNyQixPQUFPO0FBQ0wsa0JBQU0sVUFBVSxZQUFZO0FBQzVCLHVCQUFXLFFBQVEsY0FBYyxVQUFVLGtCQUFrQixLQUFLLEdBQUc7QUFFckUsZ0JBQUksU0FBUztBQUNYLG9CQUFNLGVBQWUsWUFBWTtBQUNqQyxrQkFBSSxhQUFhLElBQUksbUJBQW1CLENBQUMsR0FBRztBQUMxQywyQkFBVztBQUFBLGNBQ2I7QUFBQSxZQUNGO0FBQUEsVUFDRjtBQUVBLGdCQUFNLFVBQVU7QUFBQSxZQUNkLElBQUk7QUFBQSxZQUNKO0FBQUEsWUFDQTtBQUFBLFVBQ0Y7QUFDQSxtQkFBUyxJQUFJLEdBQUcsTUFBTSxTQUFTLEtBQUs7QUFDbEMsb0JBQVEsS0FBSyxTQUFTLENBQUMsRUFBRSxNQUFNLEtBQUssQ0FBQyxHQUFHLEdBQUcsQ0FBQztBQUFBLFVBQzlDO0FBRUEsY0FBSTtBQUNKLGNBQUksYUFBYSxrQkFBa0I7QUFDakMsc0JBQVUsT0FBTyxDQUFDO0FBQUEsVUFDcEIsT0FBTztBQUNMLHNCQUFVLE9BQU8sQ0FBQztBQUVsQixnQkFBSSxrQkFBa0I7QUFDcEIsc0JBQVEsT0FBTyxHQUFHLEdBQUcsU0FBUyxpQkFBaUIsR0FBRyxDQUFDO0FBQUEsWUFDckQ7QUFBQSxVQUNGO0FBRUEsZ0JBQU0sWUFBWSxRQUFRLE1BQU0sTUFBTSxPQUFPO0FBQzdDLGNBQUksd0JBQXdCO0FBRTVCLGlCQUFPLFFBQVEsUUFBUSxXQUFXLEtBQUssSUFBSTtBQUFBLFFBQzdDLFVBQUU7QUFDQSxjQUFJLG1CQUFtQixNQUFNO0FBQzNCLDJCQUFlLE1BQU0sR0FBRztBQUFBLFVBQzFCO0FBRUEsY0FBSSxjQUFjLElBQUk7QUFBQSxRQUN4QjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsSUFDQSxVQUFVO0FBQUEsTUFDUixZQUFZO0FBQUEsTUFDWixRQUFTO0FBQ1AsZUFBTyxZQUFZLEtBQUssVUFBVSxJQUFJLEtBQUssY0FBYyxJQUFJLE9BQUssRUFBRSxTQUFTLEVBQUUsS0FBSyxJQUFJLENBQUMsTUFBTSxLQUFLLFdBQVcsU0FBUztBQUFBLE1BQzFIO0FBQUEsSUFDRjtBQUFBLEVBQ0YsQ0FBQztBQUVELFdBQVMsVUFBVyxZQUFZLGNBQWMsTUFBTSxTQUFTLFVBQVUsU0FBUyxXQUFXLE1BQU07QUFDL0YsVUFBTSxlQUFlLG9CQUFJLElBQUk7QUFFN0IsVUFBTSxJQUFJLHlCQUF5QixDQUFDLFlBQVksY0FBYyxNQUFNLFNBQVMsVUFBVSxTQUFTLFVBQVUsWUFBWSxDQUFDO0FBRXZILFVBQU0sT0FBTyxJQUFJLGVBQWUsR0FBRyxRQUFRLE1BQU0sQ0FBQyxXQUFXLFNBQVMsRUFBRSxPQUFPLFNBQVMsSUFBSSxPQUFLLEVBQUUsSUFBSSxDQUFDLENBQUM7QUFDekcsU0FBSyxLQUFLO0FBRVYsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLHlCQUEwQixRQUFRO0FBQ3pDLFdBQU8sV0FBWTtBQUNqQixhQUFPLHVCQUF1QixXQUFXLE1BQU07QUFBQSxJQUNqRDtBQUFBLEVBQ0Y7QUFFQSxXQUFTLHVCQUF3QixTQUFTLFFBQVE7QUFDaEQsVUFBTSxNQUFNLElBQUksSUFBSSxRQUFRLENBQUMsR0FBR0EsR0FBRTtBQUVsQyxVQUFNLENBQUMsWUFBWSxjQUFjLE1BQU0sU0FBUyxVQUFVLFNBQVMsVUFBVSxZQUFZLElBQUk7QUFFN0YsVUFBTSxlQUFlLENBQUM7QUFFdEIsUUFBSTtBQUNKLFFBQUksU0FBUyxpQkFBaUI7QUFDNUIsWUFBTSxJQUFJLGFBQWE7QUFDdkIsYUFBTyxJQUFJLEVBQUUsUUFBUSxDQUFDLEdBQUcsa0JBQWtCLEtBQUssS0FBSztBQUFBLElBQ3ZELE9BQU87QUFDTCxhQUFPO0FBQUEsSUFDVDtBQUVBLFVBQU0sTUFBTSxtQkFBbUI7QUFFL0IsUUFBSSxlQUFlLENBQUM7QUFDcEIsUUFBSSxZQUFZO0FBRWhCLElBQUFBLElBQUcsS0FBSyxLQUFLLEdBQUc7QUFFaEIsUUFBSTtBQUNGLG1CQUFhLElBQUksR0FBRztBQUVwQixVQUFJO0FBQ0osVUFBSSxhQUFhLFFBQVEsQ0FBQyxlQUFlLElBQUksR0FBRyxHQUFHO0FBQ2pELGFBQUs7QUFBQSxNQUNQLE9BQU87QUFDTCxhQUFLO0FBQUEsTUFDUDtBQUVBLFlBQU0sT0FBTyxDQUFDO0FBQ2QsWUFBTSxVQUFVLFFBQVEsU0FBUztBQUNqQyxlQUFTLElBQUksR0FBRyxNQUFNLFNBQVMsS0FBSztBQUNsQyxjQUFNLElBQUksU0FBUyxDQUFDO0FBRXBCLGNBQU0sUUFBUSxFQUFFLFFBQVEsUUFBUSxJQUFJLENBQUMsR0FBRyxLQUFLLEtBQUs7QUFDbEQsYUFBSyxLQUFLLEtBQUs7QUFFZixxQkFBYSxLQUFLLEtBQUs7QUFBQSxNQUN6QjtBQUVBLFlBQU0sU0FBUyxHQUFHLE1BQU0sTUFBTSxJQUFJO0FBRWxDLFVBQUksQ0FBQyxRQUFRLGFBQWEsTUFBTSxHQUFHO0FBQ2pDLGNBQU0sSUFBSSxNQUFNLHNCQUFzQixVQUFVLDBDQUEwQyxRQUFRLFNBQVMsRUFBRTtBQUFBLE1BQy9HO0FBRUEsVUFBSSxZQUFZLFFBQVEsTUFBTSxRQUFRLEdBQUc7QUFFekMsVUFBSSxRQUFRLFNBQVMsV0FBVztBQUM5QixvQkFBWSxJQUFJLGNBQWMsU0FBUztBQUN2QyxvQkFBWTtBQUVaLHFCQUFhLEtBQUssTUFBTTtBQUFBLE1BQzFCO0FBRUEsYUFBTztBQUFBLElBQ1QsU0FBUyxHQUFHO0FBQ1YsWUFBTSxlQUFlLEVBQUU7QUFDdkIsVUFBSSxpQkFBaUIsUUFBVztBQUM5QixZQUFJLE1BQU0sWUFBWTtBQUFBLE1BQ3hCLE9BQU87QUFDTCxlQUFPLFNBQVMsTUFBTTtBQUFFLGdCQUFNO0FBQUEsUUFBRyxDQUFDO0FBQUEsTUFDcEM7QUFFQSxhQUFPLFFBQVE7QUFBQSxJQUNqQixVQUFFO0FBQ0EsTUFBQUEsSUFBRyxPQUFPLEdBQUc7QUFFYixVQUFJLFdBQVc7QUFDYixZQUFJLGNBQWMsSUFBSTtBQUFBLE1BQ3hCO0FBRUEsbUJBQWEsT0FBTyxHQUFHO0FBRXZCLG1CQUFhLFFBQVEsU0FBTztBQUMxQixZQUFJLFFBQVEsTUFBTTtBQUNoQjtBQUFBLFFBQ0Y7QUFFQSxjQUFNLFVBQVUsSUFBSTtBQUNwQixZQUFJLFlBQVksUUFBVztBQUN6QixrQkFBUSxLQUFLLEdBQUc7QUFBQSxRQUNsQjtBQUFBLE1BQ0YsQ0FBQztBQUFBLElBQ0g7QUFBQSxFQUNGO0FBRUEsV0FBUyxnQ0FBaUMsU0FBUztBQUNqRCxVQUFNLEVBQUUsUUFBUSxLQUFLLElBQUksUUFBUSxDQUFDO0FBRWxDLFVBQU0sb0JBQW9CLFFBQVEsS0FBSyxPQUFLLEVBQUUsU0FBUyxRQUFRLEVBQUUsY0FBYyxXQUFXLENBQUM7QUFDM0YsUUFBSSxtQkFBbUI7QUFDckI7QUFBQSxJQUNGO0FBRUEsWUFBUSxLQUFLLGtCQUFrQixDQUFDLFFBQVEsSUFBSSxDQUFDLENBQUM7QUFBQSxFQUNoRDtBQUVBLFdBQVMsa0JBQW1CLFFBQVE7QUFDbEMsVUFBTSxJQUFJLG9CQUFvQjtBQUM5QixXQUFPLGVBQWUsR0FBRyxnQkFBZ0I7QUFDekMsTUFBRSxLQUFLO0FBQ1AsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLHNCQUF1QjtBQUM5QixVQUFNLElBQUksV0FBWTtBQUNwQixhQUFPO0FBQUEsSUFDVDtBQUNBLFdBQU87QUFBQSxFQUNUO0FBRUEscUJBQW1CLE9BQU8sT0FBTyxTQUFTLFdBQVc7QUFBQSxJQUNuRCxZQUFZO0FBQUEsTUFDVixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTztBQUFBLE1BQ1Q7QUFBQSxJQUNGO0FBQUEsSUFDQSxRQUFRO0FBQUEsTUFDTixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxLQUFLLEdBQUcsQ0FBQztBQUFBLE1BQ2xCO0FBQUEsSUFDRjtBQUFBLElBQ0EsTUFBTTtBQUFBLE1BQ0osWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxHQUFHLENBQUM7QUFBQSxNQUNsQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFFBQVE7QUFBQSxNQUNOLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPO0FBQUEsTUFDVDtBQUFBLElBQ0Y7QUFBQSxJQUNBLGdCQUFnQjtBQUFBLE1BQ2QsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU87QUFBQSxNQUNUO0FBQUEsTUFDQSxJQUFLLElBQUk7QUFBQSxNQUNUO0FBQUEsSUFDRjtBQUFBLElBQ0EsWUFBWTtBQUFBLE1BQ1YsWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGNBQU0sZUFBZSxLQUFLO0FBQzFCLGVBQU8sYUFBYSxHQUFHLElBQUksYUFBYSxFQUFFO0FBQUEsTUFDNUM7QUFBQSxJQUNGO0FBQUEsSUFDQSxlQUFlO0FBQUEsTUFDYixZQUFZO0FBQUEsTUFDWixNQUFPO0FBQ0wsZUFBTyxDQUFDO0FBQUEsTUFDVjtBQUFBLElBQ0Y7QUFBQSxJQUNBLGVBQWU7QUFBQSxNQUNiLFlBQVk7QUFBQSxNQUNaLE1BQU8sTUFBTTtBQUNYLGVBQU8sS0FBSyxXQUFXO0FBQUEsTUFDekI7QUFBQSxJQUNGO0FBQUEsSUFDQSxPQUFPO0FBQUEsTUFDTCxZQUFZO0FBQUEsTUFDWixNQUFPLFNBQVM7QUFDZCxjQUFNLElBQUksTUFBTSxtQkFBbUI7QUFBQSxNQUNyQztBQUFBLElBQ0Y7QUFBQSxFQUNGLENBQUM7QUFFRCxXQUFTLGtCQUFtQixNQUFNLE1BQU0sYUFBYSxjQUFjLEtBQUs7QUFDdEUsVUFBTSxPQUFRLEtBQUssQ0FBQyxNQUFNLE1BQU8sZUFBZTtBQUNoRCxVQUFNLEtBQUssSUFBSSxLQUFLLE9BQU8sQ0FBQyxDQUFDO0FBQzdCLFVBQU0sRUFBRSxJQUFJLFFBQVEsSUFBSTtBQUV4QixRQUFJO0FBQ0osVUFBTSxRQUFRLElBQUksaUJBQWlCLGFBQWEsSUFBSyxTQUFTLGVBQWdCLElBQUksQ0FBQztBQUNuRixRQUFJO0FBQ0Ysa0JBQVksSUFBSSxTQUFTLFdBQVcsQ0FBQyxDQUFDLEVBQUUsSUFBSSxRQUFRLE9BQU8sSUFBSSxxQkFBcUIsRUFBRSxjQUFjO0FBQ3BHLFVBQUksd0JBQXdCO0FBQUEsSUFDOUIsVUFBRTtBQUNBLFVBQUksZUFBZSxLQUFLO0FBQUEsSUFDMUI7QUFFQSxRQUFJO0FBQ0osUUFBSTtBQUNGLGNBQVEsUUFBUSxTQUFTLElBQUksWUFBWSxTQUFTLENBQUM7QUFBQSxJQUNyRCxVQUFFO0FBQ0EsVUFBSSxlQUFlLFNBQVM7QUFBQSxJQUM5QjtBQUVBLFFBQUksVUFBVTtBQUNkLFVBQU0sV0FBVyxNQUFNO0FBQ3ZCLFFBQUksU0FBUyxjQUFjO0FBQ3pCLGlCQUFXLElBQUksZUFBZSxRQUFRO0FBQ3RDLGlCQUFXLElBQUksZUFBZSxRQUFRO0FBQUEsSUFDeEMsT0FBTztBQUNMLGlCQUFXLElBQUksU0FBUyxRQUFRO0FBQ2hDLGlCQUFXLElBQUksU0FBUyxRQUFRO0FBQUEsSUFDbEM7QUFFQSxXQUFPLG9CQUFvQixDQUFDLE1BQU0sT0FBTyxJQUFJLFVBQVUsUUFBUSxDQUFDO0FBQUEsRUFDbEU7QUFFQSxXQUFTLG9CQUFxQixRQUFRO0FBQ3BDLFdBQU8sU0FBVSxVQUFVO0FBQ3pCLGFBQU8sSUFBSSxNQUFNLENBQUMsUUFBUSxFQUFFLE9BQU8sTUFBTSxDQUFDO0FBQUEsSUFDNUM7QUFBQSxFQUNGO0FBRUEsV0FBUyxNQUFPLFFBQVE7QUFDdEIsU0FBSyxLQUFLO0FBQUEsRUFDWjtBQUVBLFNBQU8saUJBQWlCLE1BQU0sV0FBVztBQUFBLElBQ3ZDLE9BQU87QUFBQSxNQUNMLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxjQUFNLENBQUMsUUFBUSxNQUFNLE9BQU8sSUFBSSxRQUFRLElBQUksS0FBSztBQUVqRCxjQUFNLE1BQU1BLElBQUcsT0FBTztBQUN0QixZQUFJLGVBQWUsQ0FBQztBQUVwQixZQUFJLGlCQUFpQjtBQUNyQixZQUFJO0FBQ0YsY0FBSTtBQUNKLGNBQUksU0FBUyxnQkFBZ0I7QUFDM0Isc0JBQVUsT0FBTyxXQUFXO0FBQzVCLGdCQUFJLFlBQVksTUFBTTtBQUNwQixvQkFBTSxJQUFJLE1BQU0scURBQXFEO0FBQUEsWUFDdkU7QUFBQSxVQUNGLE9BQU87QUFDTCw2QkFBaUIsT0FBTyxtQkFBbUIsR0FBRztBQUM5QyxzQkFBVSxlQUFlO0FBQUEsVUFDM0I7QUFFQSxnQkFBTSxZQUFZLFNBQVMsSUFBSSxRQUFRLFNBQVMsRUFBRTtBQUNsRCxjQUFJLHdCQUF3QjtBQUU1QixpQkFBTyxNQUFNLFFBQVEsV0FBVyxLQUFLLElBQUk7QUFBQSxRQUMzQyxVQUFFO0FBQ0EsY0FBSSxtQkFBbUIsTUFBTTtBQUMzQiwyQkFBZSxNQUFNLEdBQUc7QUFBQSxVQUMxQjtBQUVBLGNBQUksY0FBYyxJQUFJO0FBQUEsUUFDeEI7QUFBQSxNQUNGO0FBQUEsTUFDQSxJQUFLLE9BQU87QUFDVixjQUFNLENBQUMsUUFBUSxNQUFNLE9BQU8sSUFBSSxFQUFFLFFBQVEsSUFBSSxLQUFLO0FBRW5ELGNBQU0sTUFBTUEsSUFBRyxPQUFPO0FBQ3RCLFlBQUksZUFBZSxDQUFDO0FBRXBCLFlBQUksaUJBQWlCO0FBQ3JCLFlBQUk7QUFDRixjQUFJO0FBQ0osY0FBSSxTQUFTLGdCQUFnQjtBQUMzQixzQkFBVSxPQUFPLFdBQVc7QUFDNUIsZ0JBQUksWUFBWSxNQUFNO0FBQ3BCLG9CQUFNLElBQUksTUFBTSxxREFBcUQ7QUFBQSxZQUN2RTtBQUFBLFVBQ0YsT0FBTztBQUNMLDZCQUFpQixPQUFPLG1CQUFtQixHQUFHO0FBQzlDLHNCQUFVLGVBQWU7QUFBQSxVQUMzQjtBQUVBLGNBQUksQ0FBQyxNQUFNLGFBQWEsS0FBSyxHQUFHO0FBQzlCLGtCQUFNLElBQUksTUFBTSxrQ0FBa0MsTUFBTSxTQUFTLEVBQUU7QUFBQSxVQUNyRTtBQUNBLGdCQUFNLFdBQVcsTUFBTSxNQUFNLE9BQU8sR0FBRztBQUV2QyxtQkFBUyxJQUFJLFFBQVEsU0FBUyxJQUFJLFFBQVE7QUFDMUMsY0FBSSx3QkFBd0I7QUFBQSxRQUM5QixVQUFFO0FBQ0EsY0FBSSxtQkFBbUIsTUFBTTtBQUMzQiwyQkFBZSxNQUFNLEdBQUc7QUFBQSxVQUMxQjtBQUVBLGNBQUksY0FBYyxJQUFJO0FBQUEsUUFDeEI7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLElBQ0EsUUFBUTtBQUFBLE1BQ04sWUFBWTtBQUFBLE1BQ1osTUFBTztBQUNMLGVBQU8sS0FBSyxHQUFHLENBQUM7QUFBQSxNQUNsQjtBQUFBLElBQ0Y7QUFBQSxJQUNBLFdBQVc7QUFBQSxNQUNULFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDO0FBQUEsTUFDbEI7QUFBQSxJQUNGO0FBQUEsSUFDQSxpQkFBaUI7QUFBQSxNQUNmLFlBQVk7QUFBQSxNQUNaLE1BQU87QUFDTCxlQUFPLEtBQUssR0FBRyxDQUFDO0FBQUEsTUFDbEI7QUFBQSxJQUNGO0FBQUEsSUFDQSxVQUFVO0FBQUEsTUFDUixZQUFZO0FBQUEsTUFDWixRQUFTO0FBQ1AsY0FBTSxlQUFlLHNCQUFzQixLQUFLLE1BQU0sZ0JBQWdCLEtBQUssU0FBUyxzQkFBc0IsS0FBSyxlQUFlLFlBQVksS0FBSyxLQUFLO0FBQ3BKLFlBQUksYUFBYSxTQUFTLEtBQUs7QUFDN0IsaUJBQU87QUFBQSxRQUNUO0FBQ0EsY0FBTSxrQkFBa0I7QUFBQSxXQUNsQixLQUFLLE1BQU07QUFBQSxjQUNSLEtBQUssU0FBUztBQUFBLG9CQUNSLEtBQUssZUFBZTtBQUFBLFVBQzlCLEtBQUssS0FBSztBQUFBO0FBRWYsZUFBTyxnQkFBZ0IsTUFBTSxJQUFJLEVBQUUsSUFBSSxPQUFLLEVBQUUsU0FBUyxNQUFNLEVBQUUsTUFBTSxHQUFHLEVBQUUsUUFBUSxHQUFHLElBQUksQ0FBQyxJQUFJLFNBQVMsQ0FBQyxFQUFFLEtBQUssSUFBSTtBQUFBLE1BQ3JIO0FBQUEsSUFDRjtBQUFBLEVBQ0YsQ0FBQztBQUVELE1BQU0sVUFBTixNQUFNLFNBQVE7QUFBQSxJQUNaLE9BQU8sV0FBWSxRQUFRLFNBQVM7QUFDbEMsWUFBTSxZQUFZLG1CQUFtQixPQUFPO0FBQzVDLFlBQU0sV0FBVyxVQUFVLGlCQUFpQixFQUFFLFNBQVM7QUFFdkQsWUFBTSxPQUFPLElBQUksS0FBSyxVQUFVLEdBQUc7QUFDbkMsV0FBSyxNQUFNLE9BQU8sTUFBTTtBQUN4QixXQUFLLE1BQU07QUFDWCxxQkFBZSxVQUFVLE9BQU87QUFFaEMsYUFBTyxJQUFJLFNBQVEsVUFBVSxXQUFXLE9BQU87QUFBQSxJQUNqRDtBQUFBLElBRUEsWUFBYSxNQUFNLE1BQU0sU0FBUztBQUNoQyxXQUFLLE9BQU87QUFDWixXQUFLLE9BQU87QUFFWixXQUFLLFdBQVc7QUFBQSxJQUNsQjtBQUFBLElBRUEsT0FBUTtBQUNOLFlBQU0sRUFBRSxVQUFVLFFBQVEsSUFBSTtBQUM5QixZQUFNLEVBQUUsYUFBYSxJQUFJO0FBQ3pCLFlBQU0saUJBQWlCLFFBQVEsSUFBSSw4QkFBOEI7QUFDakUsWUFBTSxRQUFRLFFBQVEsSUFBSSxjQUFjO0FBRXhDLFVBQUksT0FBTyxLQUFLO0FBQ2hCLFVBQUksU0FBUyxNQUFNO0FBQ2pCLGVBQU8sUUFBUSxJQUFJLGNBQWMsRUFBRSxLQUFLLEtBQUssSUFBSTtBQUFBLE1BQ25EO0FBQ0EsVUFBSSxDQUFDLEtBQUssT0FBTyxHQUFHO0FBQ2xCLGNBQU0sSUFBSSxNQUFNLGdCQUFnQjtBQUFBLE1BQ2xDO0FBRUEsWUFBTSxLQUFLLFlBQVksRUFBRSxPQUFPO0FBRWhDLGNBQVEsU0FBUyxlQUFlLEtBQUssS0FBSyxpQkFBaUIsR0FBRyxjQUFjLE1BQU0sUUFBUSxNQUFNO0FBRWhHLE1BQUFBLElBQUcsOEJBQThCO0FBQUEsSUFDbkM7QUFBQSxJQUVBLGdCQUFpQjtBQUNmLFlBQU0sRUFBRSxVQUFVLFFBQVEsSUFBSTtBQUM5QixZQUFNVSxXQUFVLFFBQVEsSUFBSSx1QkFBdUI7QUFFbkQsWUFBTSxlQUFlLG1CQUFtQixPQUFPO0FBQy9DLFlBQU0sS0FBS0EsU0FBUSxRQUFRLEtBQUssTUFBTSxhQUFhLGlCQUFpQixHQUFHLENBQUM7QUFFeEUsWUFBTSxhQUFhLENBQUM7QUFDcEIsWUFBTSx1QkFBdUIsR0FBRyxRQUFRO0FBQ3hDLGFBQU8scUJBQXFCLGdCQUFnQixHQUFHO0FBQzdDLG1CQUFXLEtBQUsscUJBQXFCLFlBQVksRUFBRSxTQUFTLENBQUM7QUFBQSxNQUMvRDtBQUNBLGFBQU87QUFBQSxJQUNUO0FBQUEsRUFDRjtBQUVBLFdBQVMsbUJBQW9CLFNBQVM7QUFDcEMsVUFBTSxFQUFFLFVBQVUsZUFBZSxJQUFJO0FBQ3JDLFVBQU0sUUFBUSxRQUFRLElBQUksY0FBYztBQUV4QyxVQUFNLGdCQUFnQixNQUFNLEtBQUssUUFBUTtBQUN6QyxrQkFBYyxPQUFPO0FBRXJCLFdBQU8sTUFBTSxlQUFlLGVBQWUsUUFBUSxlQUFlLFNBQVMsUUFBUSxhQUFhO0FBQUEsRUFDbEc7QUFFQSxXQUFTLGVBQWdCLFVBQVUsU0FBUztBQUMxQyxVQUFNLFFBQVEsUUFBUSxJQUFJLGNBQWM7QUFDeEMsVUFBTSxPQUFPLE1BQU0sS0FBSyxRQUFRO0FBQ2hDLFNBQUssWUFBWSxPQUFPLEtBQUs7QUFBQSxFQUMvQjtBQUVBLFdBQVMsa0JBQW1CO0FBQzFCLFlBQVEsYUFBYSxPQUFPO0FBQUEsTUFDMUIsS0FBSyxTQUFTO0FBQ1oscUJBQWEsUUFBUTtBQUVyQixjQUFNLGlCQUFpQixhQUFhLFVBQVUsQ0FBQztBQUUvQyxjQUFNLFVBQVUsZUFBZSxJQUFJLG1CQUFtQjtBQUN0RCxjQUFNLFVBQVUsZUFBZSxJQUFJLG1CQUFtQjtBQUV0RCxxQkFBYSxVQUFVLFFBQVEsS0FBSztBQUNwQyxxQkFBYSxVQUFVO0FBRXZCLGNBQU0sU0FBUyxlQUFlO0FBQzlCLFlBQUksV0FBVyxNQUFNO0FBQ25CLDRCQUFrQixnQkFBZ0IsTUFBTTtBQUFBLFFBQzFDO0FBRUEscUJBQWEsUUFBUTtBQUVyQixlQUFPO0FBQUEsTUFDVDtBQUFBLE1BQ0EsS0FBSztBQUNILFdBQUc7QUFDRCxpQkFBTyxNQUFNLElBQUk7QUFBQSxRQUNuQixTQUFTLGFBQWEsVUFBVTtBQUNoQyxlQUFPO0FBQUEsTUFDVCxLQUFLO0FBQ0gsZUFBTztBQUFBLElBQ1g7QUFBQSxFQUNGO0FBRUEsV0FBUyxrQkFBbUIsU0FBUyxRQUFRO0FBQzNDLFVBQU0sRUFBRSxXQUFXLFNBQVMsUUFBUSxJQUFJO0FBRXhDLFVBQU0sUUFBUSxRQUFRLEtBQUssVUFBVSxRQUFRLE9BQU8sQ0FBQztBQUNyRCxZQUFRLElBQUksUUFBUSxLQUFLO0FBRXpCLGFBQVMsSUFBSSxPQUFPLFVBQVUsR0FBRyxNQUFNLE1BQU0sSUFBSSxFQUFFLFVBQVUsR0FBRztBQUM5RCxVQUFJLFFBQVEsWUFBWSxDQUFDLEdBQUc7QUFDMUI7QUFBQSxNQUNGO0FBRUEsY0FBUSxJQUFJLEdBQUcsS0FBSztBQUFBLElBQ3RCO0FBQUEsRUFDRjtBQUVBLFdBQVMsT0FBUSxVQUFVO0FBQ3pCLFFBQUksUUFBUSxlQUFlLElBQUksUUFBUTtBQUN2QyxRQUFJLFVBQVUsUUFBVztBQUN2QixjQUFRO0FBQUEsSUFDVjtBQUNBO0FBQ0EsbUJBQWUsSUFBSSxVQUFVLEtBQUs7QUFBQSxFQUNwQztBQUVBLFdBQVMsU0FBVSxVQUFVO0FBQzNCLFFBQUksUUFBUSxlQUFlLElBQUksUUFBUTtBQUN2QyxRQUFJLFVBQVUsUUFBVztBQUN2QixZQUFNLElBQUksTUFBTSxVQUFVLFFBQVEsaUJBQWlCO0FBQUEsSUFDckQ7QUFDQTtBQUNBLFFBQUksVUFBVSxHQUFHO0FBQ2YscUJBQWUsT0FBTyxRQUFRO0FBQUEsSUFDaEMsT0FBTztBQUNMLHFCQUFlLElBQUksVUFBVSxLQUFLO0FBQUEsSUFDcEM7QUFBQSxFQUNGO0FBRUEsV0FBUyxTQUFVLFdBQVc7QUFDNUIsV0FBTyxVQUFVLE1BQU0sVUFBVSxZQUFZLEdBQUcsSUFBSSxDQUFDO0FBQUEsRUFDdkQ7QUFFQSxXQUFTLGNBQWUsS0FBSyxPQUFPO0FBQ2xDLFVBQU0sUUFBUSxDQUFDO0FBRWYsVUFBTSxJQUFJLElBQUksZUFBZSxLQUFLO0FBQ2xDLGFBQVMsSUFBSSxHQUFHLE1BQU0sR0FBRyxLQUFLO0FBQzVCLFlBQU0sSUFBSSxJQUFJLHNCQUFzQixPQUFPLENBQUM7QUFDNUMsVUFBSTtBQUNGLGNBQU0sS0FBSyxJQUFJLFlBQVksQ0FBQyxDQUFDO0FBQUEsTUFDL0IsVUFBRTtBQUNBLFlBQUksZUFBZSxDQUFDO0FBQUEsTUFDdEI7QUFBQSxJQUNGO0FBRUEsV0FBTztBQUFBLEVBQ1Q7QUFFQSxXQUFTLG1CQUFvQixXQUFXO0FBQ3RDLFVBQU0sU0FBUyxVQUFVLE1BQU0sR0FBRztBQUNsQyxXQUFPLE9BQU8sT0FBTyxTQUFTLENBQUMsSUFBSTtBQUFBLEVBQ3JDOzs7QUNueUVBLE1BQU1DLGFBQVk7QUFDbEIsTUFBTUMsZUFBYyxRQUFRO0FBRTVCLE1BQU0sVUFBTixNQUFjO0FBQUEsSUFDWixhQUFtQjtBQUFBLElBQ25CLGNBQW1CO0FBQUEsSUFDbkIsZ0JBQW1CO0FBQUEsSUFDbkIsYUFBbUI7QUFBQSxJQUNuQixZQUFtQjtBQUFBLElBQ25CLG1CQUFtQjtBQUFBLElBQ25CLGFBQW1CO0FBQUEsSUFDbkIsY0FBbUI7QUFBQSxJQUNuQixhQUFtQjtBQUFBLElBQ25CLGVBQW1CO0FBQUEsSUFDbkIsYUFBbUI7QUFBQSxJQUNuQixnQkFBbUI7QUFBQSxJQUVuQixjQUFlO0FBQ2IsV0FBSyxlQUFlO0FBQ3BCLFdBQUssZUFBZTtBQUNwQixXQUFLLEtBQUs7QUFDVixXQUFLLE1BQU07QUFFWCxXQUFLLGVBQWU7QUFDcEIsV0FBSyxZQUFZO0FBQ2pCLFdBQUssaUJBQWlCO0FBQ3RCLFdBQUssZ0JBQWdCO0FBQ3JCLFdBQUssa0JBQWtCLENBQUM7QUFDeEIsV0FBSyxnQkFBZ0IsQ0FBQztBQUN0QixXQUFLLHNCQUFzQjtBQUUzQixVQUFJO0FBQ0YsYUFBSyxlQUFlO0FBQUEsTUFDdEIsU0FBUyxHQUFHO0FBQUEsTUFDWjtBQUFBLElBQ0Y7QUFBQSxJQUVBLGlCQUFrQjtBQUNoQixVQUFJLEtBQUssY0FBYztBQUNyQixlQUFPO0FBQUEsTUFDVDtBQUVBLFVBQUksS0FBSyxjQUFjLE1BQU07QUFDM0IsY0FBTSxLQUFLO0FBQUEsTUFDYjtBQUVBLFVBQUlDO0FBQ0osVUFBSTtBQUNGLFFBQUFBLE9BQU0sWUFBTztBQUNiLGFBQUssTUFBTUE7QUFBQSxNQUNiLFNBQVMsR0FBRztBQUNWLGFBQUssWUFBWTtBQUNqQixjQUFNO0FBQUEsTUFDUjtBQUNBLFVBQUlBLFNBQVEsTUFBTTtBQUNoQixlQUFPO0FBQUEsTUFDVDtBQUVBLFlBQU1DLE1BQUssSUFBSSxHQUFHRCxJQUFHO0FBQ3JCLFdBQUssS0FBS0M7QUFFVixpQkFBV0EsR0FBRTtBQUNiLG1CQUFhLFlBQVlBLEtBQUlELElBQUc7QUFDaEMsV0FBSyxlQUFlLElBQUksYUFBYTtBQUVyQyxXQUFLLGVBQWU7QUFFcEIsYUFBTztBQUFBLElBQ1Q7QUFBQSxJQUVBLFdBQVk7QUFDVixVQUFJLEtBQUssUUFBUSxNQUFNO0FBQ3JCO0FBQUEsTUFDRjtBQUVBLFlBQU0sRUFBRSxJQUFBQyxJQUFHLElBQUk7QUFDZixNQUFBQSxJQUFHLFFBQVEsU0FBTztBQUNoQixxQkFBYSxZQUFZLEdBQUc7QUFDNUIsWUFBSSxRQUFRLEdBQUc7QUFBQSxNQUNqQixDQUFDO0FBQ0QsYUFBTyxTQUFTLE1BQU07QUFDcEIsV0FBRyxRQUFRQSxHQUFFO0FBQUEsTUFDZixDQUFDO0FBQUEsSUFDSDtBQUFBLElBRUEsSUFBSSxZQUFhO0FBQ2YsYUFBTyxLQUFLLGVBQWU7QUFBQSxJQUM3QjtBQUFBLElBRUEsSUFBSSxpQkFBa0I7QUFDcEIsYUFBTyxrQkFBa0I7QUFBQSxJQUMzQjtBQUFBLElBRUEsYUFBYyxLQUFLLElBQUk7QUFDckIsWUFBTSxFQUFFLElBQUksWUFBWSxJQUFJLElBQUk7QUFDaEMsVUFBSSxFQUFFLHFCQUFxQixnQkFBZ0I7QUFDekMsY0FBTSxJQUFJLE1BQU0seUZBQXlGO0FBQUEsTUFDM0c7QUFFQSxZQUFNLE1BQU0sS0FBSyxHQUFHLE9BQU87QUFDM0IscUJBQWUsb0JBQW9CLElBQUksYUFBYSxTQUFTLENBQUM7QUFDOUQsVUFBSTtBQUNGLFdBQUc7QUFBQSxNQUNMLFVBQUU7QUFDQSxZQUFJLFlBQVksU0FBUztBQUFBLE1BQzNCO0FBQUEsSUFDRjtBQUFBLElBRUEsdUJBQXdCLFdBQVc7QUFDakMsV0FBSyxnQkFBZ0I7QUFFckIsWUFBTSxFQUFFLE9BQU8sSUFBSSxLQUFLO0FBQ3hCLFVBQUksV0FBVyxPQUFPO0FBQ3BCLGFBQUssMkJBQTJCLFNBQVM7QUFBQSxNQUMzQyxXQUFXLFdBQVcsT0FBTztBQUMzQixhQUFLLDJCQUEyQixTQUFTO0FBQUEsTUFDM0MsT0FBTztBQUNMLGFBQUssOEJBQThCLFNBQVM7QUFBQSxNQUM5QztBQUFBLElBQ0Y7QUFBQSxJQUVBLDZCQUE4QjtBQUM1QixZQUFNLFVBQVUsQ0FBQztBQUNqQixXQUFLLHVCQUF1QjtBQUFBLFFBQzFCLFFBQVMsR0FBRztBQUNWLGtCQUFRLEtBQUssQ0FBQztBQUFBLFFBQ2hCO0FBQUEsUUFDQSxhQUFjO0FBQUEsUUFDZDtBQUFBLE1BQ0YsQ0FBQztBQUNELGFBQU87QUFBQSxJQUNUO0FBQUEsSUFFQSxzQkFBdUIsV0FBVztBQUNoQyxXQUFLLGdCQUFnQjtBQUVyQixZQUFNLEVBQUUsT0FBTyxJQUFJLEtBQUs7QUFDeEIsVUFBSSxXQUFXLE9BQU87QUFDcEIsYUFBSywwQkFBMEIsU0FBUztBQUFBLE1BQzFDLFdBQVcsV0FBVyxPQUFPO0FBQzNCLGFBQUssMEJBQTBCLFNBQVM7QUFBQSxNQUMxQyxPQUFPO0FBQ0wsY0FBTSxJQUFJLE1BQU0sc0RBQXNEO0FBQUEsTUFDeEU7QUFBQSxJQUNGO0FBQUEsSUFFQSw0QkFBNkI7QUFDM0IsWUFBTSxVQUFVLENBQUM7QUFDakIsV0FBSyxzQkFBc0I7QUFBQSxRQUN6QixRQUFTLEdBQUc7QUFDVixrQkFBUSxLQUFLLENBQUM7QUFBQSxRQUNoQjtBQUFBLFFBQ0EsYUFBYztBQUFBLFFBQ2Q7QUFBQSxNQUNGLENBQUM7QUFDRCxhQUFPO0FBQUEsSUFDVDtBQUFBLElBRUEsMkJBQTRCLFdBQVc7QUFDckMsWUFBTSxFQUFFLEtBQUFELE1BQUssSUFBQUMsSUFBRyxJQUFJO0FBQ3BCLFlBQU0sRUFBRSxNQUFNLElBQUlEO0FBQ2xCLFlBQU0sTUFBTUMsSUFBRyxPQUFPO0FBRXRCLFlBQU0sV0FBVyxPQUFPLE1BQU1ILFVBQVM7QUFDdkMsWUFBTSxhQUFhLE9BQU8sTUFBTUMsWUFBVztBQUMzQyxZQUFNLGlCQUFpQixVQUFVLFVBQVU7QUFFM0MsWUFBTSxRQUFRLFNBQVMsUUFBUTtBQUMvQixZQUFNLFVBQVUsV0FBVyxZQUFZO0FBQ3ZDLFlBQU0sVUFBVSxDQUFDO0FBQ2pCLGVBQVMsSUFBSSxHQUFHLE1BQU0sT0FBTyxLQUFLO0FBQ2hDLGdCQUFRLEtBQUssUUFBUSxJQUFJLElBQUlBLFlBQVcsRUFBRSxZQUFZLENBQUM7QUFBQSxNQUN6RDtBQUNBLFlBQU0sV0FBVyxPQUFPO0FBRXhCLFVBQUk7QUFDRixtQkFBVyxVQUFVLFNBQVM7QUFDNUIsZ0JBQU0sWUFBWSxJQUFJLGFBQWEsTUFBTTtBQUN6QyxvQkFBVSxRQUFRLFdBQVcsTUFBTTtBQUFBLFFBQ3JDO0FBRUEsa0JBQVUsV0FBVztBQUFBLE1BQ3ZCLFVBQUU7QUFDQSxnQkFBUSxRQUFRLFlBQVU7QUFDeEIsY0FBSSxlQUFlLE1BQU07QUFBQSxRQUMzQixDQUFDO0FBQUEsTUFDSDtBQUFBLElBQ0Y7QUFBQSxJQUVBLDBCQUEyQixXQUFXO0FBQ3BDLFdBQUssT0FBTyx5QkFBeUIsU0FBUztBQUFBLElBQ2hEO0FBQUEsSUFFQSwyQkFBNEIsV0FBVztBQUNyQyxZQUFNLEVBQUUsSUFBQUUsS0FBSSxLQUFBRCxLQUFJLElBQUk7QUFDcEIsWUFBTSxNQUFNQyxJQUFHLE9BQU87QUFFdEIsWUFBTSxxQkFBcUJELEtBQUksOEJBQThCO0FBQzdELFlBQU0sRUFBRSxJQUFJLFNBQVMsSUFBSUE7QUFDekIsNEJBQXNCQyxLQUFJLEtBQUssWUFBVTtBQUN2QyxjQUFNLHNCQUFzQixvQkFBb0IsV0FBUztBQUN2RCxnQkFBTSxTQUFTLG1CQUFtQixVQUFVLFFBQVEsS0FBSztBQUN6RCxjQUFJO0FBQ0Ysa0JBQU0sWUFBWSxJQUFJLGFBQWEsTUFBTTtBQUN6QyxzQkFBVSxRQUFRLFdBQVcsTUFBTTtBQUFBLFVBQ3JDLFVBQUU7QUFDQSxnQkFBSSxnQkFBZ0IsTUFBTTtBQUFBLFVBQzVCO0FBQ0EsaUJBQU87QUFBQSxRQUNULENBQUM7QUFFRCxRQUFBRCxLQUFJLGdDQUFnQyxFQUFFQSxLQUFJLGVBQWUsU0FBUyxtQkFBbUI7QUFBQSxNQUN2RixDQUFDO0FBRUQsZ0JBQVUsV0FBVztBQUFBLElBQ3ZCO0FBQUEsSUFFQSwwQkFBMkIsV0FBVztBQUNwQyxZQUFNLEVBQUUsY0FBYyxTQUFTLElBQUFDLEtBQUksS0FBQUQsS0FBSSxJQUFJO0FBQzNDLFlBQU0sTUFBTUMsSUFBRyxPQUFPO0FBRXRCLFlBQU0sb0JBQW9CRCxLQUFJLHFDQUFxQztBQUNuRSxVQUFJLHNCQUFzQixRQUFXO0FBQ25DLGNBQU0sSUFBSSxNQUFNLDhDQUE4QztBQUFBLE1BQ2hFO0FBRUEsWUFBTSxjQUFjLFFBQVEsSUFBSSx1QkFBdUI7QUFFdkQsWUFBTSxnQkFBZ0IsQ0FBQztBQUN2QixZQUFNLHFCQUFxQkEsS0FBSSw4QkFBOEI7QUFDN0QsWUFBTSxFQUFFLElBQUksU0FBUyxJQUFJQTtBQUN6Qiw0QkFBc0JDLEtBQUksS0FBSyxZQUFVO0FBQ3ZDLGNBQU0sdUJBQXVCLDBCQUEwQixZQUFVO0FBQy9ELHdCQUFjLEtBQUssbUJBQW1CLFVBQVUsUUFBUSxNQUFNLENBQUM7QUFDL0QsaUJBQU87QUFBQSxRQUNULENBQUM7QUFDRCxtQ0FBMkIsTUFBTTtBQUMvQiw0QkFBa0JELEtBQUksZUFBZSxTQUFTLG9CQUFvQjtBQUFBLFFBQ3BFLENBQUM7QUFBQSxNQUNILENBQUM7QUFFRCxVQUFJO0FBQ0Ysc0JBQWMsUUFBUSxZQUFVO0FBQzlCLGdCQUFNLFNBQVMsUUFBUSxLQUFLLFFBQVEsV0FBVztBQUMvQyxvQkFBVSxRQUFRLE1BQU07QUFBQSxRQUMxQixDQUFDO0FBQUEsTUFDSCxVQUFFO0FBQ0Esc0JBQWMsUUFBUSxZQUFVO0FBQzlCLGNBQUksZ0JBQWdCLE1BQU07QUFBQSxRQUM1QixDQUFDO0FBQUEsTUFDSDtBQUVBLGdCQUFVLFdBQVc7QUFBQSxJQUN2QjtBQUFBLElBRUEsOEJBQStCLFdBQVc7QUFDeEMsWUFBTSxFQUFFLEtBQUFBLEtBQUksSUFBSTtBQUVoQixZQUFNLGlCQUFpQixJQUFJLFlBQVk7QUFDdkMsWUFBTSxzQkFBc0I7QUFDNUIsWUFBTSxnQkFBZ0I7QUFFdEIsWUFBTSw0QkFBNEJBLEtBQUksS0FBSyxJQUFJLG1CQUFtQjtBQUNsRSxZQUFNLFlBQVksMEJBQTBCLFlBQVk7QUFFeEQsWUFBTSxZQUFZLFVBQVUsUUFBUTtBQUNwQyxZQUFNLGNBQWMsVUFBVSxJQUFJLEVBQUU7QUFDcEMsWUFBTSxXQUFXLFlBQVksWUFBWTtBQUN6QyxZQUFNLE1BQU0sWUFBWTtBQUV4QixlQUFTLFNBQVMsR0FBRyxTQUFTLEtBQUssVUFBVSxlQUFlO0FBQzFELGNBQU0sWUFBWSxTQUFTLElBQUksTUFBTTtBQUNyQyxjQUFNLFVBQVUsVUFBVSxJQUFJLENBQUMsRUFBRSxZQUFZO0FBRTdDLFlBQUksUUFBUSxPQUFPLEtBQUssUUFBUSxPQUFPLGNBQWMsR0FBRztBQUN0RDtBQUFBLFFBQ0Y7QUFFQSxjQUFNLGlCQUFpQixRQUFRLElBQUksRUFBRSxFQUFFLFlBQVk7QUFDbkQsY0FBTSxjQUFjLGVBQWUsZUFBZTtBQUNsRCxZQUFJLFlBQVksV0FBVyxHQUFHLEdBQUc7QUFDL0IsZ0JBQU0sT0FBTyxZQUFZLFVBQVUsR0FBRyxZQUFZLFNBQVMsQ0FBQyxFQUFFLFFBQVEsT0FBTyxHQUFHO0FBQ2hGLG9CQUFVLFFBQVEsSUFBSTtBQUFBLFFBQ3hCO0FBQUEsTUFDRjtBQUVBLGdCQUFVLFdBQVc7QUFBQSxJQUN2QjtBQUFBLElBRUEsaUJBQWtCLE9BQU87QUFDdkIsWUFBTSxFQUFFLGNBQWMsUUFBUSxJQUFJO0FBQ2xDLFlBQU0sTUFBTSxLQUFLLEdBQUcsT0FBTztBQUMzQixZQUFNLGNBQWMsUUFBUSxJQUFJLHVCQUF1QjtBQUV2RCxhQUFPLE1BQVcsaUJBQWlCLE9BQU8sS0FBSyxLQUFLLEdBQUcsRUFDcEQsSUFBSSxXQUFTO0FBQ1osY0FBTSxTQUFTLE1BQU07QUFDckIsY0FBTSxTQUFVLFdBQVcsT0FBUSxRQUFRLEtBQUssUUFBUSxhQUFhLEdBQUcsSUFBSTtBQUM1RSxlQUFPO0FBQUEsTUFDVCxDQUFDO0FBQUEsSUFDTDtBQUFBLElBRUEscUJBQXNCLElBQUk7QUFDeEIsV0FBSyxXQUFXLE1BQU07QUFDcEIsYUFBSyxnQkFBZ0IsS0FBSyxFQUFFO0FBRTVCLFlBQUksRUFBRSxnQkFBZ0IsY0FBYyxJQUFJO0FBQ3hDLFlBQUksa0JBQWtCLE1BQU07QUFDMUIsZ0JBQU0sRUFBRSxjQUFjLFFBQVEsSUFBSTtBQUNsQyxnQkFBTSxVQUFVLFFBQVEsSUFBSSxvQkFBb0I7QUFDaEQsZ0JBQU0sU0FBUyxRQUFRLElBQUksbUJBQW1CO0FBRTlDLDBCQUFnQixRQUFRLEtBQUssT0FBTyxjQUFjLENBQUM7QUFDbkQsZUFBSyxpQkFBaUI7QUFBQSxRQUN4QjtBQUVBLFlBQUksS0FBSyxrQkFBa0IsTUFBTTtBQUMvQixlQUFLLGdCQUFnQixZQUFZLE9BQU8sUUFBUSxnQkFBZ0IsU0FBUyxFQUFFLGdCQUFnQixZQUFZLEdBQUcsS0FBSyxjQUFjLENBQUM7QUFDOUgsc0JBQVksTUFBTTtBQUFBLFFBQ3BCO0FBRUEsc0JBQWMsaUJBQWlCLENBQUM7QUFBQSxNQUNsQyxDQUFDO0FBQUEsSUFDSDtBQUFBLElBRUEsZ0JBQWlCO0FBQ2YsWUFBTSxlQUFlLFFBQVE7QUFDN0IsWUFBTSxFQUFFLGlCQUFpQixRQUFRLElBQUk7QUFFckMsYUFBTyxXQUFZO0FBQ2pCLFlBQUksS0FBSyxhQUFhLGNBQWM7QUFDbEM7QUFBQSxRQUNGO0FBRUEsWUFBSTtBQUNKLGdCQUFRLEtBQUssUUFBUSxNQUFNLE9BQU8sUUFBVztBQUMzQyxjQUFJO0FBQ0YsZUFBRztBQUFBLFVBQ0wsU0FBUyxHQUFHO0FBQ1YsbUJBQU8sU0FBUyxNQUFNO0FBQUUsb0JBQU07QUFBQSxZQUFHLENBQUM7QUFBQSxVQUNwQztBQUFBLFFBQ0Y7QUFBQSxNQUNGO0FBQUEsSUFDRjtBQUFBLElBRUEsUUFBUyxJQUFJO0FBQ1gsV0FBSyxnQkFBZ0I7QUFFckIsVUFBSSxDQUFDLEtBQUssY0FBYyxLQUFLLEtBQUssYUFBYSxXQUFXLE1BQU07QUFDOUQsWUFBSTtBQUNGLGVBQUssR0FBRyxRQUFRLEVBQUU7QUFBQSxRQUNwQixTQUFTLEdBQUc7QUFDVixpQkFBTyxTQUFTLE1BQU07QUFBRSxrQkFBTTtBQUFBLFVBQUcsQ0FBQztBQUFBLFFBQ3BDO0FBQUEsTUFDRixPQUFPO0FBQ0wsYUFBSyxjQUFjLEtBQUssRUFBRTtBQUMxQixZQUFJLEtBQUssY0FBYyxXQUFXLEdBQUc7QUFDbkMsZUFBSyw4QkFBOEI7QUFBQSxRQUNyQztBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsSUFFQSxXQUFZLElBQUk7QUFDZCxXQUFLLGdCQUFnQjtBQUVyQixhQUFPLEtBQUssR0FBRyxRQUFRLE1BQU07QUFDM0IsY0FBTSxFQUFFLGNBQWMsUUFBUSxJQUFJO0FBRWxDLFlBQUksS0FBSyxjQUFjLEtBQUssUUFBUSxXQUFXLE1BQU07QUFDbkQsZ0JBQU0saUJBQWlCLFFBQVEsSUFBSSw0QkFBNEI7QUFDL0QsZ0JBQU0sTUFBTSxlQUFlLG1CQUFtQjtBQUM5QyxjQUFJLFFBQVEsTUFBTTtBQUNoQix1Q0FBMkIsU0FBUyxHQUFHO0FBQUEsVUFDekM7QUFBQSxRQUNGO0FBRUEsZUFBTyxHQUFHO0FBQUEsTUFDWixDQUFDO0FBQUEsSUFDSDtBQUFBLElBRUEsZ0NBQWlDO0FBQy9CLFdBQUssR0FBRyxRQUFRLE1BQU07QUFDcEIsY0FBTSxFQUFFLGNBQWMsUUFBUSxJQUFJO0FBRWxDLGNBQU0saUJBQWlCLFFBQVEsSUFBSSw0QkFBNEI7QUFDL0QsY0FBTSxNQUFNLGVBQWUsbUJBQW1CO0FBQzlDLFlBQUksUUFBUSxNQUFNO0FBQ2hCLHFDQUEyQixTQUFTLEdBQUc7QUFDdkMsZUFBSyxxQkFBcUI7QUFDMUI7QUFBQSxRQUNGO0FBRUEsY0FBTUUsV0FBVTtBQUNoQixZQUFJLGNBQWM7QUFDbEIsWUFBSSxZQUFZO0FBRWhCLGNBQU0sd0JBQXdCLGVBQWU7QUFDN0MsOEJBQXNCLGlCQUFpQixTQUFVLE1BQU07QUFDckQsY0FBSSxLQUFLLG9CQUFvQixVQUFVLE1BQU07QUFDM0Msd0JBQVk7QUFFWixrQkFBTSxZQUFZLFFBQVEsSUFBSSx1QkFBdUI7QUFDckQsa0JBQU0sa0JBQWtCLFVBQVU7QUFDbEMsNEJBQWdCLGlCQUFpQixTQUFVLHNCQUFzQixpQkFBaUI7QUFDaEYsa0JBQUksQ0FBQyxhQUFhO0FBQ2hCLDhCQUFjO0FBQ2QseUNBQXlCLFNBQVMsSUFBSTtBQUN0QyxnQkFBQUEsU0FBUSxxQkFBcUI7QUFBQSxjQUMvQjtBQUVBLHFCQUFPLGdCQUFnQixNQUFNLE1BQU0sU0FBUztBQUFBLFlBQzlDO0FBQUEsVUFDRjtBQUVBLGdDQUFzQixNQUFNLE1BQU0sU0FBUztBQUFBLFFBQzdDO0FBRUEsY0FBTSwyQkFBMkIsZUFBZSxlQUFlLFVBQzVELElBQUksT0FBSyxDQUFDLEVBQUUsY0FBYyxRQUFRLENBQUMsQ0FBQyxFQUNwQyxLQUFLLENBQUMsQ0FBQyxNQUFPLEdBQUcsQ0FBQyxNQUFPLE1BQU0sU0FBUyxNQUFNLEVBQzlDLElBQUksQ0FBQyxDQUFDLEdBQUcsTUFBTSxNQUFNLE1BQU07QUFDOUIsY0FBTSxpQkFBaUIseUJBQXlCLENBQUM7QUFDakQsdUJBQWUsaUJBQWlCLFlBQWEsTUFBTTtBQUNqRCxnQkFBTSxNQUFNLGVBQWUsS0FBSyxNQUFNLEdBQUcsSUFBSTtBQUU3QyxjQUFJLENBQUMsZUFBZSxjQUFjLFNBQVM7QUFDekMsMEJBQWM7QUFDZCxxQ0FBeUIsU0FBUyxHQUFHO0FBQ3JDLFlBQUFBLFNBQVEscUJBQXFCO0FBQUEsVUFDL0I7QUFFQSxpQkFBTztBQUFBLFFBQ1Q7QUFBQSxNQUNGLENBQUM7QUFBQSxJQUNIO0FBQUEsSUFFQSx1QkFBd0I7QUFDdEIsWUFBTSxFQUFFLElBQUFELEtBQUksZUFBZSxRQUFRLElBQUk7QUFFdkMsVUFBSTtBQUNKLGNBQVEsS0FBSyxRQUFRLE1BQU0sT0FBTyxRQUFXO0FBQzNDLFlBQUk7QUFDRixVQUFBQSxJQUFHLFFBQVEsRUFBRTtBQUFBLFFBQ2YsU0FBUyxHQUFHO0FBQ1YsaUJBQU8sU0FBUyxNQUFNO0FBQUUsa0JBQU07QUFBQSxVQUFHLENBQUM7QUFBQSxRQUNwQztBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsSUFFQSxJQUFLLFdBQVcsU0FBUztBQUN2QixhQUFPLEtBQUssYUFBYSxJQUFJLFdBQVcsT0FBTztBQUFBLElBQ2pEO0FBQUEsSUFFQSxjQUFlLFVBQVU7QUFDdkIsYUFBTyxLQUFLLGFBQWEsY0FBYyxRQUFRO0FBQUEsSUFDakQ7QUFBQSxJQUVBLE9BQVEsV0FBVyxXQUFXO0FBQzVCLFdBQUssYUFBYSxPQUFPLFdBQVcsU0FBUztBQUFBLElBQy9DO0FBQUEsSUFFQSxPQUFRLEtBQUs7QUFDWCxhQUFPLEtBQUssYUFBYSxPQUFPLEdBQUc7QUFBQSxJQUNyQztBQUFBLElBRUEsS0FBTSxLQUFLLEdBQUc7QUFDWixhQUFPLEtBQUssYUFBYSxLQUFLLEtBQUssQ0FBQztBQUFBLElBQ3RDO0FBQUEsSUFFQSxNQUFPLE1BQU0sVUFBVTtBQUNyQixhQUFPLEtBQUssYUFBYSxNQUFNLE1BQU0sUUFBUTtBQUFBLElBQy9DO0FBQUEsSUFFQSxVQUFXLFNBQVM7QUFDbEIsYUFBTyxVQUFVLEtBQUssSUFBSSxPQUFPO0FBQUEsSUFDbkM7QUFBQTtBQUFBLElBR0EsZUFBZ0I7QUFDZCxZQUFNLFNBQVMsS0FBSyxhQUFhLElBQUksbUJBQW1CO0FBQ3hELFlBQU0sYUFBYSxPQUFPLGNBQWM7QUFDeEMsWUFBTSxXQUFXLE9BQU8sU0FBUztBQUNqQyxVQUFJLGFBQWEsTUFBTTtBQUNyQixlQUFPO0FBQUEsTUFDVDtBQUNBLGFBQU8sV0FBVyxjQUFjLFFBQVE7QUFBQSxJQUMxQztBQUFBLElBRUEsY0FBZSxNQUFNO0FBQ25CLGFBQU8sS0FBSyxhQUFhLGNBQWMsSUFBSTtBQUFBLElBQzdDO0FBQUEsSUFFQSx1QkFBd0I7QUFDdEIsWUFBTSxFQUFFLElBQUFBLElBQUcsSUFBSTtBQUNmLGFBQU8scUJBQXFCQSxLQUFJQSxJQUFHLE9BQU8sQ0FBQztBQUFBLElBQzdDO0FBQUEsSUFFQSxzQkFBdUI7QUFDckIsWUFBTSxFQUFFLElBQUFBLElBQUcsSUFBSTtBQUNmLGFBQU8sb0JBQW9CQSxLQUFJQSxJQUFHLE9BQU8sQ0FBQztBQUFBLElBQzVDO0FBQUEsSUFFQSxpQkFBa0IsUUFBUTtBQUN4QixZQUFNLEVBQUUsSUFBQUEsSUFBRyxJQUFJO0FBQ2YsYUFBTyxpQkFBaUJBLEtBQUlBLElBQUcsT0FBTyxHQUFHLE1BQU07QUFBQSxJQUNqRDtBQUFBLElBRUEsa0JBQW1CO0FBQ2pCLFVBQUksQ0FBQyxLQUFLLFdBQVc7QUFDbkIsY0FBTSxJQUFJLE1BQU0sd0JBQXdCO0FBQUEsTUFDMUM7QUFBQSxJQUNGO0FBQUEsSUFFQSxnQkFBaUI7QUFDZixVQUFJLFNBQVMsS0FBSztBQUNsQixVQUFJLFdBQVcsTUFBTTtBQUNuQixZQUFJLEtBQUssSUFBSSxXQUFXLE9BQU87QUFDN0IsbUJBQVM7QUFDVCxlQUFLLHNCQUFzQjtBQUMzQixpQkFBTztBQUFBLFFBQ1Q7QUFFQSxjQUFNLFdBQVcsSUFBSSxlQUFlLE9BQU8sc0JBQXNCLFVBQVUsR0FBRyxXQUFXLENBQUMsV0FBVyxXQUFXLFNBQVMsR0FBRztBQUFBLFVBQzFILFlBQVk7QUFBQSxRQUNkLENBQUM7QUFFRCxjQUFNLFdBQVcsT0FBTyxnQkFBZ0IsZ0JBQWdCO0FBQ3hELGNBQU0sYUFBYTtBQUNuQixjQUFNLFNBQVMsT0FBTyxNQUFNLFVBQVU7QUFFdEMsY0FBTSxPQUFPLFNBQVMsVUFBVSxRQUFRLElBQUksVUFBVSxDQUFDLEVBQUUsUUFBUTtBQUNqRSxZQUFJLFNBQVMsSUFBSTtBQUNmLGdCQUFNLE1BQU0sT0FBTyxlQUFlLElBQUk7QUFDdEMsbUJBQVMsOEJBQThCLEtBQUssR0FBRztBQUFBLFFBQ2pELE9BQU87QUFDTCxtQkFBUztBQUFBLFFBQ1g7QUFFQSxhQUFLLHNCQUFzQjtBQUFBLE1BQzdCO0FBRUEsYUFBTztBQUFBLElBQ1Q7QUFBQSxFQUNGO0FBRUEsV0FBUywyQkFBNEIsU0FBUyxLQUFLO0FBQ2pELFVBQU1FLFdBQVUsUUFBUSxJQUFJLG9CQUFvQjtBQUVoRCxZQUFRLFNBQVMsSUFBSSxlQUFlO0FBRXBDLFFBQUlBLFNBQVEsTUFBTSxNQUFNQSxTQUFRLFdBQVcsT0FBTztBQUNoRCxjQUFRLFdBQVc7QUFDbkIsY0FBUSxlQUFlO0FBQUEsSUFDekIsT0FBTztBQUNMLFVBQUkscUJBQXFCLEtBQUs7QUFDNUIsZ0JBQVEsV0FBVyxJQUFJLFlBQVksRUFBRSxpQkFBaUI7QUFDdEQsZ0JBQVEsZUFBZSxJQUFJLGdCQUFnQixFQUFFLGlCQUFpQjtBQUFBLE1BQ2hFLE9BQU87QUFDTCxnQkFBUSxXQUFXLElBQUksWUFBWSxFQUFFLGlCQUFpQjtBQUN0RCxnQkFBUSxlQUFlLElBQUksWUFBWSxFQUFFLGlCQUFpQjtBQUFBLE1BQzVEO0FBQUEsSUFDRjtBQUFBLEVBQ0Y7QUFFQSxXQUFTLHlCQUEwQixTQUFTLEtBQUs7QUFDL0MsVUFBTSxRQUFRLFFBQVEsSUFBSSxjQUFjO0FBRXhDLFlBQVEsU0FBUyxJQUFJLGVBQWU7QUFFcEMsVUFBTSxVQUFVLE1BQU0sS0FBSyxJQUFJLFdBQVcsQ0FBQyxFQUFFLGlCQUFpQjtBQUM5RCxZQUFRLFdBQVc7QUFDbkIsWUFBUSxlQUFlLFVBQVU7QUFBQSxFQUNuQztBQUVBLE1BQU0sVUFBVSxJQUFJLFFBQVE7QUFDNUIsU0FBTyxTQUFTLFNBQVMsTUFBTTtBQUFFLFlBQVEsU0FBUztBQUFBLEVBQUcsQ0FBQztBQUV0RCxNQUFPLDRCQUFROzs7QUM3a0JmLEdBQUMsV0FBWTtBQUNYO0FBRUEsUUFBSSxhQUFhO0FBQ2pCLFFBQUksZ0JBQWdCO0FBQ3BCLFFBQUksd0JBQXdCLENBQUM7QUFDN0IsUUFBSSxxQkFBcUIsQ0FBQztBQUMxQixRQUFJLFNBQVMsQ0FBQztBQUNkLFFBQUksV0FBVyxLQUFLLE9BQU87QUFFM0IsYUFBUyxNQUFNO0FBQUUsY0FBTyxvQkFBSSxLQUFLLEdBQUUsWUFBWTtBQUFBLElBQUc7QUFFbEQsYUFBUyxLQUFLLE9BQU87QUFDbkIsWUFBTSxPQUFPLElBQUk7QUFDakIsVUFBSTtBQUNGLFlBQUksT0FBTyxLQUFLLFVBQVUsS0FBSyxJQUFJO0FBQ25DLFlBQUksZUFBZSxNQUFNO0FBQ3ZCLGNBQUksTUFBTSwwQkFBSyxJQUFJLDBCQUEwQjtBQUM3QyxjQUFJLFVBQVUsMEJBQUssSUFBSSxrQkFBa0I7QUFDekMsY0FBSSxRQUFRLFFBQVEsS0FBSyxJQUFJLEVBQUUsU0FBUyxPQUFPO0FBQy9DLGNBQUksU0FBUyxJQUFJLEtBQUssWUFBWSxJQUFJO0FBQ3RDLGlCQUFPLE1BQU0sS0FBSztBQUNsQixpQkFBTyxNQUFNO0FBQUEsUUFDZixPQUFPO0FBQ0wsa0JBQVEsSUFBSSxtQkFBbUIsS0FBSyxLQUFLLENBQUM7QUFBQSxRQUM1QztBQUFBLE1BQ0YsU0FBUyxHQUFHO0FBQ1YsZ0JBQVEsSUFBSSx5QkFBeUIsQ0FBQztBQUFBLE1BQ3hDO0FBQUEsSUFDRjtBQUVBLGFBQVMsV0FBVztBQUNsQixVQUFJO0FBQUUsZUFBTyxPQUFPLDBCQUFLLElBQUksa0JBQWtCLEVBQUUsY0FBYyxFQUFFLE1BQU0sQ0FBQztBQUFBLE1BQUcsU0FDcEUsR0FBRztBQUFFLGVBQU87QUFBQSxNQUFXO0FBQUEsSUFDaEM7QUFFQSxhQUFTLFVBQVUsT0FBTztBQUN4QixVQUFJO0FBQ0YsWUFBSSxJQUFJLE1BQU07QUFDZCxZQUFJLElBQUksU0FBVSxRQUFPLEVBQUUsUUFBUSxHQUFHLFdBQVcsS0FBSztBQUN0RCxZQUFJLFdBQVcsQ0FBQztBQUNoQixZQUFJLFlBQVksQ0FBQztBQUNqQixpQkFBUyxJQUFJLEdBQUcsSUFBSSxHQUFHLEtBQUs7QUFDMUIsY0FBSSxJQUFJLE9BQU8sTUFBTSxDQUFDLENBQUMsSUFBSTtBQUMzQixtQkFBUyxLQUFLLElBQUksTUFBTSxJQUFJLE1BQU0sQ0FBQztBQUNuQyxvQkFBVSxLQUFLLENBQUM7QUFBQSxRQUNsQjtBQUNBLFlBQUksWUFBWSwwQkFBSyxNQUFNLFFBQVEsUUFBUTtBQUMzQyxZQUFJLFNBQVMsMEJBQUssSUFBSSxxQkFBcUI7QUFDM0MsWUFBSSxjQUFjLDBCQUFLLElBQUksa0JBQWtCO0FBQzdDLGVBQU87QUFBQSxVQUNMLFFBQVE7QUFBQSxVQUNSLE1BQU0sWUFBWSxLQUFLLFdBQVcsT0FBTyxFQUFFLFNBQVM7QUFBQSxVQUNwRCxRQUFRLE9BQU8sZUFBZSxXQUFXLENBQUM7QUFBQSxRQUM1QztBQUFBLE1BQ0YsU0FBUyxHQUFHO0FBQ1YsZUFBTyxFQUFFLE9BQU8sT0FBTyxDQUFDLEdBQUcsT0FBTyxPQUFPLEtBQUssRUFBRTtBQUFBLE1BQ2xEO0FBQUEsSUFDRjtBQUVBLGFBQVMsS0FBSyxPQUFPLE9BQU87QUFDMUIsVUFBSSxRQUFRLEVBQUcsUUFBTztBQUN0QixVQUFJLFVBQVUsUUFBUSxVQUFVLE9BQVcsUUFBTztBQUNsRCxVQUFJLE9BQU8sVUFBVSxZQUFZLE9BQU8sVUFBVSxZQUFZLE9BQU8sVUFBVSxVQUFXLFFBQU87QUFDakcsVUFBSTtBQUNGLFlBQUksTUFBTSxNQUFNLFdBQVcsT0FBTyxNQUFNLFNBQVMsRUFBRSxRQUFRLENBQUMsSUFBSTtBQUNoRSxZQUFJLFFBQVEsWUFBWSxRQUFRLEtBQU0sUUFBTyxVQUFVLEtBQUs7QUFDNUQsWUFBSSxRQUFRLG1CQUFvQixRQUFPLE9BQU8sTUFBTSxTQUFTLENBQUM7QUFDOUQsWUFBSSxRQUFRLHlCQUF5QixRQUFRLHFCQUFzQixRQUFPLE9BQU8sTUFBTSxTQUFTLENBQUM7QUFDakcsWUFBSSxJQUFJLFFBQVEsZUFBZSxNQUFNLE1BQU8sTUFBTSxZQUFZLE1BQU0sS0FBTTtBQUN4RSxjQUFJLFNBQVMsQ0FBQztBQUNkLGNBQUksV0FBVyxNQUFNLFNBQVMsRUFBRSxTQUFTO0FBQ3pDLGNBQUksUUFBUTtBQUNaLGlCQUFPLFNBQVMsUUFBUSxLQUFLLFVBQVUsS0FBTztBQUM1QyxnQkFBSSxRQUFRLFNBQVMsS0FBSztBQUMxQixtQkFBTyxPQUFPLE1BQU0sT0FBTyxDQUFDLENBQUMsSUFBSSxLQUFLLE1BQU0sU0FBUyxHQUFHLFFBQVEsQ0FBQztBQUFBLFVBQ25FO0FBQ0EsaUJBQU87QUFBQSxRQUNUO0FBQ0EsWUFBSSxJQUFJLFFBQVEsZ0JBQWdCLE1BQU0sTUFBTyxNQUFNLFlBQVksTUFBTSxNQUFPO0FBQzFFLGNBQUksTUFBTSxDQUFDO0FBQ1gsY0FBSSxLQUFLLE1BQU0sU0FBUztBQUN4QixjQUFJLFlBQVk7QUFDaEIsaUJBQU8sR0FBRyxRQUFRLEtBQUssY0FBYyxJQUFPLEtBQUksS0FBSyxLQUFLLEdBQUcsS0FBSyxHQUFHLFFBQVEsQ0FBQyxDQUFDO0FBQy9FLGlCQUFPO0FBQUEsUUFDVDtBQUNBLFlBQUksSUFBSSxRQUFRLEdBQUcsTUFBTSxLQUFLLE1BQU0sV0FBVyxRQUFXO0FBQ3hELGNBQUksY0FBYyxDQUFDO0FBQ25CLG1CQUFTLElBQUksR0FBRyxJQUFJLEtBQUssSUFBSSxNQUFNLFFBQVEsR0FBSyxHQUFHLElBQUssYUFBWSxLQUFLLEtBQUssTUFBTSxDQUFDLEdBQUcsUUFBUSxDQUFDLENBQUM7QUFDbEcsaUJBQU87QUFBQSxRQUNUO0FBQ0EsZUFBTyxPQUFPLE1BQU0sU0FBUyxDQUFDO0FBQUEsTUFDaEMsU0FBUyxHQUFHO0FBQ1YsWUFBSTtBQUFFLGlCQUFPLE9BQU8sS0FBSztBQUFBLFFBQUcsU0FBUyxHQUFHO0FBQUUsaUJBQU8sbUJBQW1CLElBQUk7QUFBQSxRQUFLO0FBQUEsTUFDL0U7QUFBQSxJQUNGO0FBRUEsYUFBUyxhQUFhO0FBQ3BCLFVBQUk7QUFDRixZQUFJLE1BQU0sMEJBQUssSUFBSSxrQkFBa0I7QUFDckMsWUFBSSxZQUFZLDBCQUFLLElBQUkscUJBQXFCO0FBQzlDLGVBQU8sT0FBTyxJQUFJLG9CQUFvQixVQUFVLEtBQUssQ0FBQyxDQUFDO0FBQUEsTUFDekQsU0FBUyxHQUFHO0FBQUUsZUFBTyxPQUFPLENBQUM7QUFBQSxNQUFHO0FBQUEsSUFDbEM7QUFFQSxhQUFTLGFBQWEsS0FBSztBQUN6QixVQUFJO0FBQ0YsWUFBSSxJQUFJLE9BQU8sR0FBRztBQUNsQixZQUFJLFFBQVEsRUFBRSxRQUFRLFVBQVU7QUFDaEMsZUFBTyxTQUFTLElBQUksRUFBRSxNQUFNLFFBQVEsQ0FBQyxJQUFJO0FBQUEsTUFDM0MsU0FBUyxHQUFHO0FBQUUsZUFBTztBQUFBLE1BQUk7QUFBQSxJQUMzQjtBQUVBLGFBQVMsWUFBWTtBQUFFLGFBQU8sc0JBQXNCLFNBQVMsQ0FBQyxLQUFLO0FBQUEsSUFBTTtBQUV6RSxhQUFTLGFBQWEsT0FBTyxZQUFZLFVBQVUsT0FBTztBQUN4RCxVQUFJLE1BQU0sUUFBUSxNQUFNLGFBQWEsTUFBTSxTQUFTLGNBQWMsSUFBSSxTQUFVLEdBQUc7QUFBRSxlQUFPLEVBQUU7QUFBQSxNQUFXLENBQUMsRUFBRSxLQUFLLEdBQUcsSUFBSTtBQUN4SCxVQUFJLE9BQU8sR0FBRyxFQUFHO0FBQ2pCLGFBQU8sR0FBRyxJQUFJO0FBQ2QsZUFBUyxpQkFBaUIsV0FBWTtBQUNwQyxZQUFJLE9BQU8sQ0FBQztBQUNaLGlCQUFTLElBQUksR0FBRyxJQUFJLFVBQVUsUUFBUSxJQUFLLE1BQUssS0FBSyxLQUFLLFVBQVUsQ0FBQyxHQUFHLENBQUMsQ0FBQztBQUMxRSxZQUFJLE1BQU0sU0FBUztBQUNuQixZQUFJLE1BQU0sVUFBVTtBQUNwQixhQUFLLEVBQUUsT0FBTyxrQkFBa0IsWUFBWSxLQUFLLFdBQVcsS0FBSyxVQUFVLEtBQUssTUFBWSxPQUFPLFdBQVcsRUFBRSxDQUFDO0FBQ2pILFlBQUk7QUFDSixZQUFJO0FBQ0YsbUJBQVMsU0FBUyxNQUFNLE1BQU0sU0FBUztBQUN2QyxlQUFLLEVBQUUsT0FBTyxrQkFBa0IsWUFBWSxLQUFLLFdBQVcsS0FBSyxVQUFVLEtBQUssUUFBUSxLQUFLLFFBQVEsQ0FBQyxFQUFFLENBQUM7QUFDekcsaUJBQU87QUFBQSxRQUNULFNBQVMsR0FBRztBQUNWLGVBQUssRUFBRSxPQUFPLGtCQUFrQixZQUFZLEtBQUssV0FBVyxLQUFLLFVBQVUsS0FBSyxPQUFPLE9BQU8sQ0FBQyxFQUFFLENBQUM7QUFDbEcsZ0JBQU07QUFBQSxRQUNSO0FBQUEsTUFDRjtBQUFBLElBQ0Y7QUFFQSxhQUFTLG1CQUFtQjtBQUUxQixnQ0FBSyx1QkFBdUI7QUFBQSxRQUMxQixTQUFTLFNBQVUsTUFBTTtBQUN2QixjQUFJLEtBQUssUUFBUSx3QkFBd0IsTUFBTSxFQUFHO0FBQ2xELGNBQUk7QUFDRixnQkFBSSxJQUFJLDBCQUFLLElBQUksSUFBSTtBQUNyQixnQkFBSSxVQUFVLEVBQUUsTUFBTSxtQkFBbUI7QUFDekMscUJBQVMsSUFBSSxHQUFHLElBQUksUUFBUSxRQUFRLEtBQUs7QUFDdkMsa0JBQUksU0FBUyxRQUFRLENBQUM7QUFDdEIsa0JBQUksYUFBYSxPQUFPLE9BQU8sUUFBUSxDQUFDO0FBQ3hDLGtCQUFJLGFBQWEsT0FBTyxPQUFPLGNBQWMsRUFBRSxRQUFRLENBQUM7QUFDeEQsa0JBQUksU0FBUyxPQUFPLGtCQUFrQjtBQUN0QyxrQkFBSSxXQUFXLGVBQWUsWUFBWSxlQUFlO0FBQ3pELHVCQUFTLElBQUksR0FBRyxJQUFJLE9BQU8sUUFBUSxLQUFLO0FBQ3RDLG9CQUFJLFdBQVcsT0FBTyxPQUFPLENBQUMsRUFBRSxRQUFRLENBQUM7QUFDekMsb0JBQUksYUFBYSxtQkFBbUIsU0FBUyxRQUFRLGdCQUFnQixNQUFNLEVBQUcsWUFBVztBQUFBLGNBQzNGO0FBQ0Esa0JBQUksQ0FBQyxZQUFZLENBQUMsRUFBRSxVQUFVLEVBQUc7QUFDakMsa0JBQUksWUFBWSxFQUFFLFVBQVUsRUFBRTtBQUM5Qix1QkFBUyxJQUFJLEdBQUcsSUFBSSxVQUFVLFFBQVEsSUFBSyxjQUFhLEdBQUcsWUFBWSxVQUFVLENBQUMsR0FBRyxJQUFJO0FBQUEsWUFDM0Y7QUFBQSxVQUNGLFNBQVMsR0FBRztBQUFBLFVBQUM7QUFBQSxRQUNmO0FBQUEsUUFDQSxZQUFZLFdBQVk7QUFDdEIsZUFBSyxFQUFFLE9BQU8sY0FBYyxRQUFRLHFDQUFxQyxDQUFDO0FBQUEsUUFDNUU7QUFBQSxNQUNGLENBQUM7QUFBQSxJQUNIO0FBRUEsYUFBUyxXQUFXO0FBQ2xCLFVBQUksSUFBSSwwQkFBSyxJQUFJLGtCQUFrQjtBQUduQyxVQUFJLEtBQUssRUFBRSxHQUFHLFNBQVMsb0JBQW9CLG9CQUFvQixrQkFBa0I7QUFDakYsU0FBRyxpQkFBaUIsU0FBVSxRQUFRLE1BQU0sTUFBTTtBQUNoRCxZQUFJLE1BQU0sU0FBUztBQUNuQixZQUFJLE1BQU07QUFDViw4QkFBc0IsR0FBRyxJQUFJO0FBQzdCLGFBQUs7QUFBQSxVQUFFLE9BQU87QUFBQSxVQUFnQixZQUFZO0FBQUEsVUFBSyxXQUFXO0FBQUEsVUFDeEQsUUFBUSxPQUFPLE1BQU07QUFBQSxVQUFHLE1BQU0sT0FBTyxJQUFJO0FBQUEsVUFDekMsY0FBYyxtQkFBbUIsR0FBRyxJQUFJLG1CQUFtQixHQUFHLEVBQUUsVUFBVSxDQUFDO0FBQUEsVUFDM0UsTUFBTSxPQUFPLElBQUk7QUFBQSxVQUFHLE9BQU8sV0FBVztBQUFBLFFBQUUsQ0FBQztBQUMzQyxZQUFJO0FBQ0YsY0FBSSxTQUFTLEdBQUcsS0FBSyxNQUFNLFFBQVEsTUFBTSxJQUFJO0FBQzdDLGNBQUksT0FBTyxVQUFVLE1BQU07QUFDM0IsZUFBSztBQUFBLFlBQUUsT0FBTztBQUFBLFlBQWlCLFlBQVk7QUFBQSxZQUFLLFdBQVc7QUFBQSxZQUN6RCxVQUFVO0FBQUEsWUFBTSxlQUFlLGFBQWEsS0FBSyxRQUFRLEVBQUU7QUFBQSxVQUFFLENBQUM7QUFDaEUsaUJBQU87QUFBQSxRQUNULFNBQVMsR0FBRztBQUNWLGVBQUssRUFBRSxPQUFPLGNBQWMsWUFBWSxLQUFLLFdBQVcsS0FBSyxPQUFPLE9BQU8sQ0FBQyxFQUFFLENBQUM7QUFDL0UsZ0JBQU07QUFBQSxRQUNSLFVBQUU7QUFDQSxpQkFBTyxzQkFBc0IsR0FBRztBQUFBLFFBQ2xDO0FBQUEsTUFDRjtBQUdBLE9BQUMsTUFBTSxJQUFJLEVBQUUsUUFBUSxTQUFVLE1BQU07QUFDbkMsWUFBSTtBQUNGLGNBQUksS0FBSyxFQUFFLElBQUk7QUFDZixtQkFBUyxJQUFJLEdBQUcsSUFBSSxHQUFHLFVBQVUsUUFBUSxJQUFLLGNBQWEsR0FBRyxNQUFNLEdBQUcsVUFBVSxDQUFDLEdBQUcsa0JBQWtCO0FBQUEsUUFDekcsU0FBUyxHQUFHO0FBQUEsUUFBQztBQUFBLE1BQ2YsQ0FBQztBQUdELFVBQUk7QUFDRixZQUFJLEtBQUssRUFBRSxHQUFHLFNBQVMsbUJBQW1CLG9CQUFvQix3QkFBd0I7QUFDdEYsV0FBRyxpQkFBaUIsU0FBVSxRQUFRLGFBQWEsUUFBUTtBQUN6RCxjQUFJLE1BQU0sU0FBUztBQUNuQiw2QkFBbUIsR0FBRyxJQUFJLEVBQUUsY0FBYyxPQUFPLFdBQVcsR0FBRyxTQUFTLENBQUMsRUFBRTtBQUMzRSxlQUFLLEVBQUUsT0FBTyw0QkFBNEIsV0FBVyxLQUFLLGNBQWMsT0FBTyxXQUFXLEVBQUUsQ0FBQztBQUM3RixjQUFJO0FBQUUsbUJBQU8sR0FBRyxLQUFLLE1BQU0sUUFBUSxhQUFhLE1BQU07QUFBQSxVQUFHLFVBQ3pEO0FBQVUsbUJBQU8sbUJBQW1CLEdBQUc7QUFBQSxVQUFHO0FBQUEsUUFDNUM7QUFBQSxNQUNGLFNBQVMsR0FBRztBQUFFLGFBQUssRUFBRSxPQUFPLGdCQUFnQixRQUFRLFNBQVMsT0FBTyxPQUFPLENBQUMsRUFBRSxDQUFDO0FBQUEsTUFBRztBQUVsRixVQUFJO0FBQ0YsWUFBSSxpQkFBaUIsMEJBQUssSUFBSSx3QkFBd0I7QUFDdEQsWUFBSSxXQUFXLGVBQWUsU0FBUyxTQUFTO0FBQ2hELGlCQUFTLGlCQUFpQixXQUFZO0FBQ3BDLGNBQUksT0FBTyxTQUFTLEtBQUssSUFBSTtBQUM3QixjQUFJLE1BQU0sU0FBUztBQUNuQixjQUFJLG1CQUFtQixHQUFHLEtBQUssU0FBUyxRQUFRLE9BQU8sSUFBSSxFQUFFLFNBQVMsR0FBRztBQUN2RSwrQkFBbUIsR0FBRyxFQUFFLFFBQVEsS0FBSyxPQUFPLElBQUksQ0FBQztBQUFBLFVBQ25EO0FBQ0EsaUJBQU87QUFBQSxRQUNUO0FBQUEsTUFDRixTQUFTLEdBQUc7QUFBRSxhQUFLLEVBQUUsT0FBTyxnQkFBZ0IsUUFBUSwyQkFBMkIsT0FBTyxPQUFPLENBQUMsRUFBRSxDQUFDO0FBQUEsTUFBRztBQUVwRyx1QkFBaUI7QUFDakIsV0FBSyxFQUFFLE9BQU8sY0FBYyxRQUFRLDBCQUEwQixDQUFDO0FBQUEsSUFDakU7QUFFQSw4QkFBSyxRQUFRLFdBQVk7QUFDdkIsVUFBSTtBQUNGLFlBQUksaUJBQWlCLDBCQUFLLElBQUksNEJBQTRCO0FBQzFELFlBQUksTUFBTSxlQUFlLG1CQUFtQjtBQUM1QyxZQUFJLFFBQVEsTUFBTTtBQUNoQixjQUFJLE1BQU0sSUFBSSxvQkFBb0IsSUFBSTtBQUN0QyxjQUFJLFFBQVEsS0FBTSxPQUFNLElBQUksWUFBWTtBQUN4QyxjQUFJQyxRQUFPLDBCQUFLLElBQUksY0FBYztBQUNsQyx1QkFBYUEsTUFBSyxLQUFLLEtBQUsseUJBQXlCLEVBQUUsZ0JBQWdCLEVBQUUsU0FBUztBQUFBLFFBQ3BGO0FBQUEsTUFDRixTQUFTLEdBQUc7QUFBQSxNQUFDO0FBQ2IsV0FBSyxFQUFFLE9BQU8sY0FBYyxRQUFRLGNBQWMsU0FBUyxDQUFDO0FBQzVELFVBQUk7QUFBRSxpQkFBUztBQUFBLE1BQUcsU0FDWCxHQUFHO0FBQUUsYUFBSyxFQUFFLE9BQU8sY0FBYyxPQUFPLE9BQU8sQ0FBQyxHQUFHLE9BQU8sV0FBVyxFQUFFLENBQUM7QUFBQSxNQUFHO0FBQUEsSUFDcEYsQ0FBQztBQUFBLEVBQ0gsR0FBRzsiLAogICJuYW1lcyI6IFsiQnVmZmVyIiwgImZpbGwiLCAiY29weSIsICJCdWZmZXIiLCAiY29tcGFyZSIsICJyZWFkIiwgImkiLCAid3JpdGUiLCAiYnl0ZUxlbmd0aCIsICJjb2RlIiwgInNsaWNlIiwgInBvaW50ZXJTaXplIiwgInZtIiwgInZtIiwgInBvaW50ZXJTaXplIiwgIm5hdGl2ZUZ1bmN0aW9uT3B0aW9ucyIsICJwcm94eSIsICJwb2ludGVyU2l6ZSIsICJhcGkiLCAiaW5pdGlhbGl6ZSIsICJ2dGFibGUiLCAiaGFuZGxlIiwgInZtIiwgInBvaW50ZXJTaXplIiwgIm5hdGl2ZUZ1bmN0aW9uT3B0aW9ucyIsICJ2bSIsICJydW50aW1lIiwgImFwaSIsICJ2dGFibGUiLCAid3JpdGUiLCAiY29kZSIsICJjbSIsICJzaXplIiwgImVudiIsICJyZWFkIiwgImJlZ2luIiwgImpzaXplU2l6ZSIsICJwb2ludGVyU2l6ZSIsICJuYXRpdmVGdW5jdGlvbk9wdGlvbnMiLCAiY2FjaGVkQXBpIiwgImdldEFwaSIsICJfZ2V0QXBpIiwgImFwaSIsICJ2bSIsICJlbnN1cmVDbGFzc0luaXRpYWxpemVkIiwgInZ0YWJsZSIsICJtYWtlTWV0aG9kTWFuZ2xlciIsICJnZXRBcGkiLCAiY29kZSIsICJhcGkiLCAicG9pbnRlclNpemUiLCAidm0iLCAiY20iLCAia0FjY1B1YmxpYyIsICJrQWNjTmF0aXZlIiwgIkJ1ZmZlciIsICJvZmZzZXQiLCAiaW50ZXJmYWNlcyIsICJpbmRleCIsICJhY2Nlc3NGbGFncyIsICJzbGljZSIsICJjb2RlIiwgInJlYWQiLCAianNpemVTaXplIiwgImVuc3VyZUNsYXNzSW5pdGlhbGl6ZWQiLCAibWFrZU1ldGhvZE1hbmdsZXIiLCAia0FjY1N0YXRpYyIsICJwb2ludGVyU2l6ZSIsICJ2bSIsICJuYW1lIiwgInRhZ1B0ciIsICJjb2RlIiwgIkRWTV9KTklfRU5WX09GRlNFVF9TRUxGIiwgInNpemUiLCAiZW52IiwgInRocmVhZCIsICJ1bndyYXAiLCAidHlwZSIsICJEZXhGaWxlIiwgImpzaXplU2l6ZSIsICJwb2ludGVyU2l6ZSIsICJhcGkiLCAidm0iLCAicnVudGltZSIsICJQcm9jZXNzIiwgIkZpbGUiXQp9Cg==
