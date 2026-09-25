#include "jsapi.h"
#include "jsscript.h"

#include <cstdio>
#include <fstream>
#include <iterator>
#include <string>
#include <vector>

static JSClass globalClass = {
    "global", JSCLASS_GLOBAL_FLAGS,
    JS_PropertyStub, JS_PropertyStub, JS_PropertyStub, JS_StrictPropertyStub,
    JS_EnumerateStub, JS_ResolveStub, JS_ConvertStub
};

static void reportError(JSContext *, const char *message, JSErrorReport *) {
    std::fprintf(stderr, "SpiderMonkey: %s\n", message ? message : "<no message>");
}

static bool readFile(const char *path, std::vector<char> *bytes) {
    std::ifstream input(path, std::ios::binary);
    if (!input)
        return false;
    bytes->assign(std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>());
    return !bytes->empty();
}

static bool evaluate(JSContext *cx, JSObject *global, const char *source,
                     size_t length, const char *filename) {
    JS::RootedObject rootedGlobal(cx, global);
    JS::CompileOptions options(cx);
    options.setUTF8(true).setFileAndLine(filename, 1);
    JS::RootedValue result(cx);
    return JS::Evaluate(cx, rootedGlobal, options, source, length, result.address());
}

static bool evaluateString(JSContext *cx, JSObject *global, const char *source,
                           size_t length, std::string *result) {
    JS::RootedValue value(cx);
    JS::CompileOptions options(cx);
    options.setUTF8(true).setFileAndLine("differential_result", 1);
    JS::RootedObject rootedGlobal(cx, global);
    if (!JS::Evaluate(cx, rootedGlobal, options, source, length, value.address()))
        return false;
    JSString *string = JS_ValueToString(cx, value);
    if (!string)
        return false;
    char *utf8 = JS_EncodeStringToUTF8(cx, string);
    if (!utf8)
        return false;
    *result = utf8;
    JS_free(cx, utf8);
    return true;
}

int main(int argc, char **argv) {
    if (argc != 3 && argc != 5) {
        std::fprintf(stderr, "usage: %s original.jsc candidate.js [setup.js result-expression]\n", argv[0]);
        return 2;
    }

    std::vector<char> bytecode, candidate, customSetup, customExpression;
    if (!readFile(argv[1], &bytecode) || !readFile(argv[2], &candidate) ||
        (argc == 5 && (!readFile(argv[3], &customSetup) || !readFile(argv[4], &customExpression)))) {
        std::fprintf(stderr, "could not read a non-empty input file\n");
        return 2;
    }

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
    JS_SetErrorReporter(cx, reportError);
    JS_BeginRequest(cx);

    int status = 1;
    {
        JS::RootedObject global(cx, JS_NewGlobalObject(cx, &globalClass, NULL, JS::FreshZone));
        if (!global) {
            std::fprintf(stderr, "JS_NewGlobalObject failed\n");
            status = 3;
        } else {
            JSAutoCompartment compartment(cx, global);
            if (!JS_InitStandardClasses(cx, global)) {
                std::fprintf(stderr, "JS_InitStandardClasses failed\n");
                status = 3;
            } else {
                const char defaultSetup[] =
                    "var xs={Cfg:{}};"
                    "var cc={rect:function(x,y,width,height){"
                    "return {x:x,y:y,width:width,height:height};}};";
                const char defaultExpression[] = "JSON.stringify(xs.Cfg.Sprite)";
                const char *setup = argc == 5 ? customSetup.data() : defaultSetup;
                size_t setupLength = argc == 5 ? customSetup.size() : sizeof(defaultSetup) - 1;
                const char *expression = argc == 5 ? customExpression.data() : defaultExpression;
                size_t expressionLength = argc == 5 ? customExpression.size() : sizeof(defaultExpression) - 1;
                JSScript *original = JS_DecodeScript(cx, bytecode.data(),
                    static_cast<uint32_t>(bytecode.size()), NULL, NULL);
                if (!original || !evaluate(cx, global, setup, setupLength, "oracle_setup") ||
                    !JS_ExecuteScript(cx, global, original, NULL)) {
                    std::fprintf(stderr, "could not execute original XDR script\n");
                    jsval pending;
                    if (JS_GetPendingException(cx, &pending))
                        JS_ReportPendingException(cx);
                    status = 4;
                } else {
                    std::string expected, actual;
                    if (!evaluateString(cx, global, expression, expressionLength, &expected) ||
                        !evaluate(cx, global, setup, setupLength, "candidate_setup") ||
                        !evaluate(cx, global, candidate.data(), candidate.size(), argv[2]) ||
                        !evaluateString(cx, global, expression, expressionLength, &actual)) {
                        std::fprintf(stderr, "could not execute or serialize candidate\n");
                        jsval pending;
                        if (JS_GetPendingException(cx, &pending))
                            JS_ReportPendingException(cx);
                        status = 4;
                    } else if (expected == actual) {
                        std::printf("DIFF PASS: %s matches original SpiderMonkey v22 execution (%zu JSON bytes)\n",
                                    argv[2], expected.size());
                        status = 0;
                    } else {
                        std::fprintf(stderr, "DIFF FAIL: original=%zu bytes candidate=%zu bytes\n",
                                     expected.size(), actual.size());
                        size_t i = 0;
                        while (i < expected.size() && i < actual.size() && expected[i] == actual[i])
                            ++i;
                        std::fprintf(stderr, "first difference at byte %zu\n", i);
                        std::fprintf(stderr, "oracle:    %.160s\n", expected.c_str() + (i > 80 ? i - 80 : 0));
                        std::fprintf(stderr, "candidate: %.160s\n", actual.c_str() + (i > 80 ? i - 80 : 0));
                        status = 1;
                    }
                }
            }
        }
    }

    JS_EndRequest(cx);
    JS_DestroyContext(cx);
    JS_DestroyRuntime(rt);
    JS_ShutDown();
    return status;
}
