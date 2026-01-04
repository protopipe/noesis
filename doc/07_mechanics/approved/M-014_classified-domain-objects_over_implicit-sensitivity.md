# Mechanic: Classified Domain Objects over Implicit Sensitivity

## Intent

Enforce data responsibility and compliance
by making sensitivity explicit and unavoidable.

---

## Problems Addressed

- Implicit Knowledge
- Responsibility Without Control
- GDPR Compliance Gaps

---

## Desired Outcomes Supported

- Privacy-compliant architectures
- Auditable data flows
- Explicit risk management

---

## Enforced Behavior

This mechanic enforces that:

- domain objects are explicitly classified
- sensitivity is machine-readable and enforced
- unclassified data is considered invalid

Implicit sensitivity assumptions are forbidden.

---

## Structural Constraints

- convenience-based logging and propagation is prevented
- data handling requires conscious classification

---

## Mechanic Boundary

This mechanic:
- governs data sensitivity semantics

This mechanic does **not**:
- define classification taxonomies
- replace legal interpretation

---

## Failure Modes

- classification exists but is ignored
- sensitivity is defined too broadly to be useful

