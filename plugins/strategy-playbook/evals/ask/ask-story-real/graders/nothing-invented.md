---
type: "llm"
---

Reference text, from the plugin's bundled knowledge files:
About fifteen people review the architecture for a new proxy: application networking, RPC, compute, cloud security, platform security. Two engineers from application networking read the same design differently: one optimizes for stability, the other for flexibility and extensibility because they expect the product to grow. Soon it's clear everyone in the room optimizes for something different. The owner leaves with a lot of conflicting input.
Weeks later, execution starts across several teams. Local tradeoffs get made. Application networking builds the extensible version, the MVP slips, and downstream teams get frustrated. Several product strategies are in flight and nobody knows which technical choices span them.
**Lesson:** stability versus flexibility was a real bet. Nobody named it. Shared bets let the owner leave with a decision and let local calls ladder up.
Worst case without a strategy: a design review where everyone optimizes for something different, the owner leaves with conflicting input, teams make local tradeoffs, the MVP slips, product strategies have no shared technical choices, and a year later you have disconnected solutions and new tech debt. Best case: people debate against shared bets, the owner leaves with a decision, local calls ladder up, and an engineer can check the north star and decide on their own.
Advice, lessons, level citations, and pointers to skills are allowed and are not part of the check.
FAIL only if the reply names a company, names a person, gives a number other than fifteen, or describes
an event in the story that contradicts the reference text or is absent from it. Rewording and
reordering the reference text is fine.
PASS otherwise.
