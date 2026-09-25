#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
MESSAGE_PREFIX="${1:-build: automatic source backup}"

git -C "$PROJECT_ROOT" rev-parse --show-toplevel >/dev/null 2>&1 || {
    echo "Git backup skipped: project root is not a Git repository" >&2
    exit 2
}

# Preserve tracked local edits to embedded upstream repositories as patch files.
# Their generated build directories and binaries stay in those worktrees.
PATCH_DIR="$PROJECT_ROOT/toolchain/local-patches"
mkdir -p "$PATCH_DIR"
REVISION_FILE="$PATCH_DIR/upstream-revisions.txt"
: > "$REVISION_FILE"

for relative_repo in \
    "toolchain/cocos2d-x-2.2.6" \
    "toolchain/cocos2d-x-3rd-party-libs-src-v2" \
    "toolchain/SpiderMonkey-v22"; do
    repo="$PROJECT_ROOT/$relative_repo"
    if ! git -C "$repo" rev-parse --show-toplevel >/dev/null 2>&1; then
        continue
    fi

    printf '%s %s\n' "$relative_repo" "$(git -C "$repo" rev-parse HEAD)" >> "$REVISION_FILE"
    patch_name="${relative_repo##*/}.patch"
    patch_file="$PATCH_DIR/$patch_name"
    temporary_patch="$patch_file.tmp"
    git -C "$repo" diff --binary HEAD -- \
        . \
        ':(exclude)python/psutil/_psutil_linux.so' \
        ':(exclude)python/psutil/_psutil_posix.so' > "$temporary_patch"
    if [[ -s "$temporary_patch" ]]; then
        mv "$temporary_patch" "$patch_file"
    else
        rm -f "$temporary_patch" "$patch_file"
    fi
done

git -C "$PROJECT_ROOT" add -A
if git -C "$PROJECT_ROOT" diff --cached --quiet; then
    echo "Git backup: no source changes to commit"
    exit 0
fi

timestamp="$(date '+%Y%m%d-%H%M%S')"
git -C "$PROJECT_ROOT" commit -m "$MESSAGE_PREFIX $timestamp"
