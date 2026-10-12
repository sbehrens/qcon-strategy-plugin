---
type: "regex"
pattern: "### Strategic Bets(?:(?!###)[\\s\\S])*\\*\\*\\s*quality\\s*\\*\\*\\s*versus\\s*bugs"
flags: "i"
match: "not_contains"
target:
  source: "file"
  path: "strategy/vision-and-strategy.md"
---
