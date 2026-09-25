// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/ProductSys.js:1
// source line 61, bytecode pc 71
(xsc.Tools.ProductSys = {
    getArea: function() {
    if ((xsc.app_indentify.indexOf("tw") == 0)) {
        // source line 9, bytecode pc 44
        return xsc.Const_Area_TW;
    } else {
        // source line 12, bytecode pc 60
        return xsc.Const_Area_CN;
    }
},
    getOurttf: function() {
    // source line 17, bytecode pc 26
    switch (xsc.Tools.ProductSys.getArea()) {
        case xsc.Const_Area_TW:
        // source line 19, bytecode pc 67
        return "ourttf-tw.ttf";
        break;
        case xsc.Const_Area_CN:
        // source line 22, bytecode pc 78
        return "ourttf.ttf";
        break;
        default:
        // source line 25, bytecode pc 106
        xs.error("area err");
        break;
    }
    // source line 28, bytecode pc 117
    return "ourttf.ttf";
},
    getAreaTag: function() {
    if (xs.isVersionForPublish) {
        // source line 33, bytecode pc 20
        return "sb";
    }
    // source line 35, bytecode pc 33
    switch (this.getArea()) {
        case xsc.Const_Area_TW:
        // source line 37, bytecode pc 74
        return "tw";
        case xsc.Const_Area_CN:
        // source line 39, bytecode pc 80
        return "cn";
        default:
        // source line 41, bytecode pc 103
        xs.error("getAreaTag err");
        // source line 42, bytecode pc 109
        return "cn";
    }
},
    getCurrencyTypeString: function() {
    // source line 47, bytecode pc 26
    switch (xsc.Tools.ProductSys.getArea()) {
        case xsc.Const_Area_TW:
        // source line 49, bytecode pc 67
        return "TWD";
        break;
        case xsc.Const_Area_CN:
        // source line 52, bytecode pc 78
        return "CNY";
        break;
        default:
        // source line 55, bytecode pc 106
        xs.error("area err");
        break;
    }
    // source line 58, bytecode pc 117
    return "ERR";
},
    getPayTypeString: function() {
    var _payTypeStr;
    if (xsc.Tools.PaySys.isUsingAppStore()) {
        // source line 65, bytecode pc 43
        (_payTypeStr = "appStore");
    } else {
        if (xsc.Tools.PaySys.isUsingAnySdk()) {
            // source line 69, bytecode pc 88
            (_payTypeStr = "anySdk");
        } else {
            if (xsc.Tools.PaySys.isUsingAliPay()) {
                // source line 73, bytecode pc 133
                (_payTypeStr = "alipay");
            } else {
                if (xsc.Tools.PaySys.isUsing3rdSdk()) {
                    // source line 77, bytecode pc 178
                    (_payTypeStr = "3rdPay");
                } else {
                    if (xsc.Tools.PaySys.isUsingEasySdk()) {
                        // source line 80, bytecode pc 223
                        (_payTypeStr = "easysdk");
                    } else {
                        // source line 83, bytecode pc 237
                        (_payTypeStr = "default");
                    }
                }
            }
        }
    }
    // source line 86, bytecode pc 241
    return _payTypeStr;
}
});
