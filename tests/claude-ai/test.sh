#!/usr/bin/env bash
# The claude.ai block must be generated from core/ and must not drift from it.
set -u
root="$(cd "$(dirname "$0")/../.." && pwd)"
fail=0; tmp="$(mktemp)"; trap 'rm -f "$tmp"' EXIT
ok() { echo "ok   $1"; }; bad() { echo "FAIL $1"; fail=1; }

bash "$root/scripts/build-claude-ai" "$tmp" 2>/dev/null
if [ -s "$tmp" ] && cmp -s "$tmp" "$root/claude-ai/preferences.md"; then ok "committed block matches generator output"; else bad "committed block matches generator output"; fi

plain="$(awk '/^## Plain/{p=1;next} /^## Strict/{p=0} p' "$tmp")"
strict="$(awk '/^## Strict/{p=1;next} p' "$tmp")"

missing=0
while IFS= read -r line; do
  case "$line" in *'load the `de-delulu` skill'*) continue ;; esac
  grep -qF -- "$line" <<<"$plain" || missing=1
  grep -qF -- "$line" <<<"$strict" || missing=1
done < <(grep '^- ' "$root/core/core.md")
[ "$missing" = 0 ] && [ -n "$plain" ] && ok "both blocks carry every core rule" || bad "both blocks carry every core rule"

missing=0
while IFS= read -r line; do grep -qF -- "$line" <<<"$strict" || missing=1; done < <(grep '^- ' "$root/core/strict.md")
[ "$missing" = 0 ] && [ -n "$strict" ] && ok "strict block carries the strict rules" || bad "strict block carries the strict rules"

missing=0
while IFS= read -r line; do grep -qF -- "$line" <<<"$plain" || missing=1; grep -qF -- "$line" <<<"$strict" || missing=1; done < <(grep '^- ' "$root/core/everyday.md" 2>/dev/null)
[ "$missing" = 0 ] && [ -s "$root/core/everyday.md" ] && ok "both blocks carry the everyday rules" || bad "both blocks carry the everyday rules"

if grep -qF 'No first-person pronoun' <<<"$plain"; then bad "plain block has no strict rules"; else [ -n "$plain" ] && ok "plain block has no strict rules" || bad "plain block has no strict rules"; fi
if grep -q 'load the `de-delulu` skill' "$tmp"; then bad "skill-loading line is rewritten"; else grep -q 'if the de-delulu skill is installed' "$tmp" && ok "skill-loading line is rewritten" || bad "skill-loading line is rewritten"; fi
exit $fail
