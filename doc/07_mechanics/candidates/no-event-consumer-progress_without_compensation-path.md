# Candidate: No Event Consumer Progress without Compensation Path

## Hypothesis

Event-driven systems without a defined compensation path
accumulate hidden deadlocks and manual intervention.

---

## Intended Constraint

An event consumer must not be allowed to progress
unless a defined compensation or unblock path exists
for failure or inconsistency scenarios.

---

## Problem Signal

- consumers block indefinitely on inconsistent state
- manual intervention becomes the default recovery mechanism
- failures surface late and far from their cause
- responsibility for recovery is unclear

---

## Open Questions

- What precisely defines “consumer progress”?
- When is compensation mandatory vs optional?
- How explicit must a compensation path be?
- Does retry alone qualify as compensation?

