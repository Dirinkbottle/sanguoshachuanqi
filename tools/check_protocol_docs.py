#!/usr/bin/env python3
"""Validate links and anchors across ServerProject/docs and its ../*.md targets.

Run after regenerating the documentation:

    python3 tools/build_protocol_docs.py && python3 tools/check_protocol_docs.py
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DOCS = os.path.join(ROOT, "ServerProject", "docs")
SKIP_PREFIXES = ("http://", "https://", "mailto:")


def slug(heading):
    s = heading.strip().lower()
    s = re.sub(r'[^\w\u4e00-\u9fff\s-]', '', s)
    return s.replace(" ", "-")


def headings(path):
    out = set()
    with open(path, encoding="utf-8") as fh:
        for line in fh:
            m = re.match(r'^(#{1,6})\s+(.*)$', line.strip())
            if m:
                out.add(slug(m.group(2)))
    return out


def md_files():
    for root, _, files in os.walk(DOCS):
        for fn in sorted(files):
            if fn.endswith(".md"):
                yield os.path.join(root, fn)


LINK_RE = re.compile(r'\]\(([^)\s]+)\)')


def main():
    cache = {}
    problems = []
    checked = 0
    for path in md_files():
        for lineno, line in enumerate(open(path, encoding="utf-8"), 1):
            for m in LINK_RE.finditer(line):
                href = m.group(1)
                if href.startswith(SKIP_PREFIXES) or href.startswith("#"):
                    continue
                target, _, anchor = href.partition("#")
                if not target:
                    continue
                dest = os.path.normpath(os.path.join(os.path.dirname(path), target))
                rel_src = os.path.relpath(path, ROOT)
                checked += 1
                if not os.path.exists(dest):
                    problems.append((rel_src, lineno, href, "target missing"))
                    continue
                if anchor:
                    if dest not in cache:
                        cache[dest] = headings(dest)
                    if anchor not in cache[dest]:
                        problems.append((rel_src, lineno, href, "anchor missing"))

    print("checked %d relative links across %d markdown files"
          % (checked, sum(1 for _ in md_files())))
    if problems:
        print("PROBLEMS: %d" % len(problems))
        for p in problems:
            print("  %s:%d  %s  (%s)" % p)
        return 1
    print("all relative links and anchors resolve")
    return 0


if __name__ == "__main__":
    sys.exit(main())
