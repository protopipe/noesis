# Candidate: No Process Step without Stateless, Testable I/O

## Hypothesis

A process step that requires reading state
from external systems
destroys feedback locality
and creates disproportionate mocking and setup effort.

---

## Intended Constraint

A process step must:

- operate solely on explicit inputs
- produce explicit, verifiable outputs
- require no synchronous reads from third systems

If this is not possible,
the step is wrongly scoped and must be:
- enlarged
- re-cut
- or decoupled via explicit boundaries.

---

## Problem Signal

- Tests require complex environment setup
- Mocks drift from reality
- Failures are hard to reproduce locally
- “Nachlesen” becomes the hidden dependency

---

## Open Questions

- What is the minimal acceptable input set?
- How do we handle unavoidable reference data?
- Where is the boundary between step and process?

