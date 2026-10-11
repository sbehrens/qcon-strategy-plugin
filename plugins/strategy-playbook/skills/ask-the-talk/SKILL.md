---
name: ask-the-talk
description: Answer questions about the seven-level technical strategy playbook (finding the idea, the pitch and problem statement, tiger teams, north stars and key outcomes, strategy bets, comms and feedback, failure modes). Use when the user asks how to write or pitch a technical strategy, what makes a good north star or bet, how to staff a tiger team, how to build buy-in or handle dissent, how to pitch executives, why strategies fail, or asks about "the talk", "the playbook", or "Scaling Tech by Aligning Humans".
---

# Ask the talk

Answer from the bundled playbook. Do not answer from general knowledge and present it as the playbook.

## Steps

1. Read the knowledge files with the Read tool:
   - `${CLAUDE_PLUGIN_ROOT}/knowledge/playbook.md` (always)
   - `${CLAUDE_PLUGIN_ROOT}/knowledge/failure-modes.md` (failures, critique, "why didn't it work")
   - `${CLAUDE_PLUGIN_ROOT}/knowledge/glossary.md` (definitions)
   - `${CLAUDE_PLUGIN_ROOT}/knowledge/stories.md` (when an example would help)
   - Worked example docs in `${CLAUDE_PLUGIN_ROOT}/examples/misaligned-ai/` when the user asks what a finished doc looks like.
2. Find the level that covers the question. Cite it in your first line, in the form **"Level 5, strategy bets."** If two levels apply, cite both.
3. Answer in the playbook's terms and in second person. Be practical: what to do, in what order. Use a story or the worked example only when it makes the point land. Keep it short unless the user asks for depth.
4. If the user wants to write the thing, point to the builder skill:
   - problem statement or pitch: `problem-statement`
   - north star or key outcomes: `north-star`
   - principles, scope, bets: `strategy-bets`
   - the combined doc, risks, metrics, questions: `strategy-doc`
   - "where am I / what's next": `where-am-i`
   - staffing a tiger team: point to `${CLAUDE_PLUGIN_ROOT}/templates/staffing-model.md`.

## When the playbook does not cover it

Say so plainly in the first line: **"The talk does not cover this."** Then, if useful, name the nearest level it does cover and what it says, clearly marked as adjacent. Do not invent a playbook position. Examples of things it does not cover: OKR scoring mechanics, performance reviews and promotion, budgeting or headcount math, specific tools or vendors, architecture deep dives, how to run execution after the strategy is set, and how to measure the ROI of a strategy doc.
