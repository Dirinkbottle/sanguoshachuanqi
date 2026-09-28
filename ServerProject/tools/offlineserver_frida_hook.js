import Java from 'frida-java-bridge';

/*
 * Frida Gadget 17.2 hook for the local SGSCQ offline server.
 * Captures HTTP requests/responses and the server's route/business dispatch
 * inputs and outputs. Logs are JSONL in the app's external files directory.
 */
(function () {
  'use strict';

  var outputFile = null;
  var nextRequestId = 1;
  var activeRequestByThread = {};
  var activeHttpByThread = {};
  var hooked = {};
  var MAX_TEXT = 16 * 1024 * 1024;

  function now() { return new Date().toISOString(); }

  function emit(event) {
    event.time = now();
    try {
      var line = JSON.stringify(event) + '\n';
      if (outputFile !== null) {
        var FOS = Java.use('java.io.FileOutputStream');
        var JString = Java.use('java.lang.String');
        var bytes = JString.$new(line).getBytes('UTF-8');
        var stream = FOS.$new(outputFile, true);
        stream.write(bytes);
        stream.close();
      } else {
        console.log('[SGSCQ_TRACE] ' + line.trim());
      }
    } catch (e) {
      console.log('[SGSCQ_TRACE_ERROR] ' + e);
    }
  }

  function threadId() {
    try { return String(Java.use('java.lang.Thread').currentThread().getId()); }
    catch (_) { return 'unknown'; }
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
      var JavaBytes = Java.array('byte', unsigned);
      var Base64 = Java.use('android.util.Base64');
      var StringClass = Java.use('java.lang.String');
      return {
        length: n,
        utf8: StringClass.$new(JavaBytes, 'UTF-8').toString(),
        base64: Base64.encodeToString(JavaBytes, 2)
      };
    } catch (e) {
      return { error: String(e), value: String(value) };
    }
  }

  function safe(value, depth) {
    if (depth > 8) return '[depth-limit]';
    if (value === null || value === undefined) return value;
    if (typeof value === 'string' || typeof value === 'number' || typeof value === 'boolean') return value;
    try {
      var cls = value.getClass ? String(value.getClass().getName()) : '';
      if (cls === 'byte[]' || cls === '[B') return bytesInfo(value);
      if (cls === 'java.lang.String') return String(value.toString());
      if (cls === 'org.json.JSONObject' || cls === 'org.json.JSONArray') return String(value.toString());
      if (cls.indexOf('java.util.Map') !== -1 || (value.entrySet && value.get)) {
        var result = {};
        var iterator = value.entrySet().iterator();
        var count = 0;
        while (iterator.hasNext() && count++ < 10000) {
          var entry = iterator.next();
          result[String(entry.getKey())] = safe(entry.getValue(), depth + 1);
        }
        return result;
      }
      if (cls.indexOf('java.util.List') !== -1 || (value.iterator && value.size)) {
        var arr = [];
        var it = value.iterator();
        var listCount = 0;
        while (it.hasNext() && listCount++ < 10000) arr.push(safe(it.next(), depth + 1));
        return arr;
      }
      if (cls.indexOf('[') === 0 && value.length !== undefined) {
        var nativeArray = [];
        for (var j = 0; j < Math.min(value.length, 10000); j++) nativeArray.push(safe(value[j], depth + 1));
        return nativeArray;
      }
      return String(value.toString());
    } catch (e) {
      try { return String(value); } catch (_) { return '[unprintable: ' + e + ']'; }
    }
  }

  function stackTrace() {
    try {
      var Log = Java.use('android.util.Log');
      var Exception = Java.use('java.lang.Exception');
      return String(Log.getStackTraceString(Exception.$new()));
    } catch (e) { return String(e); }
  }

  function responseBody(raw) {
    try {
      var s = String(raw);
      var split = s.indexOf('\r\n\r\n');
      return split >= 0 ? s.slice(split + 4) : s;
    } catch (_) { return ''; }
  }

  function requestId() { return activeRequestByThread[threadId()] || null; }

  function hookOverload(clazz, methodName, overload, label) {
    var key = label + '#' + methodName + '(' + overload.argumentTypes.map(function (t) { return t.className; }).join(',') + ')';
    if (hooked[key]) return;
    hooked[key] = true;
    overload.implementation = function () {
      var args = [];
      for (var i = 0; i < arguments.length; i++) args.push(safe(arguments[i], 0));
      var tid = threadId();
      var rid = requestId();
      emit({ event: 'function.enter', request_id: rid, thread_id: tid, function: key, args: args, stack: stackTrace() });
      var result;
      try {
        result = overload.apply(this, arguments);
        emit({ event: 'function.leave', request_id: rid, thread_id: tid, function: key, result: safe(result, 0) });
        return result;
      } catch (e) {
        emit({ event: 'function.throw', request_id: rid, thread_id: tid, function: key, error: String(e) });
        throw e;
      }
    };
  }

  function hookRouteClasses() {
    // Business handler methods carrying Maps or returning wire byte arrays.
    Java.enumerateLoadedClasses({
      onMatch: function (name) {
        if (name.indexOf('com.sgscq.vpn.handler.') !== 0) return;
        try {
          var K = Java.use(name);
          var methods = K.class.getDeclaredMethods();
          for (var i = 0; i < methods.length; i++) {
            var method = methods[i];
            var methodName = String(method.getName());
            var returnType = String(method.getReturnType().getName());
            var params = method.getParameterTypes();
            var relevant = returnType === 'byte[]' || returnType === '[B';
            for (var p = 0; p < params.length; p++) {
              var typeName = String(params[p].getName());
              if (typeName === 'java.util.Map' || typeName.indexOf('java.util.Map<') === 0) relevant = true;
            }
            if (!relevant || !K[methodName]) continue;
            var overloads = K[methodName].overloads;
            for (var o = 0; o < overloads.length; o++) hookOverload(K, methodName, overloads[o], name);
          }
        } catch (_) {}
      },
      onComplete: function () {
        emit({ event: 'hook.ready', target: 'handler-map-and-byte-array-methods' });
      }
    });
  }

  function hookCore() {
    var Y = Java.use('com.sgscq.vpn.y2');

    // HTTP ingress and complete HTTP response serialization.
    var j2 = Y.j2.overload('java.lang.String', 'java.lang.String', 'java.lang.String');
    j2.implementation = function (method, path, body) {
      var tid = threadId();
      var rid = nextRequestId++;
      activeRequestByThread[tid] = rid;
      emit({ event: 'http.request', request_id: rid, thread_id: tid,
        method: String(method), path: String(path),
        header_lines: activeHttpByThread[tid] ? activeHttpByThread[tid].headers : [],
        body: String(body), stack: stackTrace() });
      try {
        var result = j2.call(this, method, path, body);
        var wire = bytesInfo(result);
        emit({ event: 'http.response', request_id: rid, thread_id: tid,
          response: wire, response_body: responseBody(wire.utf8 || '') });
        return result;
      } catch (e) {
        emit({ event: 'http.error', request_id: rid, thread_id: tid, error: String(e) });
        throw e;
      } finally {
        delete activeRequestByThread[tid];
      }
    };

    // Business action dispatch and alternate map-based dispatch path.
    ['e2', 'd2'].forEach(function (name) {
      try {
        var fn = Y[name];
        for (var i = 0; i < fn.overloads.length; i++) hookOverload(Y, name, fn.overloads[i], 'com.sgscq.vpn.y2');
      } catch (_) {}
    });

    // Parsed HTTP request and final reply handoff at the socket boundary.
    try {
      var c2 = Y.c2.overload('java.net.Socket', 'java.lang.String', 'java.io.BufferedReader');
      c2.implementation = function (socket, requestLine, reader) {
        var tid = threadId();
        activeHttpByThread[tid] = { request_line: String(requestLine), headers: [] };
        emit({ event: 'http.socket.request_line', thread_id: tid, request_line: String(requestLine) });
        try { return c2.call(this, socket, requestLine, reader); }
        finally { delete activeHttpByThread[tid]; }
      };
    } catch (e) { emit({ event: 'hook.warning', target: 'y2.c2', error: String(e) }); }

    try {
      var BufferedReader = Java.use('java.io.BufferedReader');
      var readLine = BufferedReader.readLine.overload();
      readLine.implementation = function () {
        var line = readLine.call(this);
        var tid = threadId();
        if (activeHttpByThread[tid] && line !== null && String(line).length > 0) {
          activeHttpByThread[tid].headers.push(String(line));
        }
        return line;
      };
    } catch (e) { emit({ event: 'hook.warning', target: 'BufferedReader.readLine', error: String(e) }); }

    hookRouteClasses();
    emit({ event: 'hook.ready', target: 'y2.j2,y2.e2,y2.d2,y2.c2' });
  }

  Java.perform(function () {
    try {
      var ActivityThread = Java.use('android.app.ActivityThread');
      var app = ActivityThread.currentApplication();
      if (app !== null) {
        var dir = app.getExternalFilesDir(null);
        if (dir === null) dir = app.getFilesDir();
        var File = Java.use('java.io.File');
        outputFile = File.$new(dir, 'sgscq-frida-trace.jsonl').getAbsolutePath().toString();
      }
    } catch (_) {}
    emit({ event: 'hook.start', output: outputFile || 'logcat' });
    try { hookCore(); }
    catch (e) { emit({ event: 'hook.error', error: String(e), stack: stackTrace() }); }
  });
})();
