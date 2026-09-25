// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_cocosbuilder.js:1
// source line 8, bytecode pc 0
var _ccbGlobalContext;
// source line 5, bytecode pc 37
(cc.BuilderReader = (cc.BuilderReader || {}));
// source line 6, bytecode pc 58
(cc.BuilderReader._resourcePath = "");
// source line 8, bytecode pc 70
(_ccbGlobalContext = this);
// source line 10, bytecode pc 91
(cc.BuilderReader.setResourcePath = function(rootPath) {
    // source line 11, bytecode pc 18
    (cc.BuilderReader._resourcePath = rootPath);
});
// source line 14, bytecode pc 112
(cc.BuilderReader.load = function(file, owner, parentSize) {
    var reader, node, ownerCallbackNames, ownerCallbackNodes, i, callbackName, callbackNode, ownerCallbackControlEvents, ownerOutletNames, ownerOutletNodes, outletName, outletNode, nodesWithAnimationManagers, animationManagersForNodes, innerNode, animationManager, documentControllerName, controller, documentCallbackNames, documentCallbackNodes, j, documentCallbackControlEvents, documentOutletNames, documentOutletNodes, keyframeCallbacks, callbackSplit, callbackType, callfunc, autoPlaySeqId;
    // source line 17, bytecode pc 24
    (reader = cc._Reader.create());
    // source line 18, bytecode pc 55
    reader.setCCBRootPath(cc.BuilderReader._resourcePath);
    if (parentSize) {
        // source line 24, bytecode pc 95
        (node = reader.load(file, null, parentSize));
    } else {
        // source line 28, bytecode pc 122
        (node = reader.load(file));
    }
    if (owner) {
        // source line 35, bytecode pc 148
        (ownerCallbackNames = reader.getOwnerCallbackNames());
        // source line 36, bytecode pc 166
        (ownerCallbackNodes = reader.getOwnerCallbackNodes());
        // source line 38, bytecode pc 171
        (i = 0);
        while ((i < ownerCallbackNames.length)) {
            // source line 40, bytecode pc 188
            (callbackName = ownerCallbackNames[i]);
            // source line 41, bytecode pc 199
            (callbackNode = ownerCallbackNodes[i]);
            if ((owner[callbackName] === undefined)) {
                // source line 45, bytecode pc 256
                cc.log(((("Warning: " + "owner.") + callbackName) + " is undefined."));
            } else {
                if ((callbackNode instanceof cc.ControlButton)) {
                    // source line 51, bytecode pc 298
                    (ownerCallbackControlEvents = reader.getOwnerCallbackControlEvents());
                    // source line 52, bytecode pc 333
                    callbackNode.addTargetWithActionForControlEvents(owner, owner[callbackName], ownerCallbackControlEvents[i]);
                } else {
                    // source line 56, bytecode pc 365
                    callbackNode.setCallback(owner[callbackName], owner);
                }
            }
            // source line 38, bytecode pc 380
            i++;
        }
        // source line 62, bytecode pc 416
        (ownerOutletNames = reader.getOwnerOutletNames());
        // source line 63, bytecode pc 434
        (ownerOutletNodes = reader.getOwnerOutletNodes());
        // source line 65, bytecode pc 439
        (i = 0);
        while ((i < ownerOutletNames.length)) {
            // source line 67, bytecode pc 456
            (outletName = ownerOutletNames[i]);
            // source line 68, bytecode pc 467
            (outletNode = ownerOutletNodes[i]);
            // source line 70, bytecode pc 478
            (owner[outletName] = outletNode);
            // source line 65, bytecode pc 493
            i++;
        }
    }
    // source line 74, bytecode pc 529
    (nodesWithAnimationManagers = reader.getNodesWithAnimationManagers());
    // source line 75, bytecode pc 547
    (animationManagersForNodes = reader.getAnimationManagersForNodes());
    // source line 78, bytecode pc 552
    (i = 0);
    while ((i < nodesWithAnimationManagers.length)) {
        // source line 80, bytecode pc 569
        (innerNode = nodesWithAnimationManagers[i]);
        // source line 81, bytecode pc 580
        (animationManager = animationManagersForNodes[i]);
        // source line 83, bytecode pc 592
        (innerNode.animationManager = animationManager);
        // source line 85, bytecode pc 610
        (documentControllerName = animationManager.getDocumentControllerName());
        if (!documentControllerName) {
        } else {
            // source line 89, bytecode pc 642
            (controller = new _ccbGlobalContext[documentControllerName]());
            // source line 90, bytecode pc 654
            (controller.controllerName = documentControllerName);
            // source line 92, bytecode pc 666
            (innerNode.controller = controller);
            // source line 93, bytecode pc 678
            (controller.rootNode = innerNode);
            // source line 96, bytecode pc 696
            (documentCallbackNames = animationManager.getDocumentCallbackNames());
            // source line 97, bytecode pc 714
            (documentCallbackNodes = animationManager.getDocumentCallbackNodes());
            // source line 99, bytecode pc 719
            (j = 0);
            while ((j < documentCallbackNames.length)) {
                // source line 101, bytecode pc 736
                (callbackName = documentCallbackNames[j]);
                // source line 102, bytecode pc 747
                (callbackNode = documentCallbackNodes[j]);
                if ((controller[callbackName] === undefined)) {
                    // source line 106, bytecode pc 808
                    cc.log((((("Warning: " + documentControllerName) + ".") + callbackName) + " is undefined."));
                } else {
                    if ((callbackNode instanceof cc.ControlButton)) {
                        // source line 112, bytecode pc 850
                        (documentCallbackControlEvents = animationManager.getDocumentCallbackControlEvents());
                        // source line 113, bytecode pc 885
                        callbackNode.addTargetWithActionForControlEvents(controller, controller[callbackName], documentCallbackControlEvents[j]);
                    } else {
                        // source line 117, bytecode pc 917
                        callbackNode.setCallback(controller[callbackName], controller);
                    }
                }
                // source line 99, bytecode pc 932
                j++;
            }
            // source line 124, bytecode pc 968
            (documentOutletNames = animationManager.getDocumentOutletNames());
            // source line 125, bytecode pc 986
            (documentOutletNodes = animationManager.getDocumentOutletNodes());
            // source line 127, bytecode pc 991
            (j = 0);
            while ((j < documentOutletNames.length)) {
                // source line 129, bytecode pc 1008
                (outletName = documentOutletNames[j]);
                // source line 130, bytecode pc 1019
                (outletNode = documentOutletNodes[j]);
                // source line 132, bytecode pc 1030
                (controller[outletName] = outletNode);
                // source line 127, bytecode pc 1045
                j++;
            }
            if ((typeof(controller.onDidLoadFromCCB) == "function")) {
                // source line 137, bytecode pc 1098
                controller.onDidLoadFromCCB();
            }
            // source line 141, bytecode pc 1116
            (keyframeCallbacks = animationManager.getKeyframeCallbacks());
            // source line 142, bytecode pc 1121
            (j = 0);
            while ((j < keyframeCallbacks.length)) {
                // source line 144, bytecode pc 1155
                (callbackSplit = keyframeCallbacks[j].split(":"));
                // source line 145, bytecode pc 1164
                (callbackType = callbackSplit[0]);
                // source line 146, bytecode pc 1173
                (callbackName = callbackSplit[1]);
                if ((callbackType == 1)) {
                    // source line 150, bytecode pc 1220
                    (callfunc = cc.CallFunc.create(controller[callbackName], controller));
                    // source line 151, bytecode pc 1247
                    animationManager.setCallFunc(callfunc, keyframeCallbacks[j]);
                } else {
                    if (((callbackType == 2) && owner)) {
                        // source line 155, bytecode pc 1309
                        (callfunc = cc.CallFunc.create(owner[callbackName], owner));
                        // source line 156, bytecode pc 1336
                        animationManager.setCallFunc(callfunc, keyframeCallbacks[j]);
                    }
                }
                // source line 142, bytecode pc 1351
                j++;
            }
            // source line 161, bytecode pc 1387
            (autoPlaySeqId = animationManager.getAutoPlaySequenceId());
            if ((autoPlaySeqId != -1)) {
                // source line 164, bytecode pc 1419
                animationManager.runAnimationsForSequenceIdTweenDuration(autoPlaySeqId, 0);
            }
        }
        // source line 78, bytecode pc 1434
        i++;
    }
    // source line 168, bytecode pc 1456
    return node;
});
// source line 171, bytecode pc 133
(cc.BuilderReader.loadAsScene = function(file, owner, parentSize) {
    var node, scene;
    // source line 173, bytecode pc 36
    (node = cc.BuilderReader.load(file, owner, parentSize));
    // source line 174, bytecode pc 61
    (scene = cc.Scene.create());
    // source line 175, bytecode pc 80
    scene.addChild(node);
    // source line 177, bytecode pc 84
    return scene;
});
