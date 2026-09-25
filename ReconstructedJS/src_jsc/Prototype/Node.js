// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Prototype/Node.js:1
// source line 26, bytecode pc 33
cc.Node.method("setEffectMap", function(event, type) {
    if (!this.m_EffectMap) {
        // source line 29, bytecode pc 24
        (this.m_EffectMap = {});
    }
    // source line 32, bytecode pc 38
    (this.m_EffectMap[event] = type);
});
// source line 37, bytecode pc 67
cc.Node.method("getEffectTypeByEvent", function(event) {
    if (!this.m_EffectMap) {
        // source line 40, bytecode pc 13
        return null;
    }
    // source line 43, bytecode pc 24
    return this.m_EffectMap[event];
});
// source line 50, bytecode pc 101
cc.Node.method("runEffectAction", function(event, callback) {
    var _action;
    // source line 52, bytecode pc 35
    (_action = xs.Utils.Node.createEffectAction(this, event));
    // source line 57, bytecode pc 117
    this.runAction(xs.Utils.Action.combineSequence([ _action, cc.CallFunc.create(callback) ]));
});
// source line 66, bytecode pc 135
cc.Node.method("makeDebugBoundRect", function() {
    // source line 67, bytecode pc 28
    xs.Utils.Node.makeDebugBoundRect(this);
});
// source line 73, bytecode pc 169
cc.Node.method("makeDebugPoint", function() {
    // source line 74, bytecode pc 28
    xs.Utils.Node.makeDebugPoint(this);
});
// source line 80, bytecode pc 200
cc.Node.method("m_guideTag", -1);
// source line 84, bytecode pc 234
cc.Node.method("getGuideTag", function() {
    // source line 85, bytecode pc 6
    return this.m_guideTag;
});
// source line 90, bytecode pc 268
cc.Node.method("setGuideTag", function(tag) {
    var lab;
    // source line 91, bytecode pc 9
    (this.m_guideTag = tag);
    if (xs.guide_debug) {
        // source line 97, bytecode pc 60
        (lab = xs.Factorys.Label.createByLabelId("Default"));
        // source line 98, bytecode pc 101
        lab.setString(xs.Utils.parseStringSafe(tag));
        // source line 99, bytecode pc 120
        lab.setZOrder(10000);
        // source line 100, bytecode pc 176
        xs.Utils.Node.attachNodes(this, lab, { desc: "c", sc: false });
    }
});
// source line 106, bytecode pc 302
cc.Node.method("getChildByGuideTag", function(guideTag) {
    var node, children, i;
    if ((this.getGuideTag() == guideTag)) {
        // source line 109, bytecode pc 22
        return this;
    }
    // source line 112, bytecode pc 27
    (node = null);
    // source line 113, bytecode pc 43
    (children = this.getChildren());
    // source line 114, bytecode pc 48
    (i = 0);
    while ((i < children.length)) {
        // source line 115, bytecode pc 80
        (node = children[i].getChildByGuideTag(guideTag));
        if (node) {
            // source line 117, bytecode pc 92
            return node;
        } else {
        }
        // source line 114, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 124, bytecode pc 135
    return null;
});
// source line 130, bytecode pc 336
cc.Node.method("convertToSceneSpace", function(scene) {
    var parent, pos, tempPos, _before;
    // source line 131, bytecode pc 15
    (parent = this.getParent());
    // source line 132, bytecode pc 31
    (pos = this.getPosition());
    if (parent) {
        while ((parent !== scene)) {
            // source line 136, bytecode pc 63
            (tempPos = parent.getPosition());
            // source line 142, bytecode pc 73
            (_before = {});
            // source line 143, bytecode pc 90
            (_before.x = pos.x);
            // source line 144, bytecode pc 107
            (_before.y = pos.y);
            // source line 146, bytecode pc 131
            (pos.x = (pos.x + tempPos.x));
            // source line 147, bytecode pc 155
            (pos.y = (pos.y + tempPos.y));
            // source line 149, bytecode pc 229
            xs.log("convertToSceneSpace tempPos", ((((("" + parent.getTag()) + "->") + tempPos.x) + "|") + tempPos.y));
            // source line 150, bytecode pc 312
            xs.log("convertToSceneSpace", ((((((("" + _before.x) + "|") + _before.y) + "->") + pos.x) + "|") + pos.y));
            // source line 152, bytecode pc 330
            (parent = parent.getParent());
        }
    }
    // source line 156, bytecode pc 347
    return pos;
});
// source line 173, bytecode pc 370
cc.Node.method("attr", function(jsonAttrs) {
    var _size_def, _ap_def;
    if (jsonAttrs) {
        // source line 176, bytecode pc 43
        (jsonAttrs.x && this.setPositionX(jsonAttrs.x));
        // source line 177, bytecode pc 79
        (jsonAttrs.y && this.setPositionY(jsonAttrs.y));
        // source line 178, bytecode pc 115
        (jsonAttrs.pos && this.setPosition(jsonAttrs.pos));
        // source line 181, bytecode pc 151
        (jsonAttrs.scale && this.setScale(jsonAttrs.scale));
        // source line 182, bytecode pc 187
        (jsonAttrs.scaleX && this.setScale(jsonAttrs.scaleX));
        // source line 183, bytecode pc 223
        (jsonAttrs.scaleY && this.setScale(jsonAttrs.scaleY));
        if ((jsonAttrs.width || jsonAttrs.height)) {
            // source line 187, bytecode pc 266
            (_size_def = this.getContentSize());
            // source line 188, bytecode pc 297
            (jsonAttrs.width && (_size_def.width = jsonAttrs.width));
            // source line 189, bytecode pc 328
            (jsonAttrs.height && (_size_def.height = jsonAttrs.height));
            // source line 190, bytecode pc 345
            this.setContentSize(_size_def);
        }
        // source line 192, bytecode pc 381
        (jsonAttrs.size && this.setContentSize(jsonAttrs.size));
        if ((jsonAttrs.anchorX || jsonAttrs.anchorY)) {
            // source line 197, bytecode pc 424
            (_ap_def = this.getAnchorPoint());
            // source line 198, bytecode pc 455
            (jsonAttrs.anchorX && (_ap_def.x = jsonAttrs.anchorX));
            // source line 199, bytecode pc 486
            (jsonAttrs.anchorY && (_ap_def.y = jsonAttrs.anchorY));
            // source line 200, bytecode pc 503
            this.setAnchorPoint(_ap_def);
        }
        // source line 202, bytecode pc 539
        (jsonAttrs.ap && this.setAnchorPoint(jsonAttrs.ap));
        // source line 204, bytecode pc 575
        xs.log_zj("jsonAttrs.ap", this.getAnchorPoint());
    }
});
