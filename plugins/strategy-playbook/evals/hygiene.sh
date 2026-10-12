#!/usr/bin/env bash
# Deterministic shipping checks. No model calls.
# Usage: hygiene.sh [plugin-dir]     run the checks (exit 1 on any failure)
#        hygiene.sh --self-test      plant one defect per check in a copy and confirm each check fails
set -uo pipefail

here="$(cd "$(dirname "$0")" && pwd)"

run_checks() {
  local plugin="$1" repo
  repo="$(cd "$plugin/../.." && pwd)"
  local fails=0
    [ -f "$repo/README.md" ] && readme="$repo/README.md" || readme=""
  local market="$repo/.claude-plugin"

  check() { # name, then "hits" text; empty text = pass
    if [ -n "$2" ]; then echo "FAIL $1"; printf '%s\n' "$2" | head -5 | sed 's/^/     /'; fails=$((fails+1)); else echo "PASS $1"; fi
  }
  grepr() { # grep that turns exit 2 (error) into a visible failure
    local out rc; out="$(grep "$@")"; rc=$?
    [ "$rc" = 2 ] && { echo "GREP-ERROR $*"; return; }
    printf '%s' "$out"
  }

  local email='[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}'
  check "no-email-addresses (plugin, README, marketplace, evals)" \
    "$(grepr -rnE -- "$email" "$plugin" ${readme:+"$readme"} "$market")"

  local hosts='slack\.com|docs\.google\.com|drive\.google\.com|atlassian\.net|sharepoint\.com|notion\.so|confluence|jira\.'
  check "no-internal-link-hosts outside README" \
    "$(grepr -rniE --exclude-dir=evals -- "$hosts" "$plugin" "$market")"

  local stubs=""
  for l in 'riff' '[Read' 'NEXT →' 'NEXT ->' 'TODO' '[X]' '<Rationale>' '<fill in>' '<ditto>'; do
    stubs+="$(grepr -rnF --exclude-dir=evals -- "$l" "$plugin" | grep -v '/templates/')"
  done
  check "no-stub-literals outside templates/" "$stubs"

  local old=""
  for l in 'does what we intended' 'granular AI agent access permissions' 'for 1 week' 'Scale positive AI outcomes with agents adhering'; do
    old+="$(grepr -rnF --exclude-dir=evals -- "$l" "$plugin")"
  done
  check "no-superseded-example-wording" "$old"

  local missing=""
  for l in 'Every production AI agent achieves what we intend.' 'Bounded Autonomy** versus Restrictive Permissions'; do
    grep -rqF --exclude-dir=evals -- "$l" "$plugin" || missing+="missing canonical: $l"$'\n'
  done
  check "canonical-example-wording-present" "$missing"

  local tools=""
  grep -qx 'tools: \[\]' "$plugin/agents/cold-reader.md" 2>/dev/null || tools+="cold-reader must declare tools: []"$'\n'
  for a in likeliest-dissenter exec-preview; do
    grep -qx 'tools: Read' "$plugin/agents/$a.md" 2>/dev/null || tools+="$a must declare tools: Read"$'\n'
  done
  check "critic-tool-grants" "$tools"

  local skills=""
  for s in ask-the-talk where-am-i problem-statement north-star strategy-bets strategy-doc; do
    grep -q "^name: $s\$" "$plugin/skills/$s/SKILL.md" 2>/dev/null || skills+="skill $s missing or misnamed"$'\n'
  done
  check "six-skills-present" "$skills"

  local man=""
  local pname; pname="$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["name"])' "$plugin/.claude-plugin/plugin.json" 2>&1)"
  python3 - "$market/marketplace.json" "$pname" "$repo" <<'PY' || man="marketplace entry does not match plugin.json"
import json, os, sys
m = json.load(open(sys.argv[1]))
p = [x for x in m["plugins"] if x["name"] == sys.argv[2]]
sys.exit(0 if p and os.path.isfile(os.path.join(sys.argv[3], p[0]["source"], ".claude-plugin", "plugin.json")) else 1)
PY
  check "marketplace-points-at-plugin" "$man"

  echo "hygiene: $fails failing check(s)"
  return $(( fails > 0 ))
}

self_test() {
  local tmp; tmp="$(mktemp -d)"
  local plugin_src; plugin_src="$(cd "$here/.." && pwd)"
  local repo_src; repo_src="$(cd "$plugin_src/../.." && pwd)"
  mkdir -p "$tmp/repo/plugins"
  cp -R "$repo_src/.claude-plugin" "$tmp/repo/"
  cp "$repo_src/README.md" "$tmp/repo/"
  cp -R "$plugin_src" "$tmp/repo/plugins/"
  local p="$tmp/repo/plugins/$(basename "$plugin_src")"

  echo "== clean copy (must pass)"
  run_checks "$p" >/dev/null || { echo "SELF-TEST BROKEN: clean copy failed"; run_checks "$p"; return 1; }
  echo "PASS clean copy"

  printf 'contact: %s@%s\n' someone example.org >> "$p/knowledge/glossary.md"
  echo "see https://acme.slack.com/archives/x" >> "$p/knowledge/stories.md"
  echo "TODO finish this" >> "$p/knowledge/playbook.md"
  echo "the agent does what we intended" >> "$p/examples/misaligned-ai/problem-statement.md"
  sed -i.bak 's/Every production AI agent achieves what we intend\./Agents are good./' \
    $(grep -rlF 'Every production AI agent achieves what we intend.' "$p" --exclude-dir=evals); find "$p" -name '*.bak' -delete
  sed -i.bak 's/^tools: \[\]$/tools: Read, Glob/' "$p/agents/cold-reader.md"; rm -f "$p/agents/cold-reader.md.bak"
  mv "$p/skills/north-star" "$tmp/north-star.moved"
  python3 - "$tmp/repo/.claude-plugin/marketplace.json" <<'PY'
import json, sys
m = json.load(open(sys.argv[1])); m["plugins"][0]["source"] = "./plugins/nowhere"; json.dump(m, open(sys.argv[1], "w"))
PY

  echo "== broken copy (every check must fail)"
  local out; out="$(run_checks "$p")"
  printf '%s\n' "$out" | grep -E '^(PASS|FAIL)'
  local passed; passed="$(printf '%s\n' "$out" | grep -c '^PASS')"
  mv "$tmp" "$tmp.done"   # left for inspection; the OS clears TMPDIR
  if [ "$passed" = 0 ]; then echo "SELF-TEST OK: every check went red on its planted defect"; return 0; fi
  echo "SELF-TEST FAILED: $passed check(s) stayed green on a broken input"; return 1
}

if [ "${1:-}" = "--self-test" ]; then self_test; else run_checks "$(cd "${1:-$here/..}" && pwd)"; fi
