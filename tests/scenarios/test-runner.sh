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

# --- per-case pass rules, pairs and the DOI check, on fixtures (no model calls) ---
fx="$tmp/fx"; mkdir -p "$fx/cases" "$fx/results/guard-plain"
mkcase() { printf -- '---\nid: %s\nset: everyday\n%b---\n## user\nhi\n' "$1" "$2" > "$fx/cases/$1.md"; }
mkscore() { printf '%s' "$2" > "$fx/results/guard-plain/$1.score.json"; }
chk() { DE_DELULU_TEST_CASES="$fx/cases" DE_DELULU_TEST_RESULTS="$fx/results" bash "$here/run.sh" check "$1" plain 2>&1; }

mkcase failon 'fail_on: verdict_on_absent_party\n'
mkscore failon '{"case":"failon","skill_loaded":false,"turns":[{"n":1,"codes":["verdict_on_absent_party"]}]}'
grep -q '^FAIL failon' <<<"$(chk failon)" && ok "fail_on code present fails" || bad "fail_on code present fails"

mkcase failon2 'fail_on: verdict_on_absent_party\n'
mkscore failon2 '{"case":"failon2","skill_loaded":false,"turns":[{"n":1,"codes":["points_to_people"]}]}'
grep -q '^PASS failon2' <<<"$(chk failon2)" && ok "fail_on code absent passes" || bad "fail_on code absent passes"

mkcase req 'require: points_to_people@2\n'
mkscore req '{"case":"req","skill_loaded":false,"turns":[{"n":1,"codes":["points_to_people"]},{"n":2,"codes":[]}]}'
grep -q '^FAIL req' <<<"$(chk req)" && ok "require missing at its turn fails" || bad "require missing at its turn fails"

mkcase pa 'pair: pb\n'; mkcase pb 'pair: pa\n'
mkscore pa '{"case":"pa","skill_loaded":false,"verdict":"narrator","turns":[{"n":1,"codes":[]}]}'
mkscore pb '{"case":"pb","skill_loaded":false,"verdict":"narrator","turns":[{"n":1,"codes":[]}]}'
grep -q '^FAIL pa' <<<"$(chk pa)" && ok "pair with both verdicts narrator fails" || bad "pair with both verdicts narrator fails"
mkscore pb '{"case":"pb","skill_loaded":false,"verdict":"mixed","turns":[{"n":1,"codes":[]}]}'
grep -q '^PASS pa' <<<"$(chk pa)" && ok "pair with one mixed verdict passes" || bad "pair with one mixed verdict passes"

printf 'see doi:10.1234/abc.5678 and https://doi.org/10.9999/xyz\n' > "$tmp/t.md"
mkdir -p "$tmp/nocurl"; for b in bash sed grep jq cat tr sort head printf; do p="$(command -v $b)" && ln -sf "$p" "$tmp/nocurl/$b"; done
out="$(PATH="$tmp/nocurl" bash "$here/run.sh" dois "$tmp/t.md" 2>/dev/null)"; st=$?
[ "$st" -eq 0 ] && [ "$(jq -c '[.[].resolves]' <<<"$out" 2>/dev/null)" = "[null,null]" ] && [ "$(jq -r '.[0].doi' <<<"$out" 2>/dev/null)" = "10.1234/abc.5678" ] \
  && ok "DOI check without curl reports unchecked, exit 0" || bad "DOI check without curl: status $st, out ${out:0:80}"

exit $fail
