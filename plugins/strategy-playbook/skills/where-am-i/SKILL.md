---
name: where-am-i
description: Assess the user's strategy drafts against the seven-level playbook and suggest the next one or two tools. Use only when there is written work to assess - files, a strategy/ folder, or a draft pitch, problem statement, north star, bets, or strategy doc pasted in chat - and the user asks "where am I", "what's next", "what am I missing", or "review my strategy progress". Do not use when the user only describes a problem or symptom in words with no draft (for example "the work is crawling" or "nobody agrees what it's for"); that is a question for ask-the-talk.
---

# Where am I

Classify the user's work by **content, never file name**. A problem statement saved as `pitch-draft.md` is still a problem statement.

## 1. Gather the material

In this order, use what exists:
- A path the user gives (file or folder).
- `strategy/` in the working folder.
- Any other `*.md` in the working folder (Glob, then Read the likely ones).
- Text pasted in chat.

If nothing is found, ask the user to paste their draft or describe where they are. Do not stop at "no files found."

## 2. Classify each piece by its content

| Level | Recognise it by | Done when |
|---|---|---|
| 1 Finding the idea | A named problem plus a now / later / is-it-you call. Recognised from text only; no artifact. | Problem named and a now/later/you call made |
| 2 Problem statement | Audience, intent with a date, end state or value, problems with examples, why now or leverage, dated next steps | All six present |
| 4 North star | A short aspirational end-state line plus key outcomes | North star and at least two checkable key outcomes |
| 5 Strategy | Guiding principles, scope and non-goals, bets written "X versus Y", detailed bet paragraphs | All four present |
| Combined doc | One doc with motivation, north star, key outcomes, principles, scope, bets, plus risks, metrics, questions | Every section filled; no "Open sections" left |

In a combined doc, the Motivation section stands in for the problem statement: judge it as a summary (problem, impact, why it matters), not against the full level 2 checklist. The template order (north star and outcomes before Motivation; Questions before Detailed Bets) is intended; do not flag it.

For each: report **done**, **partial** (name what's missing), or **missing**. Quote a few words of evidence for each "done" so the user can see why.

## 3. Report

Keep it short:
- **Where you are:** one line per level found.
- **Gaps:** the specific missing pieces (for example "bets have no detailed paragraphs", "no non-goals", "outcome 2 has no measure").
- **Next:** offer the next tools as options, never a forced sequence. Pick from:
  - `problem-statement` - write or fix the pitch.
  - `north-star` - draft the north star and key outcomes.
  - `strategy-bets` - principles, scope, bets.
  - `strategy-doc` - assemble or finish `strategy/vision-and-strategy.md`.
  - The critic agents, once there is a draft with bets: `likeliest-dissenter` (argues the other side of each bet), `cold-reader` (the four-question reader test), `exec-preview` (cost, value, data).
  - Level 6 Q&A (`ask-the-talk`): rolling it out, the ring of support, the feedback log - offer this when the combined doc is complete.

These routes are required. Match the state and include every tool the route names:
- **Problem statement only:** level 2 done. Offer `north-star` or `strategy-bets`.
- **Bets only, with no doc around them** (files or pasted text): offer `strategy-bets` to add principles, scope, and non-goals; the critics on the bets (`likeliest-dissenter` first); and `strategy-doc` to build the combined doc around them.
- **A full combined doc:** offer all three critics (`likeliest-dissenter`, `cold-reader`, `exec-preview`) and level 6 Q&A through `ask-the-talk` (the reader test, the ring of support, the feedback log, the executive pitch).
- **Anything else:** the one or two tools that close the biggest gap.

Levels 3 (tiger teams), 6 (comms and feedback), and 7 (failure modes) have no artifact to detect. Offer them as Q&A topics through `ask-the-talk` when relevant. Point to `${CLAUDE_PLUGIN_ROOT}/templates/staffing-model.md` if the user is about to staff a team.

Do not write or change any file in this skill.
