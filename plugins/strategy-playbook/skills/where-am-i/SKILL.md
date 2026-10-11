---
name: where-am-i
description: Diagnose where a user's strategy work stands against the seven-level playbook and suggest the next one or two tools. Use when the user asks "where am I", "what's next", "what am I missing", "review my strategy progress", shares a draft pitch, problem statement, north star, bets, or strategy doc and wants to know what's done, or points to a strategy/ folder.
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

For each: report **done**, **partial** (name what's missing), or **missing**. Quote a few words of evidence for each "done" so the user can see why.

## 3. Report

Keep it short:
- **Where you are:** one line per level found.
- **Gaps:** the specific missing pieces (for example "bets have no detailed paragraphs", "no non-goals", "outcome 2 has no measure").
- **Next:** offer one or two tools, never a forced sequence. Pick from:
  - `problem-statement` - write or fix the pitch.
  - `north-star` - draft the north star and key outcomes.
  - `strategy-bets` - principles, scope, bets.
  - `strategy-doc` - assemble or finish `strategy/vision-and-strategy.md`.
  - The critic agents, once there is a draft with bets: `likeliest-dissenter` (argues the other side of each bet), `cold-reader` (the four-question reader test), `exec-preview` (cost, value, data).
  - Level 6 Q&A (`ask-the-talk`): rolling it out, the ring of support, the feedback log - offer this when the combined doc is complete.

Routing hints:
- Problem statement done, nothing else: offer `north-star` or `strategy-bets`.
- Bets only (no doc around them): offer `strategy-bets` to add principles and scope, the critics on the bets, and `strategy-doc` to build the combined doc.
- A full combined doc: offer the three critics and level 6 Q&A on communicating it.

Levels 3 (tiger teams), 6 (comms and feedback), and 7 (failure modes) have no artifact to detect. Offer them as Q&A topics through `ask-the-talk` when relevant. Point to `${CLAUDE_PLUGIN_ROOT}/templates/staffing-model.md` if the user is about to staff a team.

Do not write or change any file in this skill.
