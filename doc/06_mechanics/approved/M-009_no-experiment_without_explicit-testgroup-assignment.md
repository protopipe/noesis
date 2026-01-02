# Mechanic: No Experiment without Explicit Testgroup Assignment

## Intent

Prevent implicit exposure and unverifiable experiments
by enforcing explicit user group assignment.

---

## Problems Addressed

- Decisions Without Feedback
- Learning Is Optional
- Feature Pressure Over Innovation

---

## Use-Cases Enabled

- CPO validates outcomes during delivery
- Teams run interpretable experiments
- Management reasons about causality

---

## Enforced Behavior

This mechanic enforces that:

- every experiment defines explicit test groups
- group assignment is intentional and visible
- assignment may be randomized or equalized
- experiments without assignment are invalid

If no explicit assignment exists,
the experiment must not run.

---

## Structural Constraints

- “silent rollout” experiments are forbidden
- attribution without grouping is impossible
- learning requires deliberate exposure design

---

## Mechanic Boundary

This mechanic:
- enforces explicit exposure semantics

This mechanic does **not**:
- prescribe assignment techniques
- define persistence or tracking mechanisms

---

## Failure Modes

- experiments rely on implicit traffic splitting
- assignment exists but is not enforced
- groups are defined but not respected

