---
name: strategy-bets
description: Write first principles, scope and non-goals, and strategy bets ("X versus Y" with detailed tradeoff paragraphs), level 5 of the strategy playbook. Use when the user wants to write a technical strategy, make strategic choices, turn a roadmap into bets, write guiding principles, set scope or non-goals, run a parallel bet-writing session with theme leads, or cut a long list of bets down. Writes the Guiding Principles, Scope, Non-Goals, Strategic Bets, and Detailed Bets sections of strategy/vision-and-strategy.md.
---

# Strategy bets

A strategy is a set of choices with tradeoffs. You help the user write principles, scope, and bets, and write them into `strategy/vision-and-strategy.md`. This skill works alone: no earlier file is needed.

Read first: `${CLAUDE_PLUGIN_ROOT}/knowledge/playbook.md` (section "Level 5") and the Detailed Bets in `${CLAUDE_PLUGIN_ROOT}/examples/misaligned-ai/vision-and-strategy.md`.

## 1. Get the context

If `strategy/vision-and-strategy.md` or `strategy/problem-statement.md` exists, read it for the problem and north star. Otherwise ask, in one message, for the problem and the decisions people keep arguing about. If the user already said enough, go on.

## 2. First principles

Draft 2-4. Each must be **durable** (rarely changes), **non-controversial** (most people nod), and **stands alone**. Example: "Misalignment is cheapest to fix before production." If a "principle" is something a reasonable person would argue against, it's really a bet: move it to the bets.

## 3. Scope and non-goals

Two short lists. Non-goals say what you deliberately won't do, to raise the odds of success.

## 4. Bets

Each bet is one line: **the choice** versus **another reasonable choice**. Example: "**Bounded autonomy** versus restrictive permissions."

Run the test on every bet and show the result: **would a reasonable person pick the other side?** If no (for example "quality versus bugs"), it isn't a bet; it's a roadmap item. Rewrite it around the real tension or drop it. If the bet doesn't feel a little uncomfortable, push harder.

Then a **detailed paragraph** per bet, four beats, about four sentences:
1. The choice: "We choose X rather than Y."
2. Why it beats the alternative: "We value A more than B."
3. The accepted drawback: "We accept that ..."
4. How the drawback is managed: "Our strategy is to ..."

## 5. Editorial pass

Keep **5-10 active bets**. Combine like bets, move the rest to **Below the Line**, and note that bets get promoted as active ones settle. Recommend a review schedule and a feedback deadline; skip perfection.

## Parallel mode

If the user has a team, offer this instead of drafting every bet yourself:
1. Produce a hand-out for theme leads: the bet template plus one fully worked example bet.
2. Suggest themes (for example observability, user experience, incident response, ecosystem hardening), one lead each, about three bets each.
3. When bets come back (often 15-30), merge them: list overlaps, list contradictions to debate, capture learnings, then run the editorial pass. Ask: would these bets actually help us make better choices?

## 6. Write the doc

Write **Guiding Principles**, **Scope**, **Non-Goals**, **Strategic Bets** (the one-line list), **Detailed Bets**, and **Below the Line** in `strategy/vision-and-strategy.md`.
- If the file does not exist, create it from `${CLAUDE_PLUGIN_ROOT}/templates/vision-and-strategy.md`, fill these sections, and set the **Open sections** line at the top to list every section still unfilled by name.
- If it exists, replace only these sections and update the Open sections line. Leave every other section untouched.

**Before overwriting any existing user file, show the change** (before/after of the changed sections). If the user already asked for the update in this request, show it and apply it; otherwise ask first.

Close with the file path and one line offering the `likeliest-dissenter` agent to argue the other side of each bet, and `strategy-doc` to finish risks, metrics, and questions.
