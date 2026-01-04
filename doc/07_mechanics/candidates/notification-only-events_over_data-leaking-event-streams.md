# Candidate: Notification-Only Events over Data-Leaking Event Streams

## Hypothesis

Event streams that carry rich domain data
silently erode domain boundaries
and create uncontrolled data propagation.

---

## Intended Constraint

Events must function primarily as notifications
and must not transport sensitive or domain-owned data
beyond explicit responsibility boundaries.

---

## Problem Signal

- domain data leaks across contexts
- event consumers gain implicit read access
- GDPR and data-minimization rules are violated implicitly
- ownership of data becomes ambiguous

---

## Open Questions

- Where is the boundary between “minimum sufficient state” and leakage?
- How does this interact with event sourcing semantics?
- Does this force synchronous follow-up reads?
- Is this universally applicable or context-dependent?

