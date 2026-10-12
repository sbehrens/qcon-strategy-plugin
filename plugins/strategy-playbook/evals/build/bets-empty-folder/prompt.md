---
name: bets-empty-folder
description: "In an empty folder, strategy-bets writes principles, scope, and bets into strategy/."
tags: [build]
max_turns: 30
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit]
---

Write up our strategy's principles, scope, and bets. Context: our data platform team runs event
     pipelines for 40 product teams and we lose a week per quarter to schema breaks. The choices we keep
     arguing about: managed Kafka or self-hosted Kafka; one shared schema registry or per-team schemas;
     streaming or nightly batch for the billing pipeline. Mobile analytics is out of scope. Don't ask me
     anything, just write it into the strategy doc.
