---
name: chain-three-builders
description: "Problem statement, north star, then bets in one folder build the combined doc (PLAN claim 8)."
tags: [build]
runs: 2
max_turns: 80
timeout_seconds: 1500
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit]
---

I want to build our strategy in three passes, in this folder. I'm offline, so don't ask me anything; use
     what's here and leave gaps as placeholders.
     1) Write the problem statement: CI builds take 25 minutes at p90 across 14,000 builds a week; 9 repos merged
        with required checks skipped last month; 4 Q3 incidents trace back to a skipped check. Audience:
        engineering directors. I want two engineers for a quarter, decided by Nov 14, 2026. Why now: the Q1
        monorepo migration doubles build volume. Next steps: review Nov 7, decision Nov 14, start Dec 1.
     2) Then draft the north star and key outcomes.
     3) Then write the principles, scope, non-goals, and bets. The arguments we keep having: remote build cache
        versus bigger machines; test selection versus the full suite on every commit.
