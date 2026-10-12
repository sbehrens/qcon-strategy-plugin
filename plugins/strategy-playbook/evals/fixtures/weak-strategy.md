# Developer Platform North Star Vision and Strategy

**Target Audience:** Engineering

**Author(s):** Platform Tech Lead

**Last Updated On:** Oct 1, 2026

**Purpose:** Sets the vision and bets for the developer platform.

### North Star Vision

**"Deliver great value to our customers through excellent engineering."**

We will revisit these bets every half.

### Key Outcomes

1. Deploys to production complete in under 10 minutes at the 90th percentile.
2. Developers feel better about the platform.

**Guiding Principles**

1. Paved paths beat bespoke tooling for common work.
2. Every service owner can deploy without filing a ticket.

**Scope**

- Build, test, and deploy for backend services.

**Non-Goals**

- Mobile client release tooling.

### Strategic Bets

1. **Reliable deploys** versus unreliable deploys
2. **Managed CI runners** versus team-owned CI runners

### Risks

1. **Migration fatigue** - Teams may resist moving off their own runners. We mitigate with migration tooling and office hours.

### Metrics

- Deploy duration p90.
- Percentage of services on managed runners.

## Detailed Bets

1. **Reliable deploys** versus unreliable deploys

We choose reliable deploys. Reliable deploys are better for everyone. This platform will save the company millions of dollars a year and cut deploy-related incidents dramatically.

2. **Managed CI runners** versus team-owned CI runners

We choose to run CI on centrally managed runners rather than letting teams own their runners. We value consistent cost and security controls more than per-team customization. We accept that some teams lose runner tweaks they rely on. Our strategy is to offer a short list of supported runner profiles and a time-boxed exception process.
