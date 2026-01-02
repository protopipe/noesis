# Mechanic: No Backend-Controlled Client State without Domain-Owned State

## Intent

Prevent hidden coupling and opaque behavior
by enforcing explicit ownership of client-related state.

---

## Problems Addressed

- High Coupling, Low Fault Locality
- Untestable Architecture
- Implicit Knowledge and Fragmented Contexts

---

## Use-Cases Enabled

- Teams reason about client behavior deterministically
- Failures are attributable and reproducible
- State becomes inspectable and auditable

---

## Enforced Behavior

This mechanic enforces that:

- backend systems must not control client state implicitly
- client-relevant state must belong to an explicit domain object
- state transitions are observable and owned

Backend-controlled implicit state is forbidden.

---

## Structural Constraints

- convenience-based state hacks are prevented
- hidden behavioral coupling is removed
- debugging shifts from inference to inspection

---

## Mechanic Boundary

This mechanic:
- governs ownership of client-relevant state

This mechanic does **not**:
- define storage technology
- mandate frontend architecture

---

## Failure Modes

- state is hidden in transport or infrastructure layers
- ownership is unclear
- behavior depends on invisible state

