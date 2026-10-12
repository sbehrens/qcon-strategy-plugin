#!/usr/bin/env bash
set -euo pipefail
fix="$(cd "$(dirname "$0")/../../fixtures" && pwd)"
plugin="$(cd "$(dirname "$0")/../../.." && pwd)"
cp "$fix/pitch-draft.md" pitch-draft.md
