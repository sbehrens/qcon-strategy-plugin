#!/usr/bin/env bash
set -euo pipefail
fix="$(cd "$(dirname "$0")/../../fixtures" && pwd)"
plugin="$(cd "$(dirname "$0")/../../.." && pwd)"
mkdir -p strategy && cp "$plugin/examples/misaligned-ai/vision-and-strategy.md" strategy/vision-and-strategy.md
