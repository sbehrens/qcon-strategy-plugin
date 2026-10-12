---
name: ask-the-talk
description: Answer questions about the seven-level technical strategy playbook (finding the idea, the pitch and problem statement, tiger teams, north stars and key outcomes, strategy bets, comms and feedback, failure modes). Use when the user asks how to write or pitch a technical strategy, what makes a good north star or bet, how to staff a tiger team, how to build buy-in or handle dissent, how to pitch executives, why strategies fail, or asks about "the talk", "the playbook", or "Scaling Tech by Aligning Humans". Also use when the user describes a symptom in words with no draft attached and asks what is going wrong (for example "everyone gives a different answer about what our initiative is for", "the work is crawling", "nobody has heard of our strategy", "people say they agree but nothing changes", "the team is not gelling"): diagnose it against the level 7 failure modes.
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
2. If the user describes a symptom (something going wrong, slow, or stuck) rather than asking how to do something, diagnose it: match the symptom to a failure mode in `failure-modes.md` using its **Symptoms you hear** lines, name the failure mode by number, and give its fix. Cite **Level 7** in your first line, plus the level that holds the fix (for example **"Level 7, failure mode 1 (unclear problem statement); the fix is in Level 2, the pitch."**).
3. Otherwise, find the level that covers the question. Cite it in your first line, in the form **"Level 5, strategy bets."** If two levels apply, cite both.
4. Answer in the playbook's terms and in second person. Be practical: what to do, in what order. Use a story or the worked example only when it makes the point land. Keep it short unless the user asks for depth.
5. If the user wants to write the thing, point to the builder skill:
   - problem statement or pitch: `problem-statement`
   - north star or key outcomes: `north-star`
   - principles, scope, bets: `strategy-bets`
   - the combined doc, risks, metrics, questions: `strategy-doc`
   - "where am I / what's next": `where-am-i`
   - staffing a tiger team: point to `${CLAUDE_PLUGIN_ROOT}/templates/staffing-model.md`.

## When the playbook does not cover it

Start your reply with these exact words: **"The talk does not cover this."** Use that sentence word for word, not a paraphrase such as "the playbook doesn't say". Then, if useful, name the nearest level it does cover and what it says, clearly marked as adjacent. Do not invent a playbook position. Examples of things it does not cover: OKR scoring mechanics, performance reviews and promotion, budgeting or headcount math, specific tools or vendors, architecture deep dives, how to run execution after the strategy is set, and how to measure the ROI of a strategy doc.
