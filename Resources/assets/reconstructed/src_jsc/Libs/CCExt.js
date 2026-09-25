// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Libs/CCExt.js:1
// source line 8, bytecode pc 42
(xs.Libs.CCExt = (xs.Libs.CCExt || {}));
// source line 12, bytecode pc 110
(xs.Libs.CCExt.Node = (xs.Libs.CCExt.Node || cc.Node.extend()));
// source line 21, bytecode pc 179
(xs.Libs.CCExt.CCB_BuilderReader = (xs.Libs.CCExt.CCB_BuilderReader || {
    s_reader: null,
    load: function(file, owner, parentSize) {
    var reader, node, ownerCallbackNames, ownerCallbackNodes, i, callbackName, callbackNode, ownerCallbackControlEvents, ownerOutletNames, ownerOutletNodes, outletName, outletNode, nodesWithAnimationManagers, animationManagersForNodes, innerNode, animationManager, documentControllerName, controller, documentCallbackNames, documentCallbackNodes, j, documentCallbackControlEvents, documentOutletNames, documentOutletNodes, keyframeCallbacks, callbackSplit, callbackType, callfunc, autoPlaySeqId;
    // source line 24, bytecode pc 27
    (this.s_reader = cc._Reader.create());
    // source line 28, bytecode pc 37
    (reader = this.s_reader);
    // source line 29, bytecode pc 68
    reader.setCCBRootPath(cc.BuilderReader._resourcePath);
    if (parentSize) {
        // source line 35, bytecode pc 108
        (node = reader.load(file, null, parentSize));
    } else {
        // source line 39, bytecode pc 135
        (node = reader.load(file));
    }
    if (owner) {
        // source line 46, bytecode pc 161
        (ownerCallbackNames = reader.getOwnerCallbackNames());
        // source line 47, bytecode pc 179
        (ownerCallbackNodes = reader.getOwnerCallbackNodes());
        // source line 49, bytecode pc 184
        (i = 0);
        while ((i < ownerCallbackNames.length)) {
            // source line 51, bytecode pc 201
            (callbackName = ownerCallbackNames[i]);
            // source line 52, bytecode pc 212
            (callbackNode = ownerCallbackNodes[i]);
            if ((owner[callbackName] === undefined)) {
                // source line 56, bytecode pc 269
                cc.log(((("Warning: " + "owner.") + callbackName) + " is undefined."));
            } else {
                if ((callbackNode instanceof cc.ControlButton)) {
                    // source line 62, bytecode pc 311
                    (ownerCallbackControlEvents = reader.getOwnerCallbackControlEvents());
                    // source line 63, bytecode pc 346
                    callbackNode.addTargetWithActionForControlEvents(owner, owner[callbackName], ownerCallbackControlEvents[i]);
                } else {
                    // source line 67, bytecode pc 378
                    callbackNode.setCallback(owner[callbackName], owner);
                }
            }
            // source line 49, bytecode pc 392
            (i = (+i + 1));
        }
        // source line 73, bytecode pc 429
        (ownerOutletNames = reader.getOwnerOutletNames());
        // source line 74, bytecode pc 447
        (ownerOutletNodes = reader.getOwnerOutletNodes());
        // source line 76, bytecode pc 452
        (i = 0);
        while ((i < ownerOutletNames.length)) {
            // source line 78, bytecode pc 469
            (outletName = ownerOutletNames[i]);
            // source line 79, bytecode pc 480
            (outletNode = ownerOutletNodes[i]);
            // source line 81, bytecode pc 491
            (owner[outletName] = outletNode);
            // source line 76, bytecode pc 505
            (i = (+i + 1));
        }
    }
    // source line 85, bytecode pc 542
    (nodesWithAnimationManagers = reader.getNodesWithAnimationManagers());
    // source line 86, bytecode pc 560
    (animationManagersForNodes = reader.getAnimationManagersForNodes());
    // source line 89, bytecode pc 565
    (i = 0);
    while ((i < nodesWithAnimationManagers.length)) {
        // source line 91, bytecode pc 582
        (innerNode = nodesWithAnimationManagers[i]);
        // source line 92, bytecode pc 593
        (animationManager = animationManagersForNodes[i]);
        // source line 94, bytecode pc 605
        (innerNode.animationManager = animationManager);
        // source line 96, bytecode pc 623
        (documentControllerName = animationManager.getDocumentControllerName());
        if (!documentControllerName) {
        } else {
            // source line 100, bytecode pc 655
            (controller = new _ccbGlobalContext[documentControllerName]());
            // source line 101, bytecode pc 667
            (controller.controllerName = documentControllerName);
            // source line 103, bytecode pc 679
            (innerNode.controller = controller);
            // source line 104, bytecode pc 691
            (controller.rootNode = innerNode);
            // source line 107, bytecode pc 709
            (documentCallbackNames = animationManager.getDocumentCallbackNames());
            // source line 108, bytecode pc 727
            (documentCallbackNodes = animationManager.getDocumentCallbackNodes());
            // source line 110, bytecode pc 732
            (j = 0);
            while ((j < documentCallbackNames.length)) {
                // source line 112, bytecode pc 749
                (callbackName = documentCallbackNames[j]);
                // source line 113, bytecode pc 760
                (callbackNode = documentCallbackNodes[j]);
                if ((controller[callbackName] === undefined)) {
                    // source line 117, bytecode pc 821
                    cc.log((((("Warning: " + documentControllerName) + ".") + callbackName) + " is undefined."));
                } else {
                    if ((callbackNode instanceof cc.ControlButton)) {
                        // source line 123, bytecode pc 863
                        (documentCallbackControlEvents = animationManager.getDocumentCallbackControlEvents());
                        // source line 124, bytecode pc 898
                        callbackNode.addTargetWithActionForControlEvents(controller, controller[callbackName], documentCallbackControlEvents[j]);
                    } else {
                        // source line 128, bytecode pc 930
                        callbackNode.setCallback(controller[callbackName], controller);
                    }
                }
                // source line 110, bytecode pc 944
                (j = (+j + 1));
            }
            // source line 135, bytecode pc 981
            (documentOutletNames = animationManager.getDocumentOutletNames());
            // source line 136, bytecode pc 999
            (documentOutletNodes = animationManager.getDocumentOutletNodes());
            // source line 138, bytecode pc 1004
            (j = 0);
            while ((j < documentOutletNames.length)) {
                // source line 140, bytecode pc 1021
                (outletName = documentOutletNames[j]);
                // source line 141, bytecode pc 1032
                (outletNode = documentOutletNodes[j]);
                // source line 143, bytecode pc 1043
                (controller[outletName] = outletNode);
                // source line 138, bytecode pc 1057
                (j = (+j + 1));
            }
            if ((typeof(controller.onDidLoadFromCCB) == "function")) {
                // source line 148, bytecode pc 1111
                controller.onDidLoadFromCCB();
            }
            // source line 152, bytecode pc 1129
            (keyframeCallbacks = animationManager.getKeyframeCallbacks());
            // source line 153, bytecode pc 1134
            (j = 0);
            while ((j < keyframeCallbacks.length)) {
                // source line 155, bytecode pc 1168
                (callbackSplit = keyframeCallbacks[j].split(":"));
                // source line 156, bytecode pc 1177
                (callbackType = callbackSplit[0]);
                // source line 157, bytecode pc 1186
                (callbackName = callbackSplit[1]);
                if ((callbackType == 1)) {
                    // source line 161, bytecode pc 1233
                    (callfunc = cc.CallFunc.create(controller[callbackName], controller));
                    // source line 162, bytecode pc 1260
                    animationManager.setCallFunc(callfunc, keyframeCallbacks[j]);
                } else {
                    if (((callbackType == 2) && owner)) {
                        // source line 166, bytecode pc 1322
                        (callfunc = cc.CallFunc.create(owner[callbackName], owner));
                        // source line 167, bytecode pc 1349
                        animationManager.setCallFunc(callfunc, keyframeCallbacks[j]);
                    }
                }
                // source line 153, bytecode pc 1363
                (j = (+j + 1));
            }
            // source line 172, bytecode pc 1400
            (autoPlaySeqId = animationManager.getAutoPlaySequenceId());
            if ((autoPlaySeqId != -1)) {
                // source line 175, bytecode pc 1432
                animationManager.runAnimationsForSequenceIdTweenDuration(autoPlaySeqId, 0);
            }
        }
        // source line 89, bytecode pc 1446
        (i = (+i + 1));
    }
    // source line 179, bytecode pc 1469
    return node;
}
}));
