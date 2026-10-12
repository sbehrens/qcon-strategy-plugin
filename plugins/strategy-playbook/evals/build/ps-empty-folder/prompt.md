---
name: ps-empty-folder
description: "In an empty folder, problem-statement writes both files under strategy/."
tags: [build]
max_turns: 30
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit]
---

Help me write a problem statement. Audience: engineering directors. I want two engineers for one quarter,
     decided by Nov 14, 2026. If it's solved, every change gets CI feedback in under ten minutes and teams stop
     skipping checks. Problems: builds take 25 minutes at p90 across about 14,000 builds a week; 9 repos merged
     with required checks skipped last month; 4 Q3 incidents trace back to a skipped check. Why now: the Q1
     monorepo migration doubles build volume. Next steps: review with directors Nov 7, decision Nov 14, start
     Dec 1. I'm offline after this, so don't ask me anything: draft it with what I gave and list what's missing.
