(xs.Views.Dialog.NetConnectErr.create = function() {
    var ret, visibleSize, label, labelSize, defaultLabelSize, bgSize;
    var maxLabelWidth, maxLabelHeight, ccbSize, fitScale, detail, content, baseContent;

    visibleSize = xs.director.getVisibleSize();
    detail = xs.Utils.Net.lastErrorMessage || "";
    baseContent = xs.Tools.String.createString("auto_name_392");
    content = baseContent;
    if (detail) {
        content += "\n" + detail;
    }

    ret = xs.Views.Dialog.createOneButtonDialog(
        xs.Tools.String.createString("auto_name_391"),
        baseContent,
        xs.Tools.String.createString("auto_name_319"),
        function() {
            xs.Views.Mgr.hideDialogByName("NetConnectErr");
        }
    );
    ret.getContentText().setString(content);
    ret.getTitleText().setString(xs.Tools.String.createString("auto_name_391"));

    // Wrap long failure details to the available screen area, then recenter
    // and scale the CCB node if its final dimensions still exceed the window.
    label = ret.getContentText();
    labelSize = label.getContentSize();
    defaultLabelSize = ret._defaultLabelSize || labelSize;
    bgSize = ret._bg1.getContentSize();
    maxLabelWidth = Math.max(160, visibleSize.width - 80 -
        Math.max(0, bgSize.width - defaultLabelSize.width));
    maxLabelHeight = Math.max(80, visibleSize.height - 64 -
        Math.max(0, bgSize.height - defaultLabelSize.height));
    if (labelSize.width > maxLabelWidth || labelSize.height > maxLabelHeight) {
        label.setDimensions(cc.size(maxLabelWidth, maxLabelHeight));
        ret.updateSize(label.getContentSize(), defaultLabelSize);
    }

    ccbSize = ret._ccbNode.getContentSize();
    fitScale = Math.min(1, (visibleSize.width - 32) / ccbSize.width,
        (visibleSize.height - 32) / ccbSize.height);
    ret._ccbNode.setScale(fitScale);
    ret._ccbNode.setPosition(cc.p(
        (visibleSize.width - ccbSize.width * fitScale) / 2,
        (visibleSize.height - ccbSize.height * fitScale) / 2
    ));
    return ret;
});
