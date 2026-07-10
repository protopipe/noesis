# Mechanic: No External Signal without Provenance

## Intent

This mechanic prevents external evidence from entering strategic reasoning as
anonymous or context-free data. It exists because external signals are often
expensive to collect, hard to verify, and easy to overtrust once they appear
inside a dashboard or decision record.

---

## Problems Addressed

- External Evidence Is Costly and Hard to Verify

---

## Desired Outcomes Supported

- Strategy can be challenged with external reality.
- Decisions can explain which evidence was available at the time.
- External evidence can be reused without losing its collection and confidence
  context.

---

## Enforced Behavior

This mechanic enforces that:

- every external signal carries source, timestamp, scope, and measurement
  context
- every external signal is distinguishable from internal telemetry
- every external signal preserves its confidence and verification status
- corrections and disputes are attached instead of silently replacing prior
  evidence
- provider reliability is evaluated in relation to the specific signal domain

If this behavior is not enforced, the mechanic is considered ineffective.

---

## Structural Constraints

- External data without provenance cannot be treated as decision evidence.
- A metric name alone is not enough to make two signals comparable.
- Provider trust cannot be assumed globally when reliability is topic-specific.
- Corrected external data must not erase the evidence state that shaped prior
  decisions.

Constraints are intentional.
They exist to prevent undesired behavior.

---

## Mechanic Boundary

This mechanic:

- is responsible for making external evidence attributable, contextual, and
  challengeable
- is responsible for preserving the difference between integrity, provenance,
  confidence, and truth
- explicitly does not decide which provider, marketplace, oracle, database, or
  blockchain technology should be used
- explicitly does not claim that external evidence becomes objectively true
  because provenance exists

---

## Reference Implementation (Protopipe)

This section documents **Protopipe's own reference implementation**
of the mechanic.

It exists to:
- demonstrate feasibility
- provide a working example
- support orientation within the Protopipe ecosystem
- enable "eat your own dogfood" validation

The reference implementation:

- is **not canonical**
- may evolve independently
- must not change the mechanic's intent
- must be removable without invalidating the mechanic

Reference implementation overview:

- Artifact(s): future Protopipe external evidence contract
- Scope: source identity, signal scope, timestamp, schema, confidence,
  verification status, correction history, and KPI relation
- What it proves: external evidence can be connected to strategic learning
  without pretending that integration equals truth

If the reference implementation fails in practice,
the mechanic itself must be re-evaluated.

---

## Failure Modes

- External data is imported as a plain value without source or method.
- Provider reputation is treated as global instead of topic-specific.
- Corrections overwrite history.
- Confidence values become decorative and do not affect decision language.
- A technical integrity proof is mistaken for proof that the data is true.

Failure modes must be observable.

---

## Implementation Notes (Non-Canonical)

Possible downstream realizations include curated provider integrations,
signed data feeds, audit trails, data marketplaces, oracle networks,
content-addressed storage, access-control systems, and dispute mechanisms.

All content here is explicitly non-canonical.

---

## Related Mechanics

- None yet
