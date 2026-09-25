// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Button/ChangeNumBtn.js:1
// source line 10, bytecode pc 62
(xs.Views.Button.ChangeNumBtn = (xs.Views.Button.ChangeNumBtn || {
    create: function(type) {
    var btn, sprite, contentSize;
    // source line 11, bytecode pc 35
    (btn = xs.Views.Btn.create("Btn_ChangeNum"));
    // source line 13, bytecode pc 40
    (sprite = null);
    // source line 14, bytecode pc 44
    switch (type) {
        case 1:
        // source line 16, bytecode pc 118
        (sprite = xs.Factorys.Sprite.create("add1", "Daojugoumaixitong"));
        break;
        case 2:
        // source line 19, bytecode pc 165
        (sprite = xs.Factorys.Sprite.create("decrease1", "Daojugoumaixitong"));
        break;
        case 3:
        // source line 22, bytecode pc 212
        (sprite = xs.Factorys.Sprite.create("add10", "Daojugoumaixitong"));
        break;
        case 4:
        // source line 25, bytecode pc 259
        (sprite = xs.Factorys.Sprite.create("decrease10", "Daojugoumaixitong"));
        break;
        case 5:
        // source line 28, bytecode pc 306
        (sprite = xs.Factorys.Sprite.create("max", "Daojugoumaixitong"));
        break;
        default:
        // source line 31, bytecode pc 330
        this.error("type error");
        break;
    }
    // source line 34, bytecode pc 353
    (contentSize = btn.getContentSize());
    // source line 35, bytecode pc 409
    sprite.setPosition(cc.p((contentSize.width / 2), (contentSize.height / 2)));
    // source line 36, bytecode pc 428
    btn.addChild(sprite);
    // source line 37, bytecode pc 432
    return btn;
}
}));
