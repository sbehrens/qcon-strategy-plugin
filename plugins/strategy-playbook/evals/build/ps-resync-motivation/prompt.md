---
name: ps-resync-motivation
description: "A changed problem re-syncs Motivation only, and shows the before/after."
tags: [build]
max_turns: 30
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit]
---

Our problem changed. Build time is mostly fixed; the real pain now is flaky tests: 30% of CI failures last
     month were flaky retries, and engineers re-ran 2,100 builds in a week. Update my problem statement for this,
     and keep the combined strategy doc in sync. Go ahead and apply the changes.
