#!/usr/bin/env bash
# Checks the always-on rule text: present, small, names the skill, carries no phone numbers.
set -u
root="$(cd "$(dirname "$0")/../.." && pwd)"
fail=0
check() { if "${@:2}"; then echo "ok   $1"; else echo "FAIL $1"; fail=1; fi; }

core="$root/core/core.md"; strict="$root/core/strict.md"
check "core.md exists and is non-empty"   test -s "$core"
check "strict.md exists and is non-empty" test -s "$strict"
size_ok() { [ "$(cat "$core" "$strict" 2>/dev/null | wc -m)" -lt 4000 ] && [ -s "$core" ]; }
check "core + strict under 4000 characters" size_ok
names_skill() { grep -q 'de-delulu' "$core" 2>/dev/null; }
check "core.md names the de-delulu skill" names_skill
no_numbers() { [ -s "$core" ] && [ -s "$strict" ] && ! grep -Eq '[0-9]{3,}' "$core" "$strict"; }
check "no run of 3+ digits (no phone numbers)" no_numbers
has() { grep -qF -- "$1" "$core" 2>/dev/null; }
check "core: user is addressed as you (plain level too)"        has 'addressed directly as "you"'
check "core: crisis rule applies with or without the signs"     has 'with or without'
check "core: crisis overrides state-once and register"          has 'take priority over'
check "core: long thread suggests a new conversation"           has 'new conversation'
check "core: ordinary accounts are taken at face value"         has 'taken at face value'
check "core: leaving someone harmful is not blocked"            has 'harming the user'
exit $fail
