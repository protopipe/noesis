# Candidate: No Process Step without Single Release Unit

## Hypothesis

A process step that spans multiple release units
cannot be tested, owned, or evolved safely.

---

## Intended Constraint

A process step must be fully implemented
within a single release unit.

A release unit may implement **multiple** process steps.

If a process step crosses a release unit boundary,
the step is wrongly scoped and must be re-cut.

---

## Boundary Rule

When a process transitions from one release unit to another:

- the transition must be explicit (entry/exit events)
- the next step must be executable without synchronous reads
  from the previous unit

Cross-unit transitions must be coupling-free by design.

---

## Problem Signal

- partial deployments break steps
- ownership becomes unclear
- failures are hard to localize
- test setup requires foreign state

---

## Open Questions

- What is the minimal definition of a “process step”?
- Where is the boundary between “step” and “process”?
- How strict must coupling-free transitions be in practice?

