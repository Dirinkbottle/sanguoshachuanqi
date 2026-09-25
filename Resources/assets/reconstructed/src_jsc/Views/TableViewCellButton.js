// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TableViewCellButton.js:1
// source line 275, bytecode pc 253
(xs.Views.TableViewCellButton = cc.Layer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_beginPos = null);
    // source line 21, bytecode pc 35
    (this.m_selector = null);
    // source line 22, bytecode pc 43
    (this.m_normalImage = null);
    // source line 23, bytecode pc 51
    (this.m_selectedImage = null);
    // source line 24, bytecode pc 59
    (this.m_disabledImage = null);
    // source line 25, bytecode pc 67
    (this.m_enable = true);
    // source line 26, bytecode pc 75
    (this.m_baseTouchPriority = null);
    // source line 28, bytecode pc 83
    (this.b_outside = false);
    // source line 32, bytecode pc 98
    this.ignoreAnchorPointForPosition(false);
    // source line 34, bytecode pc 113
    this.setTouchEnabled(true);
    // source line 35, bytecode pc 137
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 37, bytecode pc 139
    return true;
},
    initWithFrameName: function(normal, selected, disabled, selector, target) {
    if (!this.init()) {
        // source line 42, bytecode pc 19
        return false;
    }
    if ((normal && (normal != ""))) {
        // source line 46, bytecode pc 59
        this.setNormalImageFrameName(normal);
    }
    if ((selected && (selected != ""))) {
        // source line 49, bytecode pc 99
        this.setSelectedImageFrameName(selected);
    }
    if ((disabled && (disabled != ""))) {
        // source line 52, bytecode pc 139
        this.setDisabledImageFrameName(disabled);
    }
    if ((selector && target)) {
        // source line 56, bytecode pc 177
        this.setCallback(selector, target);
    }
    // source line 60, bytecode pc 190
    this.updateImagesVisibility();
    // source line 62, bytecode pc 192
    return true;
},
    initWithSprite: function(normal, selected, disabled, selector, target) {
    if (!this.init()) {
        // source line 67, bytecode pc 19
        return false;
    }
    if ((normal && (normal != ""))) {
        // source line 71, bytecode pc 59
        this.setNormalImage(normal);
    }
    if ((selected && (selected != ""))) {
        // source line 74, bytecode pc 99
        this.setSelectedImage(selected);
    }
    if ((disabled && (disabled != ""))) {
        // source line 77, bytecode pc 139
        this.setDisabledImage(disabled);
    }
    if ((selector && target)) {
        // source line 81, bytecode pc 177
        this.setCallback(selector, target);
    }
    // source line 85, bytecode pc 190
    this.updateImagesVisibility();
    // source line 87, bytecode pc 192
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 90, bytecode pc 12
    this._super();
    // source line 92, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 95, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 96, bytecode pc 90
            this.setTouchPriority((touchPriority + 1));
            break;
        }
        // source line 100, bytecode pc 113
        (parent = parent.getParent());
    }
},
    onTouchBegan: function(touch, e) {
    if (((this.isVisible() === false) || !this.m_enable)) {
        // source line 108, bytecode pc 33
        return false;
    }
    if (this.isTouchInContent(touch)) {
        // source line 112, bytecode pc 75
        (this.m_beginPos = touch.getLocation());
        // source line 113, bytecode pc 88
        this.selected();
        // source line 114, bytecode pc 96
        (this.b_outside = false);
        // source line 116, bytecode pc 98
        return true;
    } else {
        // source line 118, bytecode pc 111
        (this.b_outside = true);
        // source line 120, bytecode pc 113
        return false;
    }
    // source line 124, bytecode pc 115
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    var endPos;
    // source line 133, bytecode pc 17
    (endPos = touch.getLocation());
    // source line 135, bytecode pc 30
    this.unselected();
    if (((Math.abs((endPos.x - this.m_beginPos.x)) <= 24) && (Math.abs((endPos.y - this.m_beginPos.y)) <= 24))) {
        // source line 138, bytecode pc 144
        xs.log("TableViewCellButton : activate");
        // source line 139, bytecode pc 157
        this.activate();
    }
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 144, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 146, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 147, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 148, bytecode pc 65
    (x = touchLoc.x);
    // source line 149, bytecode pc 77
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 151, bytecode pc 136
        return true;
    }
    // source line 153, bytecode pc 138
    return false;
},
    setCallback: function(selector, target) {
    // source line 157, bytecode pc 33
    xs.assert((typeof(selector) === "function"), "selector is not a function");
    // source line 158, bytecode pc 58
    (this.m_selector = selector.bind(target));
},
    activate: function() {
    // source line 163, bytecode pc 22
    xs.log("activate successed!");
    // source line 165, bytecode pc 37
    this.m_selector(this);
},
    selected: function() {
    if (this.m_normalImage) {
        if (this.m_disabledImage) {
            // source line 170, bytecode pc 41
            this.m_disabledImage.setVisible(false);
        }
        if (this.m_selectedImage) {
            // source line 173, bytecode pc 72
            this.m_normalImage.setVisible(false);
            // source line 174, bytecode pc 92
            this.m_selectedImage.setVisible(true);
        } else {
            // source line 177, bytecode pc 117
            this.m_normalImage.setVisible(true);
        }
    }
},
    unselected: function() {
    if (this.m_normalImage) {
        // source line 183, bytecode pc 30
        this.m_normalImage.setVisible(true);
        if (this.m_selectedImage) {
            // source line 185, bytecode pc 61
            this.m_selectedImage.setVisible(false);
        }
        if (this.m_disabledImage) {
            // source line 188, bytecode pc 92
            this.m_disabledImage.setVisible(false);
        }
    }
},
    setEnable: function(enable) {
    if ((this.m_enable != enable)) {
        // source line 194, bytecode pc 24
        (this.m_enable = enable);
        // source line 195, bytecode pc 37
        this.updateImagesVisibility();
    }
},
    updateImagesVisibility: function() {
    if (this.m_enable) {
        if (this.m_normalImage) {
            // source line 201, bytecode pc 41
            this.m_normalImage.setVisible(true);
        }
        if (this.m_selectedImage) {
            // source line 204, bytecode pc 72
            this.m_selectedImage.setVisible(false);
        }
        if (this.m_disabledImage) {
            // source line 207, bytecode pc 103
            this.m_disabledImage.setVisible(false);
        }
    } else {
        if (this.m_disabledImage) {
            if (this.m_normalImage) {
                // source line 213, bytecode pc 150
                this.m_normalImage.setVisible(false);
            }
            if (this.m_selectedImage) {
                // source line 216, bytecode pc 181
                this.m_selectedImage.setVisible(false);
            }
            if (this.m_disabledImage) {
                // source line 219, bytecode pc 212
                this.m_disabledImage.setVisible(true);
            }
        } else {
            if (this.m_normalImage) {
                // source line 223, bytecode pc 248
                this.m_normalImage.setVisible(true);
            }
            if (this.m_selectedImage) {
                // source line 226, bytecode pc 279
                this.m_selectedImage.setVisible(false);
            }
            if (this.m_disabledImage) {
                // source line 229, bytecode pc 310
                this.m_disabledImage.setVisible(false);
            }
        }
    }
},
    setNormalImage: function(normalSp) {
    // source line 239, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_normalImage);
    // source line 241, bytecode pc 43
    (this.m_normalImage = normalSp);
    // source line 245, bytecode pc 74
    this.setContentSize(this.m_normalImage.getContentSize());
    // source line 247, bytecode pc 151
    this.m_normalImage.setPosition(cc.p((this.getContentSize().width / 2), (this.getContentSize().height / 2)));
    // source line 248, bytecode pc 187
    xs.Utils.Node.attachNodes(this, this.m_normalImage);
    // source line 249, bytecode pc 200
    this.updateImagesVisibility();
},
    setSelectedImage: function(selectSp) {
    // source line 252, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_selectedImage);
    // source line 253, bytecode pc 43
    (this.m_selectedImage = selectSp);
    // source line 255, bytecode pc 120
    this.m_selectedImage.setPosition(cc.p((this.getContentSize().width / 2), (this.getContentSize().height / 2)));
    // source line 256, bytecode pc 156
    xs.Utils.Node.attachNodes(this, this.m_selectedImage);
    // source line 257, bytecode pc 169
    this.updateImagesVisibility();
},
    setDisabledImage: function(disableSp) {
    // source line 260, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_disabledImage);
    // source line 261, bytecode pc 43
    (this.m_disabledImage = disableSp);
    // source line 263, bytecode pc 120
    this.m_disabledImage.setPosition(cc.p((this.getContentSize().width / 2), (this.getContentSize().height / 2)));
    // source line 264, bytecode pc 156
    xs.Utils.Node.attachNodes(this, this.m_disabledImage);
    // source line 265, bytecode pc 169
    this.updateImagesVisibility();
},
    setNormalImageFrameName: function(normal) {
    var sp;
    // source line 268, bytecode pc 28
    (sp = cc.Sprite.createWithSpriteFrameName(normal));
    // source line 269, bytecode pc 45
    this.setNormalImage(sp);
},
    setSelectedImageFrameName: function(select) {
    var sp;
    // source line 272, bytecode pc 30
    (sp = cc.Sprite.createWithSpriteFrameName(normal));
    // source line 273, bytecode pc 47
    this.setSelectedImage(sp);
},
    setDisabledImageFrameName: function(disable) {
    var sp;
    // source line 276, bytecode pc 30
    (sp = cc.Sprite.createWithSpriteFrameName(normal));
    // source line 277, bytecode pc 47
    this.setDisabledImage(sp);
}
}));
// source line 281, bytecode pc 279
(xs.Views.TableViewCellButton.createWithFrameName = function(normal, selected, disabled, selector, target) {
    var cellBut;
    // source line 282, bytecode pc 23
    (cellBut = new xs.Views.TableViewCellButton());
    // source line 283, bytecode pc 58
    cellBut.initWithFrameName(normal, selected, disabled, selector, target);
    // source line 284, bytecode pc 62
    return cellBut;
});
// source line 287, bytecode pc 305
(xs.Views.TableViewCellButton.createWithSprite = function(normal, selected, disabled, selector, target) {
    var cellBut;
    // source line 288, bytecode pc 23
    (cellBut = new xs.Views.TableViewCellButton());
    // source line 289, bytecode pc 58
    cellBut.initWithSprite(normal, selected, disabled, selector, target);
    // source line 290, bytecode pc 62
    return cellBut;
});
