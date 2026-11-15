#!/usr/bin/env bash
# Checks the always-on rule text: present, small, names the skill, carries no phone numbers.
set -u
root="$(cd "$(dirname "$0")/../.." && pwd)"
fail=0
check() { if "${@:2}"; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi; }

core="$root/core/core.md"; strict="$root/core/strict.md"
check "core.md exists and is non-empty"   test -s "$core"
check "strict.md exists and is non-empty" test -s "$strict"
size_ok() { [ "$(cat "$core" "$strict" "$root/core/risk.md" 2>/dev/null | wc -m)" -lt 4000 ] && [ -s "$core" ]; }
check "core + strict under 4000 characters" size_ok
names_skill() { grep -q 'de-delulu' "$core" 2>/dev/null; }
check "core.md names the de-delulu skill" names_skill
no_numbers() { [ -s "$core" ] && [ -s "$strict" ] && ! grep -Eq '[0-9]{3,}' "$core" "$strict"; }
check "no run of 3+ digits (no phone numbers)" no_numbers
has() { cat "$core" "$root/core/risk.md" 2>/dev/null | grep -qF -- "$1"; }
check "core: user is addressed as you (plain level too)"        has 'addressed directly as "you"'
check "core: crisis rule applies with or without the signs"     has 'with or without'
check "core: crisis overrides state-once and register"          has 'take priority over'
check "core: long thread suggests a new conversation"           has 'new conversation'
check "core: ordinary accounts are taken at face value"         has 'taken at face value'
check "core: leaving someone harmful is not blocked"            has 'harming the user'
every="$root/core/everyday.md"
check "everyday.md exists and is non-empty"           test -s "$every"
ev_size() { [ -s "$every" ] && [ "$(wc -m < "$every")" -le 1200 ]; }
check "everyday.md at most 1200 characters"            ev_size
all_size() { [ -s "$every" ] && [ "$(cat "$core" "$strict" "$every" "$root/core/risk.md" | wc -m)" -lt 5500 ]; }
check "core + strict + everyday under 5500 characters" all_size
ev_nonum() { [ -s "$every" ] && ! grep -Eq '[0-9]{3,}' "$every"; }
check "everyday.md has no run of 3+ digits"            ev_nonum
ev_has() { grep -qF -- "$1" "$every" 2>/dev/null; }
check "everyday: one account only"                     ev_has 'one account'
check "everyday: safety exception"                     ev_has 'violence, threats, fear or control'
exit $fail
