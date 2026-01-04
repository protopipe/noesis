# Candidate: Forget as First-Class Event over Best-Effort Deletion

## Hypothesis

Deletion that is not modeled explicitly
cannot be reasoned about, audited, or enforced reliably.

---

## Intended Constraint

Data removal, anonymization, or invalidation
must be expressed as explicit domain events
with defined downstream semantics.

---

## Problem Signal

- deletion logic is scattered and implicit
- downstream systems retain stale personal data
- GDPR compliance is asserted, not proven
- recovery and replay semantics are unclear

---

## Open Questions

- How is replay handled after forget events?
- Are forget events terminal or reversible?
- How are projections expected to react?
- What constitutes “forgotten” in derived data?

