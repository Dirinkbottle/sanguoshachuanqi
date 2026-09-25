// SGSCQ_LOCAL_RETRY_OVERLAY: APK-only network retry behavior.
// ReconstructedJS remains bytecode-derived and is not modified by this overlay.
xs.Utils.Net = xs.Utils.Net || {};
xs.Utils.Net.reqAsync = function(url, readyFunc, errFunc, type, responseType) {
    var requestType = type || "GET";
    var resultType = responseType || "text";
    var attempt = 0;
    var maxAttempts = 4; // first request plus three automatic retries
    var callbacks = { ready: readyFunc, error: errFunc };

    xs.Utils.Net.lastErrorMessage = "";

    var sendAttempt = function() {
        var request = new XMLHttpRequest();
        var handled = false;
        attempt += 1;
        xs.net_instance = request;
        request.open(requestType, url, true);
        request.onreadystatechange = function() {
            var payload, detail, delay;
            if (request.readyState !== 4 || handled) {
                return;
            }
            handled = true;

            if (request.status === 200) {
                if (resultType === "text") {
                    if (typeof callbacks.ready === "function") {
                        callbacks.ready.call(callbacks, request.responseText);
                    }
                } else if (resultType === "arraybuffer") {
                    if (typeof callbacks.ready === "function") {
                        callbacks.ready.call(callbacks, request);
                    }
                }
                return;
            }

            payload = resultType === "arraybuffer" ? request.response : request.responseText;
            detail = request.statusText || request.responseText || "network request failed";
            detail = String(detail).replace(/[\r\n]+/g, " ").substring(0, 200);
            xs.log("XHR failed: " + url + " status=" + request.status +
                " attempt=" + attempt + "/" + maxAttempts + " error=" + detail);

            if (attempt < maxAttempts) {
                // Back off 0.5s, 1s, then 2s. Keep the request loading layer up.
                delay = 500 * Math.pow(2, attempt - 1);
                setTimeout(sendAttempt, delay);
                return;
            }

            xs.Utils.Net.lastErrorMessage = detail;
            if (typeof callbacks.error === "function") {
                callbacks.error.call(callbacks, payload);
            }
        };
        request.send();
    };

    sendAttempt();
};
