---
name: strategy-doc
description: Assemble, finish, or review the combined North Star Vision and Strategy document (motivation, north star, key outcomes, principles, scope, bets, risks, metrics, questions). Use when the user wants the full strategy doc, wants to combine their pieces into one doc, add risks, metrics, or a questions/feedback section, check what sections are still open, re-sync the motivation with the problem statement, or check whether the doc is ready to share.
---

# Strategy doc

The end product is `strategy/vision-and-strategy.md`. You create or update it, keep an **Open sections** list at the top until every section is filled, and run the reader test before calling it ready. This skill works alone: no earlier file is needed.

Read first: `${CLAUDE_PLUGIN_ROOT}/templates/vision-and-strategy.md` and `${CLAUDE_PLUGIN_ROOT}/examples/misaligned-ai/vision-and-strategy.md`.

## 1. Create or load

- If `strategy/vision-and-strategy.md` exists, read it.
- If not, create it from the template. If the user pasted pieces (a pitch, a north star, bets), place each in its section.
- The doc reads from beliefs to bets: Motivation, North Star, Key Outcomes, Principles, Scope and Non-Goals, Bets, then Risks, Metrics, Questions, Detailed Bets.

## 2. Re-sync Motivation

If `strategy/problem-statement.md` exists, it is the source of truth. Distill its problem, strongest evidence, and why-now into 2-4 sentences and compare with the current Motivation. If they differ, show the before/after and update Motivation.

## 3. Fill the closing sections

Prompt for whatever is missing:
- **Risks** - how the strategy could fail, each with a mitigation. Suggest one risk per bet's accepted drawback.
- **Metrics** - at least one measure per key outcome, plus operational and adoption measures. Tie each to an outcome or bet in brackets.
- **Questions** - stakeholder feedback, dissent, and your response to each ("will address" plus what changed, or "won't address" plus why). Suggest a linked feedback log instead of doc comments.

If the user can't answer now, leave the placeholder and keep the section on the Open sections list. Never invent data; use a visible placeholder.

## 4. Keep the Open sections list

At the top of the doc, keep one line: `**Open sections:** <names of every section still holding a template placeholder>`. Remove the line only when every section is filled.

## 5. Reader test before "ready"

Before you call the doc ready, run the reader test: launch the `cold-reader` agent and **pass the full doc text in the prompt** (it has no tools). It answers: What's the problem? What's most important to solve? What are the choices? Is it achievable? Report its findings. The doc is ready only when the Open sections list is gone and all four questions have an answer.

Then offer the other critics on the saved file: `likeliest-dissenter` and `exec-preview`, each given the doc path.

**Before overwriting any existing user file, show the change** (before/after of the changed sections). If the user already asked for the update in this request, show it and apply it; otherwise ask first.
