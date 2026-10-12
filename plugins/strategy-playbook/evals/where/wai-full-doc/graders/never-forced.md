---
type: "llm"
---

PASS if the reply offers at least one next step and presents next steps as options the user can choose
between (a recommended pick is fine), and it never says the user must complete a level, step, or document
before they are allowed to use another one.
FAIL only if it imposes a required order (for example "you must first", "you can't do X until Y",
"you have to do these in order"), or gives no next step at all.
