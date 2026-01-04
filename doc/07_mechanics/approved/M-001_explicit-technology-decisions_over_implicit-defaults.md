# Mechanic: Explicit Technology Positioning

## Intent

Prevent implicit, accidental, or politically driven technology adoption by enforcing a shared, explicit reference for technology selection.

This mechanic exists to make technology choices **visible, discussable, and revisable** without re-negotiating fundamentals for every team or decision.

---

## Problems Addressed

- Implicit Knowledge and Fragmented AI Contexts
- Opaque Decision Logic
- Responsibility Without Control
- Shadow IT and Tool-by-Accident Adoption

---

## Desired Outcomes Supported

- CTO: Scales Change, Not Throughput
- CTO: Reduces Architectural Risk
- Organization Maintains Canonical AI Contexts
- Teams Make Local Decisions Without Global Drift

---

## Enforced Behavior

This mechanic enforces that:

- Technology choices are always made against an **explicit, shared reference**
- “Not decided yet” is an explicit and visible state
- Implicit or silent adoption of new technologies is not acceptable
- Deviations from the stated technology position require conscious justification

If a technology is used without being positioned,
this mechanic is considered bypassed.

---

## Structural Constraints

This mechanic introduces the following constraints:

- Teams cannot silently introduce new technologies
- Convenience-driven adoption becomes costly
- Popularity or vendor pressure alone is insufficient justification
- Local optimization is bounded by global intent

These constraints are intentional.
They trade short-term convenience for long-term coherence.

---

## Mechanic Boundary

This mechanic:

- is responsible for making **technology intent explicit**
- defines what is **preferred, tolerated, or avoided**
- provides a shared reference for teams and AI systems

This mechanic does **not**:

- prescribe concrete implementations
- perform market analysis or technology comparisons
- guarantee correctness of a technology choice
- replace architectural judgment

---

## Reference Implementation (Protopipe)

Protopipe provides a reference implementation of this mechanic
to validate feasibility and to apply the “eat your own dogfood” principle.

The reference implementation is:

- **Non-canonical**
- Subject to iteration and replacement
- Intended as a concrete, working example

Reference implementation location:

[ProtopipeTechRadar as markdown](../../dist/technology/tech-radar.md)


Reference implementation purpose:

- Makes technology intent explicit and reviewable
- Serves as a shared orientation point for teams
- Demonstrates how this mechanic can be applied in practice

If the reference implementation no longer supports the intent
or enforced behavior of this mechanic,
the mechanic itself must be re-evaluated.

---

## Failure Modes

Typical failure modes include:

- The technology position exists but is not consulted
- Entries are too vague to be actionable
- The artifact becomes a political battleground
- The position is treated as immutable dogma
- Teams work around the position instead of challenging it

All failure modes are observable through divergence
between stated intent and actual usage.

---

## Implementation Notes (Non-Canonical)

This mechanic may also be implemented through:

- Alternative catalog or registry formats
- Policy-driven technology allow/deny lists
- AI-assisted technology selection constraints
- Governance processes integrated into delivery pipelines

Concrete implementations may change
without changing the mechanic itself.

---

## Related Mechanics

- Open Source as Default Learning Strategy
- Composability over Convenience
- Explicit Decision Boundaries
