#include "sgscq_custom_jsb.h"

#include <assert.h>
#include <stdlib.h>

#include "BFButton.h"
#include "cocos2d_specifics.hpp"
#include "generated/jsb_cocos2dx_extension_auto.hpp"

using namespace cocos2d;
using namespace cocos2d::extension;

static JSClass *jsb_BFButton_class = NULL;
static JSObject *jsb_BFButton_prototype = NULL;

static void js_xs_sanguosha_BFButton_finalize(JSFreeOp *fop, JSObject *obj)
{
    // The oracle leaves lifetime management to cocos2d's autorelease pool.
}

static BFButton *bfButtonFromThis(JSContext *cx, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = obj ? jsb_get_js_proxy(obj) : NULL;
    return proxy ? static_cast<BFButton *>(proxy->ptr) : NULL;
}

static JSBool js_xs_sanguosha_BFButton_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    if (argc != 0) {
        JS_ReportError(cx, "BFButton expects no constructor arguments");
        return JS_FALSE;
    }

    BFButton *native = new BFButton();
    native->autorelease();
    TypeTest<BFButton> typeTest;
    js_type_class_t *typeClass = NULL;
    uint32_t typeId = typeTest.s_id();
    HASH_FIND_INT(_js_global_type_ht, &typeId, typeClass);
    if (!typeClass) {
        JS_ReportError(cx, "BFButton JSB type was not registered");
        return JS_FALSE;
    }

    JSObject *obj = JS_NewObject(cx, typeClass->jsclass, typeClass->proto, typeClass->parentProto);
    if (!obj) {
        return JS_FALSE;
    }
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(obj));
    js_proxy_t *proxy = jsb_new_proxy(native, obj);
    JS_AddNamedObjectRoot(cx, &proxy->obj, "BFButton");
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_ctor(JSContext *cx, uint32_t argc, jsval *vp)
{
    if (argc != 0) {
        JS_ReportError(cx, "BFButton.ctor expects no arguments");
        return JS_FALSE;
    }
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    BFButton *native = new BFButton();
    native->autorelease();
    js_proxy_t *proxy = jsb_new_proxy(native, obj);
    JS_AddNamedObjectRoot(cx, &proxy->obj, "BFButton");
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_setEventOnDisable(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    if (!native) {
        JS_ReportError(cx, "Invalid BFButton native object");
        return JS_FALSE;
    }
    if (argc != 1) {
        JS_ReportError(cx, "setEventOnDisable expects one argument");
        return JS_FALSE;
    }
    JSBool enabled = JS_FALSE;
    if (!JS_ValueToBoolean(cx, JS_ARGV(cx, vp)[0], &enabled)) {
        return JS_FALSE;
    }
    native->setEventOnDisable(enabled == JS_TRUE);
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_setFilterMove(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    if (!native) {
        JS_ReportError(cx, "Invalid BFButton native object");
        return JS_FALSE;
    }
    if (argc != 1) {
        JS_ReportError(cx, "setFilterMove expects one argument");
        return JS_FALSE;
    }
    JSBool enabled = JS_FALSE;
    if (!JS_ValueToBoolean(cx, JS_ARGV(cx, vp)[0], &enabled)) {
        return JS_FALSE;
    }
    native->setFilterMove(enabled == JS_TRUE);
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_setSwallowTouch(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    if (!native) {
        JS_ReportError(cx, "Invalid BFButton native object");
        return JS_FALSE;
    }
    if (argc != 1) {
        JS_ReportError(cx, "setSwallowTouch expects one argument");
        return JS_FALSE;
    }
    JSBool enabled = JS_FALSE;
    if (!JS_ValueToBoolean(cx, JS_ARGV(cx, vp)[0], &enabled)) {
        return JS_FALSE;
    }
    native->setSwallowTouch(enabled == JS_TRUE);
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_ccTouchBegan(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    jsval *argv = JS_ARGV(cx, vp);
    if (!native || argc != 2 || !argv[0].isObject() || !argv[1].isObject()) {
        JS_ReportError(cx, "ccTouchBegan expects CCTouch and CCEvent");
        return JS_FALSE;
    }
    js_proxy_t *touchProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[0]));
    js_proxy_t *eventProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[1]));
    if (!touchProxy || !eventProxy) {
        JS_ReportError(cx, "Invalid CCTouch or CCEvent native object");
        return JS_FALSE;
    }
    bool began = native->ccTouchBegan(static_cast<CCTouch *>(touchProxy->ptr),
                                      static_cast<CCEvent *>(eventProxy->ptr));
    JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(began));
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_ccTouchEnded(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    jsval *argv = JS_ARGV(cx, vp);
    if (!native || argc != 2 || !argv[0].isObject() || !argv[1].isObject()) {
        JS_ReportError(cx, "ccTouchEnded expects CCTouch and CCEvent");
        return JS_FALSE;
    }
    js_proxy_t *touchProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[0]));
    js_proxy_t *eventProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[1]));
    if (!touchProxy || !eventProxy) {
        JS_ReportError(cx, "Invalid CCTouch or CCEvent native object");
        return JS_FALSE;
    }
    native->ccTouchEnded(static_cast<CCTouch *>(touchProxy->ptr),
                         static_cast<CCEvent *>(eventProxy->ptr));
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static JSBool js_xs_sanguosha_BFButton_ccTouchMoved(JSContext *cx, uint32_t argc, jsval *vp)
{
    BFButton *native = bfButtonFromThis(cx, vp);
    jsval *argv = JS_ARGV(cx, vp);
    if (!native || argc != 2 || !argv[0].isObject() || !argv[1].isObject()) {
        JS_ReportError(cx, "ccTouchMoved expects CCTouch and CCEvent");
        return JS_FALSE;
    }
    js_proxy_t *touchProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[0]));
    js_proxy_t *eventProxy = jsb_get_js_proxy(JSVAL_TO_OBJECT(argv[1]));
    if (!touchProxy || !eventProxy) {
        JS_ReportError(cx, "Invalid CCTouch or CCEvent native object");
        return JS_FALSE;
    }
    native->ccTouchMoved(static_cast<CCTouch *>(touchProxy->ptr),
                         static_cast<CCEvent *>(eventProxy->ptr));
    JS_SET_RVAL(cx, vp, JSVAL_VOID);
    return JS_TRUE;
}

static void js_register_xs_sanguosha_BFButton(JSContext *cx, JSObject *ns)
{
    jsb_BFButton_class = (JSClass *)calloc(1, sizeof(JSClass));
    jsb_BFButton_class->name = "BFButton";
    jsb_BFButton_class->addProperty = JS_PropertyStub;
    jsb_BFButton_class->delProperty = JS_PropertyStub;
    jsb_BFButton_class->getProperty = JS_PropertyStub;
    jsb_BFButton_class->setProperty = JS_StrictPropertyStub;
    jsb_BFButton_class->enumerate = JS_EnumerateStub;
    jsb_BFButton_class->resolve = JS_ResolveStub;
    jsb_BFButton_class->convert = JS_ConvertStub;
    jsb_BFButton_class->finalize = js_xs_sanguosha_BFButton_finalize;
    jsb_BFButton_class->flags = JSCLASS_HAS_RESERVED_SLOTS(2);

    static JSPropertySpec properties[] = {
        {0, 0, 0, JSOP_NULLWRAPPER, JSOP_NULLWRAPPER}
    };
    static JSFunctionSpec methods[] = {
        JS_FN("setEventOnDisable", js_xs_sanguosha_BFButton_setEventOnDisable, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setFilterMove", js_xs_sanguosha_BFButton_setFilterMove, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setSwallowTouch", js_xs_sanguosha_BFButton_setSwallowTouch, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("ccTouchBegan", js_xs_sanguosha_BFButton_ccTouchBegan, 2, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("ccTouchEnded", js_xs_sanguosha_BFButton_ccTouchEnded, 2, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("ccTouchMoved", js_xs_sanguosha_BFButton_ccTouchMoved, 2, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("ctor", js_xs_sanguosha_BFButton_ctor, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FS_END
    };

    jsb_BFButton_prototype = JS_InitClass(cx, ns, jsb_CCControlButton_prototype,
                                          jsb_BFButton_class,
                                          js_xs_sanguosha_BFButton_constructor, 0,
                                          properties, methods, NULL, NULL);
    JSBool found = JS_FALSE;
    JS_SetPropertyAttributes(cx, ns, "BFButton", JSPROP_ENUMERATE | JSPROP_READONLY, &found);

    TypeTest<BFButton> typeTest;
    js_type_class_t *typeClass = NULL;
    uint32_t typeId = typeTest.s_id();
    HASH_FIND_INT(_js_global_type_ht, &typeId, typeClass);
    if (!typeClass) {
        typeClass = (js_type_class_t *)malloc(sizeof(js_type_class_t));
        typeClass->type = typeId;
        typeClass->jsclass = jsb_BFButton_class;
        typeClass->proto = jsb_BFButton_prototype;
        typeClass->parentProto = jsb_CCControlButton_prototype;
        HASH_ADD_INT(_js_global_type_ht, type, typeClass);
    }
}

void register_all_xs_sanguosha(JSContext *cx, JSObject *global)
{
    jsval namespaceValue = JSVAL_VOID;
    JSObject *ns = NULL;
    if (JS_GetProperty(cx, global, "xs", &namespaceValue) &&
        !JSVAL_IS_VOID(namespaceValue) && !JSVAL_IS_NULL(namespaceValue)) {
        JS_ValueToObject(cx, namespaceValue, &ns);
    }
    if (!ns) {
        ns = JS_NewObject(cx, NULL, NULL, NULL);
        if (!ns) return;
        namespaceValue = OBJECT_TO_JSVAL(ns);
        JS_SetProperty(cx, global, "xs", &namespaceValue);
    }
    js_register_xs_sanguosha_BFButton(cx, ns);
}

void register_all_xs_sanguosha_manual(JSContext *cx, JSObject *global)
{
    // Manual registration surfaces are recovered separately; BFButton's
    // original wrappers are all in the generated registration function.
}
