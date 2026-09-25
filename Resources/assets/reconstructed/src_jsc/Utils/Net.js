// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Net.js:1
// source line 9, bytecode pc 42
(xs.Utils.Net = (xs.Utils.Net || {}));
// source line 19, bytecode pc 68
(xs.Utils.Net.reqAsync = function(url, readyFunc, errFunc, type, responseType) {
    var _type, _responseType, _request;
    // source line 21, bytecode pc 17
    (_type = (type || "GET"));
    // source line 22, bytecode pc 41
    (_responseType = (responseType || "text"));
    // source line 28, bytecode pc 62
    (xs.net_instance = new XMLHttpRequest());
    // source line 32, bytecode pc 82
    (_request = xs.net_instance);
    // source line 34, bytecode pc 113
    _request.open(_type, url, true);
    // source line 35, bytecode pc 134
    _request.send();
    // source line 36, bytecode pc 154
    (_request.func = function() {
    if (((_request.readyState == 4) && (_request.status == 200))) {
        if ((_responseType == "text")) {
            // source line 44, bytecode pc 93
            this.ready(_request.responseText);
        } else {
            if ((_responseType == "arraybuffer")) {
                // source line 47, bytecode pc 141
                this.ready(_request);
            }
        }
    } else {
        if ((_responseType == "text")) {
            // source line 58, bytecode pc 194
            this.error(_request.responseText);
        } else {
            if ((_responseType == "arraybuffer")) {
                if ((this.error != null)) {
                    // source line 63, bytecode pc 260
                    this.error(_request.response);
                }
            } else {
                // source line 66, bytecode pc 284
                this.log("err_000");
            }
        }
    }
});
    // source line 73, bytecode pc 217
    (_request.onreadystatechange = _request.func.bind({ ready: readyFunc, error: errFunc }));
});
