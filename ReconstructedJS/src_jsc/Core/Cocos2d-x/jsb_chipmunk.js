// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_chipmunk.js:1
// source line 5, bytecode pc 0
var cp;
// source line 5, bytecode pc 32
(cp = (cp || {}));
// source line 7, bytecode pc 53
(cp.v = cc.p);
// source line 8, bytecode pc 74
(cp._v = cc._p);
// source line 9, bytecode pc 105
(cp.vzero = cp.v(0, 0));
// source line 12, bytecode pc 131
(cp.v.add = cp.vadd);
// source line 13, bytecode pc 157
(cp.v.clamp = cp.vclamp);
// source line 14, bytecode pc 183
(cp.v.cross = cp.vcross);
// source line 15, bytecode pc 209
(cp.v.dist = cp.vdist);
// source line 16, bytecode pc 235
(cp.v.distsq = cp.vdistsq);
// source line 17, bytecode pc 261
(cp.v.dot = cp.vdot);
// source line 18, bytecode pc 287
(cp.v.eql = cp.veql);
// source line 19, bytecode pc 313
(cp.v.forangle = cp.vforangle);
// source line 20, bytecode pc 339
(cp.v.len = cp.vlength);
// source line 21, bytecode pc 365
(cp.v.lengthsq = cp.vlengthsq);
// source line 22, bytecode pc 391
(cp.v.lerp = cp.vlerp);
// source line 23, bytecode pc 417
(cp.v.lerpconst = cp.vlerpconst);
// source line 24, bytecode pc 443
(cp.v.mult = cp.vmult);
// source line 25, bytecode pc 469
(cp.v.near = cp.vnear);
// source line 26, bytecode pc 495
(cp.v.neg = cp.vneg);
// source line 27, bytecode pc 521
(cp.v.normalize = cp.vnormalize);
// source line 28, bytecode pc 547
(cp.v.normalize_safe = cp.vnormalize_safe);
// source line 29, bytecode pc 573
(cp.v.perp = cp.vperp);
// source line 30, bytecode pc 599
(cp.v.project = cp.vproject);
// source line 31, bytecode pc 625
(cp.v.rotate = cp.vrotate);
// source line 32, bytecode pc 651
(cp.v.rperp = cp.vrperp);
// source line 33, bytecode pc 677
(cp.v.slerp = cp.vslerp);
// source line 34, bytecode pc 703
(cp.v.slerpconst = cp.vslerpconst);
// source line 35, bytecode pc 729
(cp.v.sub = cp.vsub);
// source line 36, bytecode pc 755
(cp.v.toangle = cp.vtoangle);
// source line 37, bytecode pc 781
(cp.v.unrotate = cp.vunrotate);
// source line 40, bytecode pc 802
(cp.clamp01 = cp.fclamp01);
// source line 44, bytecode pc 818
(cp.BoxShape2 = function(body, box) {
    var verts;
    // source line 50, bytecode pc 104
    (verts = [ box.l, box.b, box.l, box.t, box.r, box.t, box.r, box.b ]);
    // source line 53, bytecode pc 139
    return new cp.PolyShape(body, verts, cp.vzero);
});
// source line 57, bytecode pc 834
(cp.BoxShape = function(body, width, height) {
    var hw, hh;
    // source line 59, bytecode pc 9
    (hw = (width / 2));
    // source line 60, bytecode pc 19
    (hh = (height / 2));
    // source line 62, bytecode pc 74
    return cp.BoxShape2(body, new cp.BB(-hw, -hh, hw, hh));
});
// source line 67, bytecode pc 850
(cp.StaticBody = function() {
    // source line 69, bytecode pc 27
    return new cp.Body(Infinity, Infinity);
});
// source line 74, bytecode pc 866
(cp.BB = function(l, b, r, t) {
    // source line 76, bytecode pc 38
    return { l: l, b: b, r: r, t: t }
});
// source line 80, bytecode pc 882
(cp.bb = function(l, b, r, t) {
    // source line 81, bytecode pc 31
    return new cp.BB(l, b, r, t);
});
// source line 95, bytecode pc 955
Object.defineProperties(cp.Base.prototype, {
    handle: {
        get: function() {
    // source line 92, bytecode pc 12
    return this.getHandle();
},
        enumerable: true,
        configurable: true
    }
});
// source line 198, bytecode pc 1415
Object.defineProperties(cp.Space.prototype, {
    gravity: {
        get: function() {
    // source line 105, bytecode pc 12
    return this.getGravity();
},
        set: function(newValue) {
    // source line 108, bytecode pc 16
    this.setGravity(newValue);
},
        enumerable: true,
        configurable: true
    },
    iterations: {
        get: function() {
    // source line 115, bytecode pc 12
    return this.getIterations();
},
        set: function(newValue) {
    // source line 118, bytecode pc 16
    this.setIterations(newValue);
},
        enumerable: true,
        configurable: true
    },
    damping: {
        get: function() {
    // source line 125, bytecode pc 12
    return this.getDamping();
},
        set: function(newValue) {
    // source line 128, bytecode pc 16
    this.setDamping(newValue);
},
        enumerable: true,
        configurable: true
    },
    staticBody: {
        get: function() {
    // source line 135, bytecode pc 12
    return this.getStaticBody();
},
        enumerable: true,
        configurable: true
    },
    idleSpeedThreshold: {
        get: function() {
    // source line 142, bytecode pc 12
    return this.getIdleSpeedThreshold();
},
        set: function(newValue) {
    // source line 145, bytecode pc 16
    this.setIdleSpeedThreshold(newValue);
},
        enumerable: true,
        configurable: true
    },
    sleepTimeThreshold: {
        get: function() {
    // source line 152, bytecode pc 12
    return this.getSleepTimeThreshold();
},
        set: function(newValue) {
    // source line 155, bytecode pc 16
    this.setSleepTimeThreshold(newValue);
},
        enumerable: true,
        configurable: true
    },
    collisionSlop: {
        get: function() {
    // source line 162, bytecode pc 12
    return this.getCollisionSlop();
},
        set: function(newValue) {
    // source line 165, bytecode pc 16
    this.setCollisionSlop(newValue);
},
        enumerable: true,
        configurable: true
    },
    collisionBias: {
        get: function() {
    // source line 172, bytecode pc 12
    return this.getCollisionBias();
},
        set: function(newValue) {
    // source line 175, bytecode pc 16
    this.setCollisionBias(newValue);
},
        enumerable: true,
        configurable: true
    },
    collisionPersistence: {
        get: function() {
    // source line 182, bytecode pc 12
    return this.getCollisionPersistence();
},
        set: function(newValue) {
    // source line 185, bytecode pc 16
    this.setCollisionPersistence(newValue);
},
        enumerable: true,
        configurable: true
    },
    enableContactGraph: {
        get: function() {
    // source line 192, bytecode pc 12
    return this.getEnableContactGraph();
},
        set: function(newValue) {
    // source line 195, bytecode pc 16
    this.setEnableContactGraph(newValue);
},
        enumerable: true,
        configurable: true
    }
});
// source line 253, bytecode pc 1670
Object.defineProperties(cp.Body.prototype, {
    a: {
        get: function() {
    // source line 207, bytecode pc 12
    return this.getAngle();
},
        set: function(newValue) {
    // source line 210, bytecode pc 16
    this.setAngle(newValue);
},
        enumerable: true,
        configurable: true
    },
    w: {
        get: function() {
    // source line 217, bytecode pc 12
    return this.getAngVel();
},
        set: function(newValue) {
    // source line 220, bytecode pc 16
    this.setAngVel(newValue);
},
        enumerable: true,
        configurable: true
    },
    p: {
        get: function() {
    // source line 227, bytecode pc 12
    return this.getPos();
},
        set: function(newValue) {
    // source line 230, bytecode pc 16
    this.setPos(newValue);
},
        enumerable: true,
        configurable: true
    },
    v: {
        get: function() {
    // source line 237, bytecode pc 12
    return this.getVel();
},
        set: function(newValue) {
    // source line 240, bytecode pc 16
    this.setVel(newValue);
},
        enumerable: true,
        configurable: true
    },
    i: {
        get: function() {
    // source line 247, bytecode pc 12
    return this.getMoment();
},
        set: function(newValue) {
    // source line 250, bytecode pc 16
    this.setMoment(newValue);
},
        enumerable: true,
        configurable: true
    }
});
// source line 286, bytecode pc 1829
Object.defineProperties(cp.Shape.prototype, {
    body: {
        get: function() {
    // source line 263, bytecode pc 12
    return this.getBody();
},
        set: function(newValue) {
    // source line 266, bytecode pc 16
    this.setBody(newValue);
},
        enumerable: true,
        configurable: true
    },
    group: {
        get: function() {
    // source line 273, bytecode pc 12
    return this.getGroup();
},
        set: function(newValue) {
    // source line 276, bytecode pc 16
    this.setGroup(newValue);
},
        enumerable: true,
        configurable: true
    },
    collision_type: {
        get: function() {
    // source line 283, bytecode pc 12
    return this.getCollisionType();
},
        enumerable: true,
        configurable: true
    }
});
// source line 301, bytecode pc 1912
Object.defineProperties(cp.Constraint.prototype, {
    maxForce: {
        get: function() {
    // source line 295, bytecode pc 12
    return this.getMaxForce();
},
        set: function(newValue) {
    // source line 298, bytecode pc 16
    this.setMaxForce(newValue);
},
        enumerable: true,
        configurable: true
    }
});
// source line 326, bytecode pc 2038
Object.defineProperties(cp.PinJoint.prototype, {
    anchr1: {
        get: function() {
    // source line 310, bytecode pc 12
    return this.getAnchr1();
},
        set: function(newValue) {
    // source line 313, bytecode pc 16
    this.setAnchr1(newValue);
},
        enumerable: true,
        configurable: true
    },
    anchr2: {
        get: function() {
    // source line 320, bytecode pc 12
    return this.getAnchr2();
},
        set: function(newValue) {
    // source line 323, bytecode pc 16
    this.setAnchr2(newValue);
},
        enumerable: true,
        configurable: true
    }
});
