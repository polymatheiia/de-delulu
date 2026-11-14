#!/usr/bin/env bash
# Runs the fast, free tests. The scenario suite (tests/scenarios/run.sh) costs
# model usage and is run separately.
cd "$(dirname "$0")/.." || exit 1
status=0
for t in tests/core/test.sh tests/hook/test.sh tests/claude-ai/test.sh tests/scenarios/test-runner.sh; do
  echo "== $t"; bash "$t" || status=1
done
[ "$status" = 0 ] && echo "ALL PASSED" || echo "FAILURES"
exit $status
