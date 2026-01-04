# Mechanic: No User Assignment without Single-Experiment Exposure

## Intent

Ensure unambiguous attribution and interpretable feedback
by preventing overlapping experiment exposure at user level.

---

## Problems Addressed

- Decisions Without Feedback
- Feature Output over Outcome
- Untestable Architecture

---

## Desired Outcomes Supported

- CPO validates hypotheses reliably
- CTO reduces experiment-induced risk
- Teams reason about impact without attribution ambiguity

---

## Enforced Behavior

This mechanic enforces that:

- a user must not be assigned to more than one experiment
  affecting the same page
- user assignment is only valid if exactly one experiment
  (or none) applies
- absence of assignment results in control group exposure

If a user is exposed to multiple experiments,
the assignment is considered invalid.

---

## Structural Constraints

- overlapping user-level experiment exposure is impossible
- multivariate attribution via user overlap is structurally prevented
- experiment design must respect page-level exposure boundaries

These constraints intentionally trade experimentation flexibility
for attribution clarity and feedback integrity.

---

## Mechanic Boundary

This mechanic:
- governs user-level experiment exposure semantics
- enforces attribution clarity by construction

This mechanic does **not**:
- limit the number of experiments configured per page
- define experiment execution or assignment algorithms
- prescribe experiment tooling or infrastructure

---

## Failure Modes

- multiple experiments affect the same user implicitly
- attribution is justified statistically instead of structurally
- control groups are bypassed through configuration drift

