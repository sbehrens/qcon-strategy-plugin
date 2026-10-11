# Stories

Use these to illustrate a point. Each one ties to a level.

## The design review with no shared bets (why strategy matters; level 5)
About fifteen people review the architecture for a new proxy: application networking, RPC, compute, cloud security, platform security. Two engineers from application networking read the same design differently: one optimizes for stability, the other for flexibility and extensibility because they expect the product to grow. Soon it's clear everyone in the room optimizes for something different. The owner leaves with a lot of conflicting input.
Weeks later, execution starts across several teams. Local tradeoffs get made. Application networking builds the extensible version, the MVP slips, and downstream teams get frustrated. Several product strategies are in flight and nobody knows which technical choices span them.
**Lesson:** stability versus flexibility was a real bet. Nobody named it. Shared bets let the owner leave with a decision and let local calls ladder up.

## The newsletter filter that found a trend (level 1; the running example)
A tech lead keeps an email filter for business and product newsletters. Two signals line up: AI usage is getting more complex, and more incidents in the incident platform involve AI misalignment. More misalignment could put every AI program at risk, so a technical-first strategy could place bets to get ahead of it. It passes the criteria: it reduces security and availability risk, improves productivity and resilience, and lowers the cost of failed AI outcomes.
**Lesson:** read the signals you already get, and cross them with incident data.

## The Misaligned AI strategy (levels 2-5; the worked example)
The problem statement asks for staffing commitment by Oct 27, 2026, leaves approaches to the team on purpose, and makes dated asks. The tiger team is 5 people, 100% allocated, for 2 weeks (Nov 2-13, 2026); staffing commitments are due Oct 31; the strategy draft is due Nov 20. The north star: "Every production AI agent achieves what we intend." The first two bets: bounded autonomy versus restrictive permissions, and standardized evals, tracing, and guardrails versus team-chosen solutions. Full docs are in `examples/misaligned-ai/`.

## The sticky-note north star (level 4)
A project aims to raise confidence in and frequency of deployments. Twenty-plus people, many who had never worked together, get sticky notes and one prompt: "What would engineering be like if we increased frequency of deployment?" About 20 minutes of ideas, then cluster into themes and debate the contradictions. Offline, the lead writes it up as a day in the life, with the themes as action words:
> I enjoy building services because I spend most of my time solving interesting and complex problems that make a meaningful business impact. Every team member or coworker, regardless of tenure or expertise, can safely, easily, and automatically push code to production! We have a culture where committing code to other repos, adding features, and fixing problems is empowered because code is well-tested, well-documented, and easy to contribute to.
**Lesson:** north stars are a lot of work. Start from people's ideas, not a blank page.

## The agentic API prototype (level 5)
A tech lead proposes a problem statement, first principles for agentic API design, and a call for work. Then they build a prototype: two APIs, one following the principles and one not. Agents run the same 15-question eval against each. The principled API produces far fewer errors and turns.
**Lesson:** not a perfect demo, but enough to justify follow-up work. Prototypes carry an argument further than prose.

## The asset inventory pitch (level 6)
A tech lead asks to join an adjacent team's extended staff meeting to pitch co-building an asset inventory. The meeting goes okay, but they point to two forums the lead didn't know existed. Those forums bring in a broad set of stakeholders to weigh in and align.
**Lesson:** know the forums. Ask to join meetings, and ask where else the pitch should go.
