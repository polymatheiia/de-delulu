#!/usr/bin/env bash
# Tests for hooks/inject: what it prints, when, and that it never fails a prompt.
set -u
root="$(cd "$(dirname "$0")/../.." && pwd)"
inject="$root/hooks/inject"
core="$root/core/core.md"; strict="$root/core/strict.md"; every="$root/core/everyday.md"
fail=0
tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT

pass() { echo "ok   $1"; }
flunk() { echo "FAIL $1: $2"; fail=1; }

# run <state-dir> <mode> <stdin-json> ; env vars come from the caller
run() { CLAUDE_PLUGIN_DATA="$1" "$inject" "$2" <<<"$3"; }
sid() { printf '{"session_id":"%s","hook_event_name":"x"}' "$1"; }
fresh() { mktemp -d "$tmp/state.XXXXXX"; }

t_session_start_prints_core() {
  local d; d=$(fresh)
  [ "$(run "$d" session-start "$(sid a)")" = "$(cat "$core" "$every")" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "output differs from core.md"
}

t_strict_appends_addendum() {
  local d; d=$(fresh)
  [ "$(DE_DELULU_LEVEL=strict run "$d" session-start "$(sid a)")" = "$(cat "$core" "$every" "$strict")" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "output differs from core.md + strict.md"
}

t_prompt_silent_until_interval() {
  local d out n; d=$(fresh); export DE_DELULU_EVERY=3
  run "$d" session-start "$(sid a)" >/dev/null
  for n in 1 2 3 4 5 6; do
    out=$(run "$d" prompt "$(sid a)")
    case $n in
      3|6) [ "$out" = "$(cat "$core" "$every")" ] || { flunk "$FUNCNAME" "prompt $n did not print core"; unset DE_DELULU_EVERY; return; } ;;
      *)   [ -z "$out" ] || { flunk "$FUNCNAME" "prompt $n printed output"; unset DE_DELULU_EVERY; return; } ;;
    esac
  done
  unset DE_DELULU_EVERY; pass "$FUNCNAME"
}

t_every_zero_disables() {
  local d n; d=$(fresh)
  [ -n "$(run "$d" session-start "$(sid a)")" ] || { flunk "$FUNCNAME" "session-start printed nothing"; return; }
  for n in 1 2 3 4 5 6 7 8 9 10; do
    [ -z "$(DE_DELULU_EVERY=0 run "$d" prompt "$(sid a)")" ] || { flunk "$FUNCNAME" "prompt $n printed output"; return; }
  done
  pass "$FUNCNAME"
}

t_session_start_resets_counter() {
  local d; d=$(fresh); export DE_DELULU_EVERY=3
  run "$d" session-start "$(sid a)" >/dev/null
  run "$d" prompt "$(sid a)" >/dev/null; run "$d" prompt "$(sid a)" >/dev/null
  run "$d" session-start "$(sid a)" >/dev/null
  local o1 o2 o3; o1=$(run "$d" prompt "$(sid a)"); o2=$(run "$d" prompt "$(sid a)"); o3=$(run "$d" prompt "$(sid a)")
  unset DE_DELULU_EVERY
  [ -z "$o1$o2" ] && [ -n "$o3" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "counter was not reset"
}

t_sessions_are_independent() {
  local d; d=$(fresh); export DE_DELULU_EVERY=2
  run "$d" session-start "$(sid a)" >/dev/null; run "$d" session-start "$(sid b)" >/dev/null
  run "$d" prompt "$(sid a)" >/dev/null
  local ob oa; ob=$(run "$d" prompt "$(sid b)"); oa=$(run "$d" prompt "$(sid a)")
  unset DE_DELULU_EVERY
  [ -z "$ob" ] && [ -n "$oa" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "sessions share a counter"
}

t_malformed_stdin() {
  local d out st; d=$(fresh)
  for input in "" "not json"; do
    out=$(run "$d" session-start "$input"); st=$?
    [ "$st" -eq 0 ] && [ "$out" = "$(cat "$core" "$every")" ] || { flunk "$FUNCNAME" "session-start on '$input': status $st"; return; }
    out=$(DE_DELULU_EVERY=5 run "$d" prompt "$input"); st=$?
    [ "$st" -eq 0 ] && [ -z "$out" ] || { flunk "$FUNCNAME" "prompt on '$input': status $st, output '${out:0:20}'"; return; }
  done
  pass "$FUNCNAME"
}

t_unwritable_state() {
  local out st
  out=$(run /proc/nonexistent session-start "$(sid a)" 2>/dev/null); st=$?
  [ "$st" -eq 0 ] && [ "$out" = "$(cat "$core" "$every")" ] || { flunk "$FUNCNAME" "session-start: status $st"; return; }
  out=$(DE_DELULU_EVERY=1 run /proc/nonexistent prompt "$(sid a)" 2>/dev/null); st=$?
  [ "$st" -eq 0 ] && [ -z "$out" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "prompt: status $st, output '${out:0:20}'"
}

t_hostile_session_id() {
  local d; d=$(fresh)
  run "$d" session-start '{"session_id":"../../x"}' >/dev/null
  run "$d" prompt '{"session_id":"../../x"}' >/dev/null
  [ "$(ls -A "$d")" = "count-default" ] && [ ! -e "$tmp/x" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "files: $(ls -A "$d" | tr '\n' ' ')"
}

t_invalid_env() {
  local d out n; d=$(fresh)
  [ "$(DE_DELULU_LEVEL=STRICT run "$d" session-start "$(sid a)")" = "$(cat "$core" "$every")" ] || { flunk "$FUNCNAME" "LEVEL=STRICT not treated as plain"; return; }
  for bad in abc -3; do
    run "$d" session-start "$(sid a)" >/dev/null
    for n in $(seq 1 15); do
      out=$(DE_DELULU_EVERY=$bad run "$d" prompt "$(sid a)")
      if [ "$n" -lt 15 ] && [ -n "$out" ]; then flunk "$FUNCNAME" "EVERY=$bad printed at prompt $n"; return; fi
    done
    [ -n "$out" ] || { flunk "$FUNCNAME" "EVERY=$bad did not print at prompt 15"; return; }
  done
  pass "$FUNCNAME"
}

t_output_under_cap() {
  local d; d=$(fresh)
  [ "$(DE_DELULU_LEVEL=strict run "$d" session-start "$(sid a)" | wc -m)" -lt 10000 ] && [ -x "$inject" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "output too large or script missing"
}

t_leading_zero_interval() {
  local d out n; d=$(fresh)
  run "$d" session-start "$(sid a)" >/dev/null
  for n in 1 2 3 4 5 6 7 8; do out=$(DE_DELULU_EVERY=08 run "$d" prompt "$(sid a)" 2>&1); done
  [ "$out" = "$(cat "$core" "$every")" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "EVERY=08 did not print cleanly at prompt 8: '${out:0:40}'"
}

t_prompt_injects_for_unseen_session() {
  # Plugin enabled mid-conversation, or a resumed session: no SessionStart ran for this id.
  local d o1 o2; d=$(fresh)
  o1=$(DE_DELULU_EVERY=15 run "$d" prompt "$(sid late)"); o2=$(DE_DELULU_EVERY=15 run "$d" prompt "$(sid late)")
  [ "$o1" = "$(cat "$core" "$every")" ] && [ -z "$o2" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "first prompt should print the core once"
}

t_resume_is_not_a_session_start_matcher() {
  # Each headless turn resumes the session; re-injecting on resume would hide the real schedule.
  local m; m=$(jq -r '.hooks.SessionStart[0].matcher' "$root/hooks/hooks.json")
  case "|$m|" in *"|resume|"*) flunk "$FUNCNAME" "matcher is $m" ;; *) pass "$FUNCNAME" ;; esac
}

t_everyday_off() {
  local d; d=$(fresh)
  [ "$(DE_DELULU_EVERYDAY=off run "$d" session-start "$(sid a)")" = "$(cat "$core")" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "off should print core only"
}

t_everyday_bad_value() {
  local d v; d=$(fresh)
  for v in OFF 0 ""; do
    [ "$(DE_DELULU_EVERYDAY="$v" run "$d" session-start "$(sid a)")" = "$(cat "$core" "$every")" ] || { flunk "$FUNCNAME" "value '$v' should keep everyday on"; return; }
  done
  pass "$FUNCNAME"
}

t_everyday_missing_file() {
  local d c out st; d=$(fresh); c="$tmp/copy"; rm -rf "$c"; mkdir -p "$c"
  cp -r "$root/hooks" "$root/core" "$c/"; rm -f "$c/core/everyday.md"
  out=$(CLAUDE_PLUGIN_DATA="$d" "$c/hooks/inject" session-start <<<"$(sid a)" 2>&1); st=$?
  [ "$st" -eq 0 ] && [ "$out" = "$(cat "$core")" ] && pass "$FUNCNAME" || flunk "$FUNCNAME" "status $st"
}

for t in $(declare -F | awk '$3 ~ /^t_/ {print $3}'); do $t; done
exit $fail
