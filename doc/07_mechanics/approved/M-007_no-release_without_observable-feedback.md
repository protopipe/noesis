# Mechanic: No Release without Observable Feedback

## Mechanic Statement

A release without **pre- or in-flight observable feedback**
creates blind execution and blocks learning.

This mechanic enforces that feedback is an **integral part of the release process**,
not a post-release activity.

A release is considered complete
only if feedback has already been produced or validated.

---

## Intended Outcome

Releases become **validated transitions**, not delivery endpoints.

Teams are able to:

- detect quality and integration issues **before or during release**
- abort or stop releases based on feedback signals
- validate assumptions as part of “Definition of Done”
- distinguish clearly between experiments and releases

Feedback is fast, attributable, and blocks completion if missing.

---

## Enforced Actions

To achieve this outcome, the following is mandatory:

- Observable feedback signals must exist **before release completion**
- Feedback must be evaluated **during the release process**
- A release is **not complete** until feedback criteria are met
- Release pipelines must fail or block if feedback is missing
- Experiments must emit feedback **while being deployed or exposed**

Feedback is part of the release contract,
not an optional follow-up activity.

---

## Forbidden or Discouraged Actions

As a consequence, the following becomes impossible or intentionally costly:

- Treating observability as post-release monitoring
- Declaring a release “done” before feedback exists
- Relying on delayed production signals for release validation
- Counting feature-branch deployments as releases
- Completing releases without passing quality or experiment gates

A deployment without in-flight feedback
is not a release.

---

## Problems Addressed

This mechanic directly reduces the following canonical problems:

- Decisions Without Feedback
- Feature Output over Outcome
- Analysis as a Side Effect
- Coordination over Clarity
- Pseudo Team Autonomy

---

## Desired Outcomes Supported

This mechanic structurally enables the following use-cases:

- CTO reduces delivery risk without central control
- CPO validates hypotheses continuously
- Teams release autonomously without coordination
- Organizations shift learning left without quality loss

---

## Scope & Boundary

This mechanic applies at:

- release governance level
- CI/CD and delivery pipeline level
- experimentation and quality gate level

This mechanic does **not**:

- mandate release frequency
- prescribe specific quality gates
- prescribe tooling or metrics
- forbid experimentation or feature-branch deployments

Experiments may run without being releases.
Releases may not complete without feedback.

---


## Reference Implementation (Dogfooding)

Protopipe applies this mechanic by:

- defining release completion as part of “Definition of Done”
- enforcing quality and experiment gates in CI/CD
- treating failing gates as release blockers
- separating experiments from releases explicitly

Feedback is evaluated **before or during release**,
never exclusively after.

If Protopipe cannot complete releases under this constraint,
the mechanic must be questioned.

---

## Failure Modes

This mechanic typically fails when:

- feedback is added after release instead of before
- signals exist but are not actionable
- ownership of metrics is unclear
- teams optimize dashboards instead of decisions
- observability is treated as infrastructure, not responsibility

Failures must be observable.
Silent failure invalidates the mechanic.

---

## Related Mechanics

- Composability over Convenience
- Eventual Consistency over Global Process Engines
- No Process Step without Stateless, Testable I/O
- Process Steps Confined to Release Units

