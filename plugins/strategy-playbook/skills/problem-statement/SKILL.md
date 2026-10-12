---
name: problem-statement
description: Write or revise a problem statement (the pitch) for a technical problem, level 2 of the strategy playbook. Use when the user wants to pitch a problem, get funding or staffing, find an owner, write a one-pager or problem statement, frame a problem or opportunity for leadership, or turn an idea into a doc people can say yes to. Writes strategy/problem-statement.md and syncs the Motivation section of strategy/vision-and-strategy.md.
---

# Problem statement

You produce `strategy/problem-statement.md` and keep the Motivation section of `strategy/vision-and-strategy.md` in sync with it. This skill works alone: no earlier file is needed.

Read first:
- `${CLAUDE_PLUGIN_ROOT}/templates/problem-statement.md` (the shape)
- `${CLAUDE_PLUGIN_ROOT}/examples/misaligned-ai/problem-statement.md` (a filled-in example to show the user)

## Overwrite rule (applies to every write in this skill)

**Show before/after on every overwrite. Every time, no exceptions.** Before any Write or Edit that changes an existing user file, put the before/after of each changed section in your reply text:
- **Before:** the old text of the section, quoted in full.
- **After:** the new text of the section, quoted in full.

A tool call, a diff hidden in the tool input, or a line like "updated the Motivation section" does not count. Repeat the same before/after in your final message, so the user sees what was replaced. If the user already asked for the update in this request ("go ahead", "apply it"), show the before/after and apply it in the same turn; otherwise show it and ask first. A new file has no before: show its path only.

## 1. Interview

You need six things. Take what the user already gave; ask only for what is missing, in **one** message, at most five questions:
1. **Audience** - who should read and act on this?
2. **Intent with a date** - what do you want, by when? (alignment, funding, staffing, roadmap slot, priority, an owner)
3. **End state / value** - why is the company better if this is solved?
4. **Problems with examples** - each a one-line headline plus evidence: incidents, numbers, quotes.
5. **Why now / leverage** - the so-what; what solving it unlocks.
6. **Next steps with dates.**

If the user gave enough to draft, draft now and list the gaps instead of interviewing. Never invent evidence: where a number or example is missing, write a visible placeholder like `<number of incidents>` and list it under "Still needed."

## 2. Pick the variant

Offer the three variants in one line each and use the one that fits:
- **Inverse:** "Opportunities" instead of "Problems," positive framing throughout. For cultures that respond to opportunity.
- **Owner wanted:** problem plus leverage plus a call for an owner.
- **Experiments:** problem plus leverage plus a few bets or ideas to try.

## 3. Check approaches

If the user wants a team to solve it and has written detailed approaches, warn them: over-specifying steals the team's creative power and motivation. Suggest leaving approaches light or out ("left to the team on purpose"). If they will solve it themselves, more detail is fine.

## 4. Write the files

1. Write `strategy/problem-statement.md` from the template. It is the source of truth for the pitch. Use a dated "Last Updated On."
2. Sync Motivation in `strategy/vision-and-strategy.md`:
   - If the file does not exist, create it from `${CLAUDE_PLUGIN_ROOT}/templates/vision-and-strategy.md`. Fill only the title, audience, author, date, and **Motivation (Problem Statement)**. Keep every other section as the template placeholder, and set the **Open sections** line at the top to list each unfilled section by name (for example: North Star Vision, Key Outcomes, Guiding Principles, Scope, Non-Goals, Strategic Bets, Risks, Metrics, Questions, Detailed Bets).
   - If it exists, replace only the Motivation paragraph. Leave every other section untouched. First quote the current Motivation text under **Before:** and your new text under **After:** in your reply, then edit.
   - Motivation is 2-4 sentences distilled from the problem statement: the problem, its impact with the strongest evidence, and why solving it matters now.

Follow the **Overwrite rule** at the top of this skill: show the before/after of each changed section in your reply before you write, and again in your final message.

## 5. Close

- Report the two file paths, the Motivation **Before:** / **After:** (when the combined doc already existed), and a "Still needed" list of placeholders.
- Suggest the gut-check: show it to three people, and to your likeliest dissenter first. Do they each read it the same way?
- Offer next tools in one line: `north-star`, `strategy-bets`, or the `cold-reader` agent for a reader test.
