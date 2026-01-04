# Mechanic: Composability over Convenience

## Intent

Prevent systemic complexity and hidden coupling by preferring small, specialized,
composable tools over large, integrated platforms.

This mechanic enforces architectural decomposability
as a prerequisite for scalability and change.

---

## Problems Addressed

- Big Ball of Mud
- High Coupling, Low Fault Locality
- Integration Layer Lock-In
- Lost Opportunity Through Non-Scalable Change

---

## Desired Outcomes Supported

- CTO: Scales Change, Not Throughput
- CTO: Reduces Architectural Risk
- Teams Evolve Systems Incrementally
- Organization Avoids Platform Bottlenecks

---

## Enforced Behavior

This mechanic enforces that:

- Tools and systems have a clearly defined responsibility
- Composition is preferred over centralization
- All-in-one platforms require explicit justification
- Replaceability is a selection criterion

If a system cannot be decomposed,
its adoption must be consciously defended.

---

## Structural Constraints

This mechanic introduces the following constraints:

- Integrated platforms face higher entry barriers
- Convenience-driven bundling becomes costly
- Responsibility boundaries must be explicit

These constraints intentionally limit short-term efficiency
to preserve long-term evolvability.

---

## Mechanic Boundary

This mechanic:

- defines architectural preference for small, focused tools
- enforces responsibility clarity
- supports fault locality and incremental change

This mechanic does **not**:

- prohibit platforms categorically
- mandate specific architectural styles
- guarantee simplicity by itself

---

## Reference Implementation (Protopipe)

Protopipe applies this mechanic through its Technology Radar
and internal architectural choices.

Reference implementation location:

[ProtopipeTechRadar](../../dist/technology/tech-radar.md)


The reference implementation demonstrates:
- preference for composable toolchains
- explicit skepticism toward monolithic platforms

If Protopipe itself relies on non-decomposable systems,
the mechanic must be re-evaluated.

---

## Failure Modes

Typical failure modes include:

- Platforms adopted for speed without exit strategy
- Decomposition postponed indefinitely
- “Temporary” centralization becoming permanent
- Tool sprawl without responsibility clarity

Failure modes are observable through growing coordination overhead
and reduced fault locality.

---

## Implementation Notes (Non-Canonical)

This mechanic may be implemented through:

- Architectural review criteria
- Tooling guidelines favoring composability
- Experimentation-friendly deployment models

Implementations may change
without altering the mechanic.

---

## Related Mechanics

- Explicit Technology Positioning
- Open Source as Default Learning Strategy

