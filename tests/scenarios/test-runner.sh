#!/usr/bin/env bash
# Free checks of the scenario runner itself: it must refuse to run without its
# tools, and a failed run must never destroy saved results.
set -u
here="$(cd "$(dirname "$0")" && pwd)"; fail=0
ok() { echo "ok   $1"; }; bad() { echo "FAIL $1"; fail=1; }
tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT

# A PATH with the basics but no `claude`.
mkdir "$tmp/bin"; for b in bash sed awk jq cat ls mktemp rm mv mkdir head grep xargs printf dirname wc sleep env timeout uuidgen cmp date tr; do
  p="$(command -v $b 2>/dev/null)" && ln -s "$p" "$tmp/bin/$b"; done

saved="$here/results/claude-sonnet-5-5/guard-plain/novelist.transcript.md"
before="$(cksum < "$saved")"
out="$(PATH="$tmp/bin" bash "$here/run.sh" novelist guard plain 2>&1)"; st=$?
[ "$st" -eq 2 ] && grep -q "claude" <<<"$out" && ok "refuses to run without claude (exit 2, names it)" || bad "refuses to run without claude: status $st, output: ${out:0:80}"
[ -f "$saved" ] && [ "$(cksum < "$saved")" = "$before" ] && ok "saved results untouched after a refused run" || bad "saved results untouched after a refused run"

# A `claude` that always fails: the case must abort and leave saved results alone.
printf '#!/bin/sh\nexit 1\n' > "$tmp/bin/claude"; chmod +x "$tmp/bin/claude"
PATH="$tmp/bin" bash "$here/run.sh" novelist guard plain >/dev/null 2>&1
[ -f "$saved" ] && [ "$(cksum < "$saved")" = "$before" ] && ok "saved results untouched after a failed run" || bad "saved results untouched after a failed run"
( cd "$here/.." && git checkout -q -- scenarios/results 2>/dev/null )
exit $fail
