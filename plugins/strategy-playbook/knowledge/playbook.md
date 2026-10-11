# The Strategy Playbook: Seven Levels

The core claim: a human-aligned technical strategy can often scale your impact further than any code you could write alone. When the strategy is clear, people make good local calls without you in the room.

The playbook is a world map, not a forced sequence. Cherry-pick the levels you need.

| Level | Name | What you do | Builder skill |
|---|---|---|---|
| 1 | Finding the idea | Find the right problem; decide now, later, and whether it's you | Q&A only |
| 2 | The pitch | Write the problem statement and get a yes | `problem-statement` |
| 3 | Tiger teams | Staff a small team of peers to build the strategy | Q&A only (staffing template) |
| 4 | North stars | Set the north star and key outcomes | `north-star` |
| 5 | Strategy bets | Principles, scope, bets with tradeoffs | `strategy-bets`, `strategy-doc` |
| 6 | Comms and feedback | Align the org; turn feedback into buy-in | Q&A only, plus the critic agents |
| 7 | Failure modes | Six ways it fails, and the fixes | Q&A only, plus the critic agents |

## Why bother: the hypotheses

1. Good strategy helps teams optimize for the right tradeoffs while different teams work the problem.
2. It brings more confidence and more "one team" energy.
3. Lightweight, simple strategies turn around faster and deliver more than complex ones.
4. Technical strategy can complement product strategy without waiting for it.
5. One powerful north star does more steering than you expect.

Worst case without a strategy: a design review where everyone optimizes for something different, the owner leaves with conflicting input, teams make local tradeoffs, the MVP slips, product strategies have no shared technical choices, and a year later you have disconnected solutions and new tech debt. Best case: people debate against shared bets, the owner leaves with a decision, local calls ladder up, and an engineer can check the north star and decide on their own.

---

## Level 1: Finding the idea

Stay in a constant state of gap analysis. Ask two questions: is this the right problem to set a strategy around, and should it be solved now or later?

**Where to look**
- Business and product newsletters, quarterly business review memos, launch emails. Is everyone facing the same challenge but solving it differently? Is there a hidden risk?
- Incident data and trends.
- Where tech debt is lurking.
- Conversations with your team, your org, and other tech leads.
- Gaps between charters: the problem nobody owns. Example: no one owns "ownership," so ungoverned assets slow down campaigns, migrations, and incident response.
- Synthesis bots across chat, email, and docs, to scale what you do by hand.

**Is it worth it?** Check it against prioritization criteria. Does it reduce risk, uncertainty, or complexity? Improve resilience, preparedness, or productivity? Lower costs? Swap in your own org's framework.

**Now, later, or you?**
- *Now:* urgent and important (payment partner integrations failing from API instability); foundational, other work depends on it (an RPC client for stateless services); compounding, grease for other projects (cutting CI build times from 20 minutes to 8).
- *Later:* waiting won't change the value or risk; you accept some risk to do urgent work first; the space is novel and will settle, so it's cheaper to solve later (where to place advanced proactive AI security controls).
- *You?* Are you uniquely qualified? How critical is the problem?

## Level 2: The pitch and problem statement

Write it down. A problem statement has five parts to remember:
1. **Intent, with a date.** What you want and by when.
2. **End state and value.** Why the company is better if this is solved.
3. **Problems, with examples.** One-line headline each, then 2-3 sentences of evidence.
4. **Why now** (or "leverage"). The so-what.
5. **Next steps, always dated.** Say whether you want alignment, funding, a roadmap slot, or priority.

**Possible approaches:** detail is proportional to the buy-in you want. If you need a team to solve it, don't over-specify; you'll steal their creative power and they'll be less motivated. If you'll take it on yourself, go deeper.

**Building buy-in**
- Decide how much buy-in you want now. You can write the first sentence or the whole thing.
- Handing it off? Bring people in early, or they may resent it.
- Built it yourself? Show it to your likeliest dissenter first.
- Gut-check it with three people. Do they understand it, or does each read it differently?

**Variants:** adapt the template to your culture and the problem.
- *Inverse:* call them opportunities and use positive framing throughout.
- *Owner wanted:* problem plus leverage plus a call for an owner.
- *Experiments:* problem plus leverage plus a few bets or ideas to try.

## Level 3: Tiger teams

A tiger team (also V-team, virtual team, or pod) is a small group of peers, often cross-functional, organized around a single goal. It is not a working group. Here the focus is creating the strategy, not executing it.

**Curate the team**
- Mix perspectives and expertise; pick people comfortable with ambiguity.
- Show managers how the work helps their team. Map it into their charters. Meet them 1:1 or as a group.
- If the work is business-critical, ask to pick your team. Watch out: hand-picking brings bias, and you may overfit when someone else was the right person.
- Size the team to the strategy's breadth.

**Set the rules up front:** what are we doing, until when, when are we done, and if we can't figure it out, where do we stop?

**Write a staffing and execution model** (see `templates/staffing-model.md`): who, how much, how long; what managers give up (no on-call, home projects, standups, KTLO); and an alignment table showing which managers have committed.

**Your role as tech lead:** get the team to the finish line, break ties when the group is stuck, and keep feedback flowing while you hand out ownership. Make it safe to disagree.

## Level 4: North stars and key outcomes

A **north star** is an aspirational end state that takes a while to reach. It gives every reader a litmus test: does this work get us closer, or farther? It can be a few words, a sentence, or a day-in-the-life story. Short and salient wins, and it's a bonus if it's meme-orable.

**Bake business value into it.** Weak draft: "Scale positive AI outcomes with minimal mistakes through agents adhering to our intentions." (wordy). Strong: "Every production AI agent achieves what we intend." (short, claim plus value).

**Draft it with the team**
1. Start from an example. Blank-page syndrome is the worst.
2. Ask for critique: shorter? ambitious enough? directional?
3. Collect action words (scale, adhere, improve).
4. Hand out key outcomes; the team will spot ones you missed.

**Key outcomes** define what must be true for the north star to be reached. Pair every north star with them, reuse them as planning themes, and write them so it's obvious when each is delivered.

In the doc: the north star on one line, a short paragraph promising to revisit the bets, then the key outcomes.

## Level 5: Strategy bets

A strategy is a set of choices with tradeoffs. A roadmap (a set of requirements) is not a strategy, and neither is a yearly plan of work items grouped by theme.

**Six qualities of a good strategy**
1. Clear key goal, so readers can check the strategy solves it.
2. Scope and non-goals, constrained to raise the odds of success.
3. First principles, durable and non-controversial.
4. Choices with tradeoffs, often ones that feel uncomfortable.
5. Measures of success, enough to know you're on track. They will change during execution.
6. Risks and edge cases: how the strategy could fail.

**First principles** are the beliefs the strategy rests on. They explain why you'll act as you do, rarely change, and stand on their own. Example: "Misalignment is cheapest to fix before production."

**Bets.** Write each as *the choice you want* **versus** *another reasonable choice*, then supporting text: why it's right, what drawback you accept, and how you manage it. Example: "Bounded autonomy versus restrictive permissions."
- *Name it.* Say what you're choosing not to do. If it doesn't feel a little uncomfortable, it isn't a bet.
- *Keep it short.* One sentence for the bet; supporting text shows how it applies to the work.
- *Revisit.* Review on a schedule, and when bets settle or things change. Expect to lose some.
- *Test:* would a reasonable person pick the other side?

**Pictures and prototypes** carry the argument further than prose. Diagram architecture, workflows, and bets-to-outcomes. Prototype anything open to too much interpretation.

**Draft bets in parallel.** Share the template plus one example bet. Split into themes (for example observability, user experience, incident response, ecosystem hardening), one lead per theme, about three bets each. Expect 15-30 bets back. Merge: find overlaps, debate contradictions, capture learnings. Test: would these bets actually help us make better choices?

**Editorial pass.** As tech lead, take the editor role. Combine like bets, keep five to ten active, move the rest below the line, and promote new ones as bets settle. Set a feedback deadline and skip perfection.

**The final doc reads from beliefs to bets:** motivation (why this matters), principles (what we believe), scope and non-goals (where we'll play), bets (what we choose). Then risks, metrics, and questions. Each bet then reads as a consequence of the beliefs.

**Technical strategy sits underneath product strategies.** You don't have to wait for product. One north star and a few shared bets tell every product team how to make the technical calls, while each keeps its own roadmap.

## Level 6: Communication and feedback

**The reader test.** Anyone who reads the doc or hears the pitch should answer four questions: What's the problem? What's most important to solve? What are the choices to solve it? Is it achievable? If they can't, you're not ready for a road show.

**Make it meme-orable.** A provocative vision becomes everyday language ("Secure by Default").

**Grow the ring of support.** Start with a few people on your team, work their feedback, then bring them along as you widen to managers, tech leads, directors, and executives. By the time you reach the key stakeholder, they may say yes by default.

**Scale through others.** Recruit tech leads, product managers, and program managers as champions; ask each to take it to their own team forum. Celebrate the tiger team in public. Exemplary effort gets a note to the person and their manager. A year later, show how the strategy drove value.

**Know the forums, or create one.** Design reviews, CFP reviews, strategy reviews, team or org meetings. No forum? Set up a review and invite people.

**Success** is when you aren't in the room and people can explain and defend the work.

**Farm for disagreement, then show what you changed.** Ask in writing, in reviews, and in 1:1s. Say where feedback changed your mind. Publish your feedback contract: any forum works; I'll listen and ask questions; if I agree, I'll act on it and check in; if I disagree, I'll explain why.

**Close comments; keep a linked feedback log.** Comments sprawl and vanish on resolve. A log gives a record of action: answer every item with "will address" plus what changed, or "won't address" plus why. Visible follow-through brings more feedback.

**When you disagree,** thank them and explain why. They may not like it, but they'll understand. **The ruthless dissenter** (powerful or noisy, can't disagree and commit): if it puts the project at risk, bring in your leadership. Escalation isn't a failure; leaving a known failure unaddressed is.

**Map the strategy into OKRs and product plans.** Tag the product strategies it supports. Spot gaps: "We don't have any work aligned with this bet. Let's get it in the plan." Get the work into OKRs so it stays visible.

**The executive pitch.** Ask first what format they want (slides, one-pager, data) and match it. Don't know an answer? Acknowledge it and give a date. Synthesize conflicting views; keep what fits your problem. No theory: bring data, value, and cost.

## Level 7: Failure modes

See `failure-modes.md`. Six ways it fails: unclear problem statement, wrong tiger team, fake north star, bets that aren't bets, nobody knows it exists, and bad at feedback.

## Take-home tries

1. Most work fails at an unclear problem statement. Gut-check yours with three people this week.
2. Strategy can be simple. Rewrite one roadmap item as "X versus Y."
3. Communicate to scale impact. Show your draft to your likeliest dissenter first.
4. A short north star can steer. Ask someone which of their work maps in, and which doesn't.
5. Cherry-pick from the playbook. Pick one tool for your next problem.
