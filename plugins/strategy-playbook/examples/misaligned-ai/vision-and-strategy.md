# AI Alignment North Star Vision and Strategy

---

**Target Audience:** AI Platform

**Author(s):** Tech Lead

**Last Updated On:** Nov 20, 2026

**Purpose:** Outlines the vision and bets we believe will support scaling production AI agents.

### North Star Vision

**"Every production AI agent achieves what we intend."**

This document lays out the strategy bets we are making to reach the north star, and their tradeoffs. We will revisit the bets periodically, based on company strategy, signals that a bet was wrong, or significant shifts in our threat model.

### Key Outcomes

*The outcomes we will deliver to unlock the north star.*

1. We can confidently scale production work across AI agents, knowing misalignment is caught before it disrupts customers, partners, or the business.
2. Agents' behaviors and actions are visible, steering cost-effective outcomes and improving our guardrails.
3. Leaders can see whether agents do what they intended, so they know where it is safe to scale AI. Every misalignment we catch makes agents more reliable.

### Motivation (Problem Statement)

AI agent misalignments are causing production outages and driving significant rework costs, through misunderstood prompts, accidents, and agents misrepresenting their readiness. These misalignments also threaten the AI products roadmap and the growing number of long-running tasks, by raising failure costs, unexpected consequences, and security risk. Solving this reduces errors, cuts costs, and builds confidence in production AI use cases.

**Guiding Principles**

1. Misalignment is cheapest to fix before production.
2. Speed of containment matters more than perfect prevention.
3. Optimize for learning so that similar teams don't face the same issues.

**Scope**

- Production AI agents, with priority on long-running and high-permission use cases.
- Internal and enterprise domains.

**Non-Goals**

- Training or fine-tuning foundation models, or aligning them at the model level.
- Prototypes, experiments, and internal tools that don't touch production.
- Business-to-business domains.
- Replacing existing security, privacy, and incident response processes. We integrate with them.

### Strategic Bets

1. **Bounded Autonomy** versus Restrictive Permissions
2. **Standardized Evals, Tracing, and Guardrails for Prod Agents** versus Team-Chosen Solutions

*See Detailed Bets for how each applies to the work.*

### Risks

1. **Teams avoid the paved path because it is too slow** - If the platform is slow or doesn't fit their needs, teams may keep their own tooling or launch agents without it. We mitigate this by pairing with early adopters and tracking which teams are not on the platform, so we can close their use-case gaps.
2. **Containment is slower than drift** - Bounded autonomy depends on catching misalignment fast. If tracing and containment lag, drift reaches customers before we catch it. We mitigate this by tracking time-to-containment from day one and tightening boundaries for any agent class that misses the target.

### Metrics

- The percentage of misalignments caught before production (Key Outcome 1).
- Agent-caused Sev 0/1 incidents per 1,000 production agent tasks.
- Median time from detected misalignment to containment (Bet 1).
- The percentage of production agents running on the harness (Bet 2).

## Questions

- Platform lead: Bet 2 will slow some launches. - Will address: time-boxed exceptions, tracked monthly.
- Product lead: Include business-to-business domains in scope. - Won't address: a non-goal for now, rationale in Scope.
- SRE: Add a containment-speed metric. - Will address: added to Metrics.

## Detailed Bets

1. **Bounded Autonomy** versus Restrictive Permissions

We choose to give production agents broad autonomy within clearly defined boundaries, rather than locking them down to narrow, pre-approved actions. We value the scale and productivity that come from agents doing real, long-running work more than the safety of tightly restricting what they can touch. We accept that agents will sometimes drift from our intentions, and that some of that drift will reach production. Our strategy is to invest heavily in tracing and fast containment, so each misalignment is caught quickly, stays isolated, and becomes a stronger guardrail.

2. **Standardized Evals, Tracing, and Guardrails for Prod Agents** versus Team-Chosen Solutions

We choose to require every production agent to run on a shared platform harness for evals, tracing, and guardrails, rather than letting teams build and pick their own safety tooling. We value a consistent, company-wide view of agent behavior more than the speed and flexibility teams get from custom solutions. We accept that this will slow some launches and frustrate teams whose use cases the platform doesn't fit yet. Our strategy is to make the paved road the easiest path, prioritize the gaps teams hit most, and grant time-boxed exceptions instead of permanent ones.
