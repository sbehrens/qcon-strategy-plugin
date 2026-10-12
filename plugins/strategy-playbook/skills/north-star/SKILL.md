---
name: north-star
description: Draft a north star vision and key outcomes, level 4 of the strategy playbook. Use when the user wants a north star, vision statement, mission line, "where are we headed", key outcomes, planning themes, or a day-in-the-life vision, or wants to test whether an existing north star actually steers. Writes the North Star Vision and Key Outcomes sections of strategy/vision-and-strategy.md.
---

# North star

You produce a north star and key outcomes and write them into `strategy/vision-and-strategy.md`. This skill works alone: no earlier file is needed.

Read first: `${CLAUDE_PLUGIN_ROOT}/knowledge/playbook.md` (section "Level 4") and `${CLAUDE_PLUGIN_ROOT}/examples/misaligned-ai/vision-and-strategy.md`.

## Overwrite rule (applies to every write in this skill)

**Show before/after on every overwrite. Every time, no exceptions.** Before any Write or Edit that changes an existing user file, put the before/after of each changed section in your reply text:
- **Before:** the old text of the section, quoted in full.
- **After:** the new text of the section, quoted in full.

A tool call, a diff hidden in the tool input, or a line like "updated the Motivation section" does not count. Repeat the same before/after in your final message, so the user sees what was replaced. If the user already asked for the update in this request ("go ahead", "apply it"), show the before/after and apply it in the same turn; otherwise show it and ask first. A new file has no before: show its path only.

## 1. Get the problem

If `strategy/problem-statement.md` or a Motivation section exists, read it. Otherwise ask for the problem in one or two sentences and who the strategy is for. If the user already said enough, go on.

## 2. Start from an example, never a blank page

Show the worked example pair so the user sees the bar:
- Weak: "Scale positive AI outcomes with minimal mistakes through agents adhering to our intentions." (wordy)
- Strong: "Every production AI agent achieves what we intend." (short, the claim plus the business value)

## 3. Draft 2-3 candidates

Each candidate is one line. Then score each against four tests, one line per test:
- **Short** - could someone repeat it from memory?
- **Salient** - is it vivid, even meme-orable?
- **Business value baked in** - does it say why the company cares?
- **Litmus test** - name one piece of work that gets us closer and one that doesn't. If all work maps in, it's a fake north star (too vague). If only one project maps in, it's a goal, not a north star.

Recommend one. Collect the **action words** the user wants in it (for example scale, adhere, improve) and fold them in.

Offer the **day-in-the-life** format as an option: a few sentences of a person's working day once the vision is real, with the themes as action words. Good for culture or developer-experience strategies.

## 4. Key outcomes

Write 2-4 key outcomes: what must be true for the north star to be reached. Each must make delivery obvious: someone could check whether it happened. Flag any outcome with no way to tell it's done and suggest a measure. Note that outcomes can double as planning themes, and that teammates who own an outcome often spot one you missed.

## 5. Write the doc

Write the **North Star Vision** (the line in bold quotes, plus a short paragraph that says how bets support it and when they'll be revisited) and **Key Outcomes** sections of `strategy/vision-and-strategy.md`.
- If the file does not exist, create it from `${CLAUDE_PLUGIN_ROOT}/templates/vision-and-strategy.md`, fill these two sections (and Motivation if you have a problem), and set the **Open sections** line at the top to list every section still unfilled by name.
- If it exists, replace only these two sections and update the Open sections line. Leave every other section untouched.

Follow the **Overwrite rule** at the top of this skill: show the before/after of each changed section in your reply before you write, and again in your final message.

Close with the file path and one line offering `strategy-bets` next, or the test: "ask someone which of their work maps in, and which doesn't."
