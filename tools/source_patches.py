"""Anchored patches applied on top of the reconstructed sources.

`tools/reconstruct_js.py` rewrites every file under `ReconstructedJS/` from
scratch, so any hand edit made there is destroyed on the next run.  A handful of
files *must* differ from the bytecode on purpose - they are deliberate client
behaviour fixes, not reconstruction corrections - and losing them silently is
how the auto-password-fill regressed once already.

This module keeps those edits as anchored replacements and is invoked
automatically at the end of `reconstruct_js.py`'s `main()`.  An anchor that no
longer matches is reported as an error instead of being skipped, because it
means the reconstructor's output shape changed and the patch needs review.

Run standalone to inspect or re-apply:

    python3 tools/source_patches.py --check      # report, change nothing
    python3 tools/source_patches.py              # apply in place
"""

import argparse
from pathlib import Path

PROJECT = Path(__file__).resolve().parent.parent
DEFAULT_OUT = PROJECT / "ReconstructedJS"

# Each patch: the file it targets, a marker that is present only once the patch
# has been applied, the exact anchor to replace, the replacement, and why the
# reconstructed source intentionally deviates from the bytecode.
PATCHES = [
    {
        "name": "login-guard-bfsdk",
        "file": "src_jsc/Scene/Login/LoginScene_BfSdk.js",
        "why": (
            "updateDialog() unconditionally overwrote both edit boxes from the "
            "saved profile.  setLoginPsw(\"\") is a silent no-op, so wiping the "
            "password there made it unrecoverable; only refill from non-empty "
            "values."
        ),
        "before": """    updateDialog: function() {
    // source line 501, bytecode pc 44
    this.m_EditBox_Account.setText(xs.Profile.UserCfg.getLoginAccount());
    // source line 502, bytecode pc 89
    this.m_EditBox_Psw.setText(xs.Profile.UserCfg.getLoginPsw());
},""",
        "after": """    updateDialog: function() {
    var _account, _psw;
    // 只用存储里的非空值回填。原实现无条件覆盖，会把玩家刚输入的密码擦掉；
    // 而 setLoginPsw("") 是静默不存的，于是密码一旦丢失就再也存不回来。
    _account = xs.Profile.UserCfg.getLoginAccount();
    if (_account) {
        // source line 501, bytecode pc 44
        this.m_EditBox_Account.setText(_account);
    }
    _psw = xs.Profile.UserCfg.getLoginPsw();
    if (_psw) {
        // source line 502, bytecode pc 89
        this.m_EditBox_Psw.setText(_psw);
    }
},""",
    },
    {
        "name": "login-stash-bfsdk",
        "file": "src_jsc/Scene/Login/LoginScene_BfSdk.js",
        "why": (
            "The account.index response can arrive after the dialog was re-shown, "
            "at which point updateDialog() has already replaced the edit-box "
            "contents.  Remember what the player actually submitted."
        ),
        "before": """        (_username = this.m_EditBox_Account.getText());
        // source line 531, bytecode pc 254
        (_pwd = this.m_EditBox_Psw.getText());""",
        "after": """        (_username = this.m_EditBox_Account.getText());
        // source line 531, bytecode pc 254
        (_pwd = this.m_EditBox_Psw.getText());
        // 记住本次提交的凭据：account.index 的响应可能在对话框被重新显示之后才回来，
        // 而 updateDialog() 会用存储值覆盖这两个输入框，那时再读输入框就只剩用户名。
        (this.m_submittedAccount = _username);
        (this.m_submittedPsw = _pwd);""",
    },
    {
        "name": "login-use-stash-bfsdk",
        "file": "src_jsc/Scene/Login/LoginScene_BfSdk.js",
        "why": "Prefer the submitted credential over whatever the edit box holds now.",
        "before": """        xs.Profile.UserCfg.setLoginAccount(this.m_EditBox_Account.getText());
        // source line 729, bytecode pc 322
        xs.Profile.UserCfg.setLoginPsw(this.m_EditBox_Psw.getText());""",
        "after": """        xs.Profile.UserCfg.setLoginAccount(this.m_submittedAccount || this.m_EditBox_Account.getText());
        // source line 729, bytecode pc 322
        xs.Profile.UserCfg.setLoginPsw(this.m_submittedPsw || this.m_EditBox_Psw.getText());""",
    },
    {
        "name": "login-guard-anysdk",
        "file": "src_jsc/Scene/Login/LoginScene_AnySdk.js",
        "why": "Same non-empty refill guard as the BF SDK login scene.",
        "before": """    updateDialog: function() {
    // source line 619, bytecode pc 44
    this.m_EditBox_Account.setText(xs.Profile.UserCfg.getLoginAccount());
    // source line 620, bytecode pc 89
    this.m_EditBox_Psw.setText(xs.Profile.UserCfg.getLoginPsw());
},""",
        "after": """    updateDialog: function() {
    var _account, _psw;
    // 只用存储里的非空值回填，避免把玩家刚输入的密码擦掉。
    // setLoginPsw("") 是静默不存的，密码一旦丢失就再也存不回来。
    _account = xs.Profile.UserCfg.getLoginAccount();
    if (_account) {
        // source line 619, bytecode pc 44
        this.m_EditBox_Account.setText(_account);
    }
    _psw = xs.Profile.UserCfg.getLoginPsw();
    if (_psw) {
        // source line 620, bytecode pc 89
        this.m_EditBox_Psw.setText(_psw);
    }
},""",
    },
]


def apply(out_root=DEFAULT_OUT, check_only=False):
    """Apply every patch under *out_root*.

    Returns (applied, already, problems) name lists.  A patch whose replacement is
    already present is skipped, so re-running is safe.  A patch whose anchor is
    missing altogether is reported as a problem instead of being skipped: that
    means the reconstructed file changed shape underneath it and the patch needs
    review.
    """
    applied, already, problems = [], [], []
    for patch in PATCHES:
        path = Path(out_root) / patch["file"]
        if not path.exists():
            problems.append("{}: missing file {}".format(patch["name"], path))
            continue
        text = path.read_text(encoding="utf-8")
        # `after` always contains `before`, so testing for it first is a
        # self-contained idempotency check: a second run can never match the
        # anchor inside an already-patched file and apply the change twice.
        if patch["after"] in text:
            already.append(patch["name"])
            continue
        if patch["before"] not in text:
            problems.append(
                "{}: anchor not found in {} (reconstructor output changed - review the patch)"
                .format(patch["name"], patch["file"])
            )
            continue
        if not check_only:
            path.write_text(text.replace(patch["before"], patch["after"], 1), encoding="utf-8")
        applied.append(patch["name"])
    return applied, already, problems


def main():
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--check", action="store_true", help="report only, write nothing")
    args = parser.parse_args()
    applied, already, problems = apply(args.output, check_only=args.check)
    for name in applied:
        print("{} {}".format("would apply" if args.check else "applied", name))
    for name in already:
        print("already applied", name)
    for problem in problems:
        print("PROBLEM", problem)
    print("source patches: {} applied, {} already, {} problem(s)".format(
        len(applied), len(already), len(problems)))
    return 1 if problems else 0


if __name__ == "__main__":
    raise SystemExit(main())
