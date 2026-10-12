#!/usr/bin/env bash
set -euo pipefail
fix="$(cd "$(dirname "$0")/../../fixtures" && pwd)"
plugin="$(cd "$(dirname "$0")/../../.." && pwd)"
mkdir -p strategy && cp "$fix/full-doc.md" strategy/vision-and-strategy.md
