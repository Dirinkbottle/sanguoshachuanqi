(function() {
    function patchRefineSelection() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Dialog
            || !xs.Views.Dialog.RefineEquipmentDialog) {
            return false;
        }

        var proto = xs.Views.Dialog.RefineEquipmentDialog.prototype;
        if (!proto || proto.__sgscqRefineSelectPatched) {
            return !!proto;
        }
        proto.__sgscqRefineSelectPatched = true;

        function addMatchingEquipment(dialog, grade) {
            var changed = false;
            for (var i = 0; i < dialog.m_equipData.length; i++) {
                var showData = dialog.m_equipData[i];
                if (showData.getModel().getGrade() !== grade) {
                    continue;
                }
                if (dialog.isMaxLevel() || dialog.getSubMaxExp() <= 0
                    || dialog.selectMaxLength >= dialog.cfg.maxLength) {
                    break;
                }
                var before = showData.getSelectNum();
                showData.addSelectNum();
                var added = Math.max(0, showData.getSelectNum() - before);
                dialog.selectMaxLength += added;
                changed = changed || added > 0;
            }
            return changed;
        }

        function addMatchingStones(dialog, itemId) {
            var changed = false;
            for (var i = 0; i < dialog.m_refineList.length; i++) {
                var showData = dialog.m_refineList[i];
                if (showData.getModel().getItemId() != itemId) {
                    continue;
                }
                if (dialog.isMaxLevel() || dialog.selectMaxLength >= dialog.cfg.maxLength) {
                    break;
                }

                var current = showData.getSelectNum();
                var available = Math.max(0, showData.getMaxNum() - current);
                var remainingSlots = Math.max(0, dialog.cfg.maxLength - dialog.selectMaxLength);
                var expPer = showData.getOriModel().getEatedRefineExp();
                var remainingExp = dialog.getSubMaxExp();
                if (available <= 0 || remainingSlots <= 0 || expPer <= 0 || remainingExp <= 0) {
                    continue;
                }

                var needed = Math.ceil(remainingExp / expPer);
                var selectCount = Math.min(needed, available, remainingSlots);
                if (selectCount <= 0) {
                    continue;
                }
                showData.setSelectNum(current + selectCount);
                dialog.selectMaxLength += selectCount;
                changed = true;
            }
            return changed;
        }

        function selectAllByExperience(dialog, grade, itemId) {
            if (dialog.isMaxLevel()) {
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                return;
            }
            var changed = addMatchingEquipment(dialog, grade);
            changed = addMatchingStones(dialog, itemId) || changed;
            if (changed) {
                dialog.m_tableView.refreshDataAndReload();
                dialog.onEquipSelect();
            }
        }

        function selectAllGold() {
            selectAllByExperience(this, xs.Constant_Grade_Gold,
                xs.Models.ItemID_RefineStone_zhongji);
        }

        function selectAllSilver() {
            selectAllByExperience(this, xs.Constant_Grade_Silver,
                xs.Models.ItemID_RefineStone_chuji);
        }

        proto.onSelectAllGold = selectAllGold;
        proto.onLongSelectAllGold = selectAllGold;
        proto.onSelectAllSilver = selectAllSilver;
        proto.onLongSelectAllSilver = selectAllSilver;
        return true;
    }

    function patchFreshmanAudio() {
        if (typeof xs === "undefined" || !xs.Cfg || !xs.Cfg.Audio || !xs.Cfg.Audio.Effect) {
            return false;
        }
        var effects = xs.Cfg.Audio.Effect;
        if (effects.__sgscqFreshmanAudioPatched) {
            return true;
        }
        if (!effects.Audio_EFF_Girl_1 || !effects.Audio_EFF_Girl_2) {
            return false;
        }
        effects.__sgscqFreshmanAudioPatched = true;
        effects.Audio_EFF_Girl_1.file = "UI/eff_wusunshangxiang.mp3";
        effects.Audio_EFF_Girl_2.file = "UI/eff_lvlingqi.mp3";
        return true;
    }

    function patchFreshmanFightStatuses() {
        if (typeof xs === "undefined" || !xs.Cfg || !xs.Cfg.Fight
            || !xs.Cfg.Fight.NewPlayerFight) {
            return false;
        }
        var rounds = xs.Cfg.Fight.NewPlayerFight.rounds;
        if (!rounds || rounds.__sgscqStatusPatched) {
            return !!rounds;
        }

        function findRoundIndex(skill) {
            for (var i = 0; i < rounds.length; i++) {
                if (rounds[i] && rounds[i].skill === skill) {
                    return i;
                }
            }
            return -1;
        }

        var guose = findRoundIndex("guose");
        if (guose >= 0 && (!rounds[guose + 1] || rounds[guose + 1].skill !== "le_add")) {
            rounds.splice(guose + 1, 0,
                {from: [0], to: [3], skill: "le_add", type: 0, params: {to: [{}]}});
        }
        var qiaobianAfter = findRoundIndex("qiaobian_after");
        if (qiaobianAfter >= 0
            && (!rounds[qiaobianAfter + 1] || rounds[qiaobianAfter + 1].skill !== "le_add")) {
            rounds.splice(qiaobianAfter + 1, 0,
                {from: [4], to: [1], skill: "le_add", type: 0, params: {to: [{}]}});
        }
        var fangzhuEnd = findRoundIndex("fangzhu_1");
        if (fangzhuEnd >= 0
            && (!rounds[fangzhuEnd + 1] || rounds[fangzhuEnd + 1].skill !== "feng_add")) {
            rounds.splice(fangzhuEnd + 1, 0,
                {from: [5], to: [2], skill: "feng_add", type: 0, params: {to: [{}]}});
        }
        if (guose < 0 || qiaobianAfter < 0 || fangzhuEnd < 0) {
            return false;
        }
        rounds.__sgscqStatusPatched = true;
        return true;
    }

    function patchGeneralPreviewFighting() {
        if (typeof xs === "undefined" || !xs.Models || !xs.Models.General
            || !xs.Models.General.prototype) {
            return false;
        }
        var proto = xs.Models.General.prototype;
        if (proto.__sgscqPreviewFightingPatched) {
            return true;
        }
        if (typeof proto.getAttrNaked !== "function") {
            return false;
        }
        var originalGetAttrNaked = proto.getAttrNaked;
        proto.getAttrNaked = function(attrType) {
            var value = originalGetAttrNaked.apply(this, arguments);
            if (attrType !== xs.Constant_AttrType_FightPoint || Number(value) > 0
                || typeof this._getAttrOriginal !== "function") {
                return value;
            }
            var previewValue = this._getAttrOriginal(attrType);
            return Number(previewValue) > 0 ? previewValue : value;
        };
        if (typeof proto.initDisplayProperty === "function") {
            var originalInitDisplayProperty = proto.initDisplayProperty;
            proto.initDisplayProperty = function() {
                var result = originalInitDisplayProperty.apply(this, arguments);
                if (Number(this.ls_value) === 0
                    && this.lieutenant_skill_id && this.lieutenant_skill_id !== "0"
                    && typeof this.getLieutenantAttrPlusEffects === "function") {
                    var effects = this.getLieutenantAttrPlusEffects(true);
                    if (effects && effects.firstAttr !== undefined
                        && effects.firstAttr !== null) {
                        this.ls_value = Number(effects.firstAttr);
                    }
                }
                return result;
            };
        }
        proto.__sgscqPreviewFightingPatched = true;
        return true;
    }

    function patchEvolutionArtwork() {
        if (typeof xs === "undefined" || !xs.Models || !xs.Models.General
            || !xs.Profile || !xs.Profile.GameData || !xs.Profile.GameData.Mgr) {
            return false;
        }
        var proto = xs.Models.General.prototype;
        if (!proto || !proto.getRes || proto.__sgscqEvolutionArtworkPatched) {
            return !!proto;
        }
        proto.__sgscqEvolutionArtworkPatched = true;
        var originalGetRes = proto.getRes;

        function findEvolutionInfoAcrossInstances(generalId) {
            var instances = xs.Profile.GameData.Mgr._instance;
            if (!instances) {
                return null;
            }
            // 原版 getRes 内部硬编码无参 getInstance()（default 实例）查
            // EvolutionInfos——查看他人阵容时数据挂在 elite_* 等具名实例，
            // default 查空 → 觉醒立绘永远回落基础图。这里先查 default，
            // 再遍历全部具名实例兜底。
            var ordered = [];
            try {
                ordered.push(xs.Profile.GameData.Mgr.getInstance());
            } catch (ignored) {
            }
            for (var key in instances) {
                if (instances[key]) {
                    ordered.push(instances[key]);
                }
            }
            for (var i = 0; i < ordered.length; i++) {
                var instance = ordered[i];
                if (!instance || !instance.EvolutionInfos
                    || typeof instance.EvolutionInfos.getByGeneralId !== "function") {
                    continue;
                }
                var data = instance.EvolutionInfos.getByGeneralId(generalId);
                if (data && data.cfgInfo && data.cfgInfo.resource_id) {
                    return data;
                }
            }
            return null;
        }

        proto.getRes = function() {
            try {
                if (this.cacheResInfo !== null && this.cacheResInfo !== undefined) {
                    return this.cacheResInfo;
                }
                var baseRef = typeof this.getBaseDataRef === "function"
                    ? this.getBaseDataRef() : null;
                var resId = baseRef ? baseRef.resource_id : null;
                var awakened = this.evolution_image_status;
                if (!awakened && typeof this.isNewRes === "function") {
                    awakened = this.isNewRes();
                }
                if (awakened) {
                    var evolutionData =
                        findEvolutionInfoAcrossInstances(this.getId());
                    if (evolutionData && evolutionData.cfgInfo
                        && evolutionData.cfgInfo.resource_id) {
                        resId = evolutionData.cfgInfo.resource_id;
                    }
                }
                if (!resId || typeof xs === "undefined" || !xs.Models
                    || !xs.Models.Resource) {
                    return originalGetRes.apply(this, arguments);
                }
                this.cacheResInfo =
                    xs.Models.Resource.createWithBase(resId, this.ResType);
                return this.cacheResInfo;
            } catch (error) {
                return originalGetRes.apply(this, arguments);
            }
        };
        return true;
    }

    function persistPackagedFstResourceCode() {
        if (typeof xsc === "undefined" || String(xsc.app_indentify) !== "50004") {
            return true;
        }
        if (!xsc.Tools || !xsc.Tools.Jsb
            || typeof xsc.Tools.Jsb.getOriResCode !== "function"
            || !xsc.Utils || !xsc.Utils.LocalStore
            || typeof xsc.Utils.LocalStore.writeCurResCode !== "function") {
            return false;
        }
        if (String(xsc.Tools.Jsb.getOriResCode()) === "765") {
            xsc.Utils.LocalStore.writeCurResCode("766");
        }
        return true;
    }

    var retryCount = 0;
    var retryTarget = {};
    var retryScheduler = null;
    var cocosRetryScheduled = false;
    function stopCocosRetry() {
        if (cocosRetryScheduled && retryScheduler
            && typeof retryScheduler.unscheduleCallbackForTarget === "function") {
            retryScheduler.unscheduleCallbackForTarget(retryTarget, installPatches);
        }
        retryScheduler = null;
        cocosRetryScheduled = false;
    }

    function scheduleRetry() {
        if (typeof setTimeout === "function") {
            setTimeout(installPatches, 100);
            return true;
        }
        if (cocosRetryScheduled) {
            return true;
        }
        var scheduler = null;
        if (typeof xs !== "undefined" && xs.director
            && typeof xs.director.getScheduler === "function") {
            scheduler = xs.director.getScheduler();
        } else if (typeof cc !== "undefined" && cc.Director
            && typeof cc.Director.getInstance === "function") {
            scheduler = cc.Director.getInstance().getScheduler();
        }
        if (!scheduler || typeof scheduler.scheduleCallbackForTarget !== "function") {
            return false;
        }
        retryScheduler = scheduler;
        cocosRetryScheduled = true;
        var repeatForever = typeof cc !== "undefined"
            && typeof cc.REPEAT_FOREVER !== "undefined" ? cc.REPEAT_FOREVER : -1;
        scheduler.scheduleCallbackForTarget(
            retryTarget, installPatches, 0.1, repeatForever, 0, false);
        return true;
    }

    function installPatches() {
        var refineInstalled = patchRefineSelection();
        var audioInstalled = patchFreshmanAudio();
        var statusInstalled = patchFreshmanFightStatuses();
        var fightingInstalled = patchGeneralPreviewFighting();
        var evolutionArtworkInstalled = patchEvolutionArtwork();
        var legacyTextInstalled = !!(xs.Patch
            && typeof xs.Patch.installLegacyText === "function"
            && xs.Patch.installLegacyText());
        var fstResourceInstalled = persistPackagedFstResourceCode();
        var installed = refineInstalled && audioInstalled && statusInstalled
            && fightingInstalled && evolutionArtworkInstalled
            && legacyTextInstalled && fstResourceInstalled;
        if (installed) {
            stopCocosRetry();
        }
        if (installed && !installPatches.__sgscqInstalled) {
            installPatches.__sgscqInstalled = true;
            if (typeof cc !== "undefined" && cc.log) {
                cc.log("[SGSCQ client hotfix] installed");
            }
        }
        if (!installed) {
            if (retryCount++ < 600) {
                scheduleRetry();
            } else {
                stopCocosRetry();
            }
        }
    }
    xs.Patch = xs.Patch || {};
    xs.Patch.installAll = installPatches;
    installPatches();
})();
