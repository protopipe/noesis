# Mechanic: Polling over Push Sockets

## Intent

Avoid hidden coupling and scaling complexity
by enforcing pull-based state synchronization.

---

## Problems Addressed

- High Coupling, Low Fault Locality
- Untestable Architecture
- Integration Layer Lock-In

---

## Desired Outcomes Supported

- Systems scale predictably
- Failure modes are observable
- Clients remain loosely coupled

---

## Enforced Behavior

This mechanic enforces that:

- clients retrieve state via polling
- push-based socket communication is not the default
- synchronization remains explicit and observable

Push-based coupling requires explicit justification.

---

## Structural Constraints

- real-time convenience is traded for robustness
- implicit server-to-client coupling is avoided

---

## Mechanic Boundary

This mechanic:
- governs default synchronization semantics

This mechanic does **not**:
- forbid push communication categorically
- define polling intervals or protocols

---

## Failure Modes

- push channels reintroduced implicitly
- polling treated as implementation detail

