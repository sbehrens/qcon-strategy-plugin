# Strategy Playbook

A Claude Code plugin that turns a technical problem into an aligned strategy. It teaches a lightweight, seven-level playbook (from finding the right problem to getting a whole org behind the plan) and helps you write the documents that carry it: a problem statement, a north star with key outcomes, strategy bets with real tradeoffs, and one combined vision-and-strategy doc. Then three critic agents attack your draft the way your dissenters, your cold readers, and your executives will. The goal is a strategy that steers the work when you aren't in the room.

> **📄 Google Docs templates:** [Problem Statement, Staffing Model, Vision & Strategy](https://drive.google.com/drive/folders/111QgUAKihOyX8dLTZvrZpxkljYbZ5vW0)
> Open a template, then **File > Make a copy** to get your own editable version.

## What's inside

**Skills**
- `ask-the-talk` - answers questions about the playbook and cites the level.
- `where-am-i` - reads your drafts (by content, not file name) and tells you what's done and what to try next.
- `problem-statement` - interviews you and writes the pitch, with the inverse, owner-wanted, and experiments variants.
- `north-star` - drafts 2-3 north star candidates, tests them as a litmus test, and pairs them with key outcomes.
- `strategy-bets` - first principles, scope and non-goals, and bets written "X versus Y," with a parallel mode for theme leads.
- `strategy-doc` - assembles and finishes `strategy/vision-and-strategy.md`, tracks open sections, and runs the reader test.

**Critic agents**
- `likeliest-dissenter` - argues the other side of every bet and flags bets nobody would dispute.
- `cold-reader` - reads the doc cold and answers the four reader-test questions.
- `exec-preview` - asks about cost, value, data, what you stop doing, and what happens if a bet is wrong.

Also bundled: plain markdown templates, a fully worked example (a strategy for misaligned production AI agents), and distilled knowledge files.

## Install

In Claude Code:

```
/plugin marketplace add sbehrens/qcon-strategy-plugin
/plugin install strategy-playbook@strategy-playbook
```

Restart Claude Code if the skills don't appear right away.

## Quick start

Try prompts like these:

- "What makes a strategy bet a real bet?"
- "Help me write a problem statement: our CI builds take 20 minutes and teams are routing around them."
- "Here's my draft strategy in strategy/. Where am I, and what's missing?"
- "Run the likeliest dissenter on strategy/vision-and-strategy.md."

Builder skills write to `strategy/` in your working folder and always show you a change before they overwrite your file.

## The seven levels

1. **Finding the idea** - look for gaps, check the problem is worth it, decide now, later, or you.
2. **The pitch** - a problem statement with a dated intent, evidence, why now, and dated next steps.
3. **Tiger teams** - staff a small team of peers, with scope, a timeline, and a stop condition.
4. **North stars** - a short, salient end state that works as a litmus test, plus key outcomes.
5. **Strategy bets** - principles, scope, and choices that a reasonable person could make the other way.
6. **Comms and feedback** - pass the reader test, grow the ring of support, and show what feedback changed.
7. **Failure modes** - six ways it fails, and how to recover.

Use any level on its own. It's a world map, not a forced sequence.

## Evals

The suite lives in `plugins/strategy-playbook/evals/` and runs with `claude plugin eval`. From the repo root:

```
plugins/strategy-playbook/evals/run.sh
```

It runs the offline hygiene checks first, then every model case (trigger, Q&A, where-am-i, the builder skills, and the critics). Each model run is a real call on your account. Extra flags pass through, for example `--case 'ask-*'` or `--runs 1`. `evals/hygiene.sh --self-test` and `evals/negative-control.sh` show that the checks fail on a broken plugin.

## Credit

Based on the talk "Scaling Tech by Aligning Humans" (QCon SF 2026) by Scott Behrens.

## License

MIT. See [LICENSE](LICENSE).
