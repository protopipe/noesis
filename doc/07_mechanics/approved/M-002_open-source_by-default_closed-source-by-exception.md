# Mechanic: Open Source as Default Learning Strategy

## Intent

Reduce systemic risk and hidden dependencies by defaulting technology choices to systems that can be fully inspected, understood, and reasoned about.

This mechanic treats learning speed and transparency as primary decision criteria,
not ideology or cost optimization.

---

## Problems Addressed

- Implicit Knowledge and Fragmented AI Contexts
- Opaque Decision Logic
- Responsibility Without Control
- Untestable Architecture
- Integration Layer Lock-In

---

## Desired Outcomes Supported

- CTO: Reduces Architectural Risk
- CTO: Decouples Integration Platforms
- Organization Maintains Canonical AI Contexts
- Teams Diagnose and Fix Problems Autonomously

---

## Enforced Behavior

This mechanic enforces that:

- Open source technologies are the default choice
- Closed source technologies require explicit justification
- Debuggability and inspectability are decision criteria
- “Vendor guarantees” do not replace understanding

If a closed system is adopted without explicit reasoning,
this mechanic is considered bypassed.

---

## Structural Constraints

This mechanic introduces the following constraints:

- Certain “convenient” proprietary solutions become harder to justify
- Vendor lock-in must be made explicit
- Black-box systems are treated as risk factors

These constraints intentionally trade short-term convenience
for long-term learning capability and resilience.

---

## Mechanic Boundary

This mechanic:

- defines a default bias toward open systems
- enforces transparency as a selection criterion
- supports AI-assisted reasoning through accessible knowledge

This mechanic does **not**:

- forbid proprietary technology categorically
- guarantee superior performance or cost
- replace architectural evaluation

---

## Reference Implementation (Protopipe)

Protopipe applies this mechanic through its Technology Radar
and technology selection guidance.

Reference implementation location:

[ProtopipeTechRadar](../../dist/technology/tech-radar.md)


The reference implementation demonstrates:
- explicit preference for open source technologies
- documented justification for any closed alternatives

If Protopipe itself cannot operate under this constraint,
the mechanic must be re-evaluated.

---

## Failure Modes

Typical failure modes include:

- “Temporary” closed solutions becoming permanent
- Open source being treated as ideology instead of risk control
- Justifications copied without understanding
- Teams avoiding transparency for speed

All failure modes are observable in post-incident analysis.

---

## Implementation Notes (Non-Canonical)

This mechanic may be implemented through:

- Technology catalogs with explicit open/closed classification
- Procurement rules tied to learning and transparency criteria
- AI context constraints favoring inspectable systems

Implementations may vary without changing the mechanic.

---

## Related Mechanics

- Explicit Technology Positioning
- Composability over Convenience

