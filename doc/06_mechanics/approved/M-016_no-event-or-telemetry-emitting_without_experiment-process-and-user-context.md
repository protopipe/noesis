# Mechanic: No Event or Telemetry Emitting without Experiment, Process, and User Context

## Intent

Prevent non-attributable signals and post-hoc interpretation
by enforcing complete contextual attribution
at the point where events and telemetry are emitted.

---

## Problems Addressed

- Metrics Without Causality
- Decisions Without Feedback
- Analysis as a Side Effect
- Opaque Decision Logic

---

## Use-Cases Enabled

- CPO evaluates experiments without attribution disputes
- CTO trusts telemetry as decision-grade signals
- CFO reasons about impact instead of reports
- Teams correlate behavior, process, and outcome deterministically

---

## Enforced Behavior

This mechanic enforces that:

- no event or telemetry signal may be emitted
  without explicit:
  - experiment context
  - process context
  - user context
- context must be attached at emission time
  and propagated unchanged downstream
- signals missing required context are considered invalid
  and must not be evaluated

If context is incomplete or implicit,
the signal is structurally unusable.

---

## Structural Constraints

This mechanic introduces the following constraints:

- telemetry without attribution is forbidden
- post-hoc enrichment or inference is not acceptable
- signals cannot be “interpreted into meaning” later
- evaluation pipelines must reject incomplete signals

These constraints intentionally trade
emission convenience for causal clarity
and decision integrity.

---

## Mechanic Boundary

This mechanic:
- governs the **validity of emitted signals**
- enforces attribution completeness at the source

This mechanic does **not**:
- define which metrics or KPIs exist
- prescribe telemetry formats or transport
- define tracing, logging, or observability tooling
- interpret or aggregate signals

---

## Reference Implementation (Protopipe)

Protopipe applies this mechanic by:

- defining a canonical context set
  for experiment, process, and user attribution
- hydrating all events and telemetry
  with this context at creation time
- rejecting or ignoring signals
  that violate attribution completeness

The reference implementation is non-canonical
and exists to validate that enforcing context completeness
eliminates metric disputes and shortens feedback loops.

If Protopipe emits or evaluates signals
without full context,
this mechanic must be re-evaluated.

---

## Failure Modes

This mechanic typically fails when:

- context is added downstream instead of at emission
- different systems interpret context differently
- “temporary” telemetry bypasses attribution
- dashboards compensate for missing causality
- signals are evaluated despite missing context

Failure is observable
when experiment or process outcomes
cannot be attributed unambiguously.

---

## Related Mechanics

- No Experiment without Explicit Testgroup Assignment
- No User Assignment without Single-Experiment Exposure
- Event-Carried Versioning over Best-Effort Consistency
- No Release without Observable Feedback

