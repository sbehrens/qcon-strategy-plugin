# Slow CI Builds

**Target Audience:** Engineering directors and the developer experience team

**Author(s):** Build Tech Lead

**Last Updated On:** Oct 9, 2026

**Intent:** To get two engineers for one quarter to cut CI build time, with a staffing decision by Nov 14, 2026.

**Decision:** Pending

### The End State / Value

Every change gets CI feedback in under ten minutes. Teams stop skipping required checks, main stays green, and engineers spend their time on product work instead of waiting on builds.

### Problems

**Builds are too slow to wait for**

CI builds take 25 minutes at the 90th percentile across about 14,000 builds a week.

**Teams route around CI**

Last month 9 repos merged changes with required checks skipped. 4 incidents in Q3 trace back to a skipped check.

### Why Should We Work On This Now?

The monorepo migration in Q1 will roughly double build volume. Without a fix, build times and skipped checks both get worse just as more teams join the shared pipeline.

### Possible Approaches

Left to the team on purpose.

### Next Steps

1. Nov 7, 2026 - review this pitch with engineering directors.
2. Nov 14, 2026 - staffing decision.
3. Dec 1, 2026 - the two engineers start.
