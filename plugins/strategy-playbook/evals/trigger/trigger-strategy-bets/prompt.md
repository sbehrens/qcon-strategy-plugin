---
name: trigger-strategy-bets
description: "Turning recurring arguments into choices fires strategy-bets."
tags: [trigger]
max_turns: 12
timeout_seconds: 300
allowed_tools: [Read, Glob, Grep, Skill]
---

We keep arguing about the same choices on our data platform: managed Kafka or self-hosted, one shared
     schema registry or per-team schemas, batch or streaming for the billing pipeline. Help me turn these
     arguments into explicit strategic choices with tradeoffs.
