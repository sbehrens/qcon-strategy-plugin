---
name: doc-empty-folder
description: "In an empty folder, strategy-doc builds the full section list with an Open sections line."
tags: [build]
max_turns: 30
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit]
---

Start our combined vision and strategy doc for the CI build speed work. North star: "Every change ships
     through CI in under ten minutes." Key outcomes: p90 build under 8 minutes by June 2027; zero merges with a
     skipped required check from March 2027. Bets: remote build cache versus bigger build machines; test
     selection by changed code versus the full suite on every commit. I have no risks, metrics, or stakeholder
     questions yet, so leave those open. Don't ask me anything, write the doc.
