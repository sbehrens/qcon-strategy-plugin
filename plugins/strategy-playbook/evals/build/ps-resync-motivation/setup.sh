#!/usr/bin/env bash
set -euo pipefail
fix="$(cd "$(dirname "$0")/../../fixtures" && pwd)"
plugin="$(cd "$(dirname "$0")/../../.." && pwd)"
mkdir -p strategy && cp "$fix/pitch-draft.md" strategy/problem-statement.md && cp "$fix/full-doc.md" strategy/vision-and-strategy.md
