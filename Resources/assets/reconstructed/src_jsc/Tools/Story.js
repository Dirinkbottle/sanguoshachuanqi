// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Story.js:1
// source line 12, bytecode pc 52
(xs.Tools.Story = (xs.Tools.Story || {
    showStoryDialog: function(storyId, funcNext) {
    // source line 17, bytecode pc 103
    xs.Views.Mgr.showDialogByName("Story", {
    rounds: xs.Models.FightRoundList.createWithStoryItems(xs.Cfg.System.sgs_dungeon_plot_dialog[storyId]),
    funcNext: funcNext
});
}
}));
