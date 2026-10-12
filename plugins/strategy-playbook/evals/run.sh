#!/usr/bin/env bash
# One command for the whole suite: deterministic hygiene checks, then the model-run cases.
# Extra arguments go to `claude plugin eval` (for example --case 'ask-*', --runs 1, --trust-plugin).
# Set CLAUDE_BIN to use a different claude launcher.
set -uo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
plugin="$(cd "$here/.." && pwd)"

echo "== hygiene"
bash "$here/hygiene.sh" "$plugin"; hyg=$?

echo "== model cases"
"${CLAUDE_BIN:-claude}" plugin eval "$plugin" \
  --scaffold --allow-tools Write Edit \
  --ablation none -j 4 --judge-model sonnet --no-publish "$@"
ev=$?

echo "hygiene exit $hyg, eval exit $ev"
[ "$hyg" = 0 ] && [ "$ev" = 0 ]
