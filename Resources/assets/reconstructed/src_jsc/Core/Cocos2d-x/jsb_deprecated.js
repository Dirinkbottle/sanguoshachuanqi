// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_deprecated.js:1
// source line 3, bytecode pc 0
var cc;
// source line 3, bytecode pc 32
(cc = (cc || {}));
// source line 5, bytecode pc 43
(function() {
    var logW;
    // source line 7, bytecode pc 14
    (logW = function(old_name, new_name) {
    // source line 8, bytecode pc 42
    cc.log((((("\n********** \n" + old_name) + " was deprecated, please use ") + new_name) + " instead.\n**********"));
});
    // source line 12, bytecode pc 35
    (cc.AnimationCache.purgeSharedAnimationCache = function() {
    // source line 13, bytecode pc 26
    logW("cc.AnimationCache.purgeSharedAnimationCache", "cc.AnimationCache.destroyInstance");
    // source line 14, bytecode pc 48
    cc.AnimationCache.destroyInstance();
});
    // source line 18, bytecode pc 61
    (cc.Action.prototype.copy = function() {
    var arguments;
    // source line 18, bytecode pc 4
    (arguments = arguments);
    // source line 19, bytecode pc 31
    logW("cc.Action.copy", "cc.Action.clone");
    // source line 20, bytecode pc 69
    return cc.Action.prototype.clone.apply(this, arguments);
});
    // source line 23, bytecode pc 87
    (cc.Animation.prototype.copy = function() {
    var arguments;
    // source line 23, bytecode pc 4
    (arguments = arguments);
    // source line 24, bytecode pc 31
    logW("cc.Animation.copy", "cc.Animation.clone");
    // source line 25, bytecode pc 69
    return cc.Animation.prototype.clone.apply(this, arguments);
});
    // source line 28, bytecode pc 113
    (cc.Node.prototype.nodeToWorldTransform = function() {
    var arguments;
    // source line 28, bytecode pc 4
    (arguments = arguments);
    // source line 29, bytecode pc 31
    logW("cc.Node.nodeToWorldTransform", "cc.Node.getNodeToWorldTransform");
    // source line 30, bytecode pc 69
    return cc.Node.prototype.getNodeToWorldTransform.apply(this, arguments);
});
    // source line 33, bytecode pc 139
    (cc.Node.prototype.nodeToParentTransform = function() {
    var arguments;
    // source line 33, bytecode pc 4
    (arguments = arguments);
    // source line 34, bytecode pc 31
    logW("cc.Node.nodeToParentTransform", "cc.Node.getNodeToParentTransform");
    // source line 35, bytecode pc 69
    return cc.Node.prototype.getNodeToParentTransform.apply(this, arguments);
});
    // source line 38, bytecode pc 165
    (cc.Node.prototype.worldToNodeTransform = function() {
    var arguments;
    // source line 38, bytecode pc 4
    (arguments = arguments);
    // source line 39, bytecode pc 31
    logW("cc.Node.worldToNodeTransform", "cc.Node.getWorldToNodeTransform");
    // source line 40, bytecode pc 69
    return cc.Node.prototype.getWorldToNodeTransform.apply(this, arguments);
});
    // source line 43, bytecode pc 191
    (cc.Node.prototype.parentToNodeTransform = function() {
    var arguments;
    // source line 43, bytecode pc 4
    (arguments = arguments);
    // source line 44, bytecode pc 31
    logW("cc.Node.parentToNodeTransform", "cc.Node.getParentToNodeTransform");
    // source line 45, bytecode pc 69
    return cc.Node.prototype.getParentToNodeTransform.apply(this, arguments);
});
    // source line 48, bytecode pc 217
    (cc.Node.prototype.numberOfRunningActions = function() {
    var arguments;
    // source line 48, bytecode pc 4
    (arguments = arguments);
    // source line 49, bytecode pc 31
    logW("cc.Node.numberOfRunningActions", "cc.Node.getNumberOfRunningActions");
    // source line 50, bytecode pc 69
    return cc.Node.prototype.getNumberOfRunningActions.apply(this, arguments);
});
    // source line 53, bytecode pc 243
    (cc.Node.prototype.numberOfRunningActionsInTarget = function() {
    var arguments;
    // source line 53, bytecode pc 4
    (arguments = arguments);
    // source line 54, bytecode pc 31
    logW("cc.Node.numberOfRunningActionsInTarget", "cc.Node.getNumberOfRunningActionsInTarget");
    // source line 55, bytecode pc 69
    return cc.Node.prototype.getNumberOfRunningActionsInTarget.apply(this, arguments);
});
    // source line 58, bytecode pc 269
    (cc.TMXTiledMap.prototype.propertiesForGID = function() {
    var arguments;
    // source line 58, bytecode pc 4
    (arguments = arguments);
    // source line 59, bytecode pc 31
    logW("cc.TMXTiledMap.propertiesForGID", "cc.TMXTiledMap.getPropertiesForGID");
    // source line 60, bytecode pc 69
    return cc.TMXTiledMap.prototype.getPropertiesForGID.apply(this, arguments);
});
    // source line 63, bytecode pc 285
    (cc.registerTargettedDelegate = function() {
    var arguments;
    // source line 63, bytecode pc 4
    (arguments = arguments);
    // source line 64, bytecode pc 31
    logW("cc.registerTargettedDelegate", "cc.registerTargetedDelegate");
    // source line 65, bytecode pc 59
    return cc.registerTargetedDelegate.apply(this, arguments);
});
}).call(void 0);
