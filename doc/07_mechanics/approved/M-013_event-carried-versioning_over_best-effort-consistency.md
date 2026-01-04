# Mechanic: Event-Carried Versioning over Best-Effort Consistency

## Intent

Prevent silent inconsistency
by enforcing explicit version progression.

---

## Problems Addressed

- High Coupling, Low Fault Locality
- Untestable Architecture
- Decisions Without Feedback

---

## Desired Outcomes Supported

- Deterministic recovery
- Replayable state transitions
- Clear conflict detection

---

## Enforced Behavior

This mechanic enforces that:

- state-changing events carry version information
- out-of-order or conflicting versions are detectable
- inconsistency triggers explicit handling

Best-effort consistency is not acceptable.

---

## Structural Constraints

- version discipline is mandatory
- silent overwrite is impossible

---

## Mechanic Boundary

This mechanic:
- governs state evolution semantics

This mechanic does **not**:
- define versioning schemes
- prescribe storage models

---

## Failure Modes

- versions are present but ignored
- conflicts are logged but not handled

