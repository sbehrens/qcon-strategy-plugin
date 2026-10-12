# CI Build Speed North Star Vision and Strategy

---

**Target Audience:** Engineering directors, the developer experience team, and service owners

**Author(s):** Build Tech Lead

**Last Updated On:** Oct 9, 2026

**Purpose:** Sets the vision, key outcomes, and bets for making CI fast enough that nobody routes around it.

### North Star Vision

**"Every change ships through CI in under ten minutes."**

Each bet below moves build time down or keeps required checks trustworthy. When two bets conflict, build trust wins over raw speed. We revisit the bets every quarter.

### Key Outcomes

*What must be true for the north star to be reached. Written so it is obvious when each one is delivered.*

1. CI build time is under 8 minutes at the 90th percentile by June 2027, measured on the build dashboard.
2. Zero merges with a skipped required check in any month from March 2027.
3. 90% of active repos use the shared build cache by April 2027.

### Motivation (Problem Statement)

CI builds take 25 minutes at the 90th percentile across about 14,000 builds a week, so teams skip checks: 9 repos merged with required checks skipped last month, and 4 Q3 incidents trace back to a skipped check. The Q1 monorepo migration will double build volume, so the problem gets worse unless we act now.

**Guiding Principles**

1. Engineers should not wait on machines.
2. A required check must be trustworthy, or it should not be required.

**Scope**

- Build and test pipelines for backend services.
- The shared build cache and its access controls.

**Non-Goals**

- The mobile release pipeline.
- Replacing the CI vendor.

### Strategic Bets

1. **Remote build cache** versus bigger build machines
2. **Test selection by changed code** versus the full suite on every commit
3. **A central build team owns the pipelines** versus each team tuning its own

*See Detailed Bets for how each applies to the work.*

### Risks

1. **Cache poisoning** - A bad cache entry could ship a broken artifact. We mitigate with signed cache entries and a one-click cache purge.
2. **Missed regressions** - Test selection could skip a test that would have failed. We mitigate with a full nightly run on main.

### Metrics

- Build time at the 90th percentile [Outcome 1]
- Merges with a skipped required check per month [Outcome 2]
- Share of active repos on the shared cache [Outcome 3]
- Cache hit rate [Bet 1]

## Questions

- Platform lead: worried that a shared cache widens the attack surface - will address: cache entries are signed and scoped per repo.
- Product lead: supports the work if the migration date holds - will address: the cache rollout is sequenced before the migration.
- SRE: concerned test selection hides failures - will address: added the nightly full run as a risk mitigation.

## Detailed Bets

1. **Remote build cache** versus bigger build machines

We choose a remote build cache rather than buying bigger build machines. We value reusing work across builds more than raw compute per build. We accept that the cache adds a service to run and secure. Our strategy is to sign every entry and keep a one-click purge.

2. **Test selection by changed code** versus the full suite on every commit

We choose to run only the tests affected by a change rather than the full suite on every commit. We value fast feedback more than exhaustive feedback on each commit. We accept that a selected run can miss a regression. Our strategy is to run the full suite nightly on main and alert the owning team on any miss.

3. **A central build team owns the pipelines** versus each team tuning its own

We choose a central build team that owns pipeline configuration rather than each team tuning its own. We value consistent speed and security more than per-team customization. We accept that some teams lose tweaks they rely on. Our strategy is to offer a short list of supported pipeline profiles and a time-boxed exception process.

### Below the Line

*Bets not active right now. Promote one when an active bet settles.*

- **Hermetic builds everywhere** versus hermetic builds for release branches only
