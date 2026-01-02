 Mechanic: One-Way Context Flow via Event-Carried State

## Intent

Reduce systemic coupling and process loops by enforcing one-way relationships between bounded contexts and transporting all required state across the boundary through events.

This mechanic exists to eliminate “reach-back” reads across context boundaries,
so that downstream contexts do not depend on upstream runtime availability,
data models, or interpretation logic.

---

## Problems Addressed

- High Coupling, Low Fault Locality
- Big Ball of Mud
- Integration Layer Lock-In
- Untestable Architecture
- Lost Opportunity Through Non-Scalable Change
- Coordination Over Clarity

---

## Use-Cases Enabled

- CTO: Context Map Built In
- CTO: Decouples Integration Platforms
- CTO: Scales Change, Not Throughput
- CTO: Reduces Risk
- CEO: Replaces Coordination with Shared Primitives
- Teams Make Local Decisions Without Global Drift

---

## Enforced Behavior

This mechanic enforces that:

- Bounded contexts communicate primarily through **one-way relationships**
- Cross-context dependencies are expressed as **events**, not synchronous reads
- Events carry the **minimum sufficient state** required by the downstream context
- Downstream contexts do not “reach back” into upstream contexts to rehydrate missing data
- Context boundaries remain stable even when upstream schemas evolve

If downstream logic depends on synchronous reads into upstream contexts,
this mechanic is considered bypassed.

---

## Structural Constraints

This mechanic introduces the following constraints:

- Events must be treated as **contracts** for carried state
- Upstream contexts must commit to producing stable event payload semantics
- Duplicate data across contexts is allowed and expected
- “Single source of truth” is bounded to each context, not global
- Process loops that require back-and-forth synchronization are discouraged and must be justified

These constraints intentionally trade storage duplication
for fault locality, autonomy, and evolvability.

---

## Mechanic Boundary

This mechanic:

- is responsible for enforcing **one-way dependency direction** between contexts
- defines event-carried state as the default integration mode
- supports elimination of process loops by design

This mechanic does **not**:

- define specific event infrastructure or tooling
- guarantee full business correctness without validation
- solve all eventual consistency concerns by itself
- replace the need for domain modeling and context boundary decisions

---

## Reference Implementation (Protopipe)

Protopipe’s reference implementation for this mechanic is expressed through:

- Context Map modeling as a first-class artifact in Noesis
- Explicit documentation of allowed dependency directions
- Example domain flow patterns used in Protopipe narratives

Reference implementation overview:

- Artifact(s): Context maps and example integration flows (text-based)
- Scope: enforce one-way dependency direction and event-carried state semantics
- What it proves: process loops can be eliminated by structural design, not coordination

If Protopipe cannot maintain clear one-way context flows in its own system,
the mechanic must be re-evaluated.

---

## Failure Modes

Typical failure modes include:

- Events become thin “IDs only”, forcing downstream reach-back reads
- Payloads become unstable and mirror upstream internal schemas
- “Temporary” synchronous calls become permanent integration dependencies
- Loop-heavy processes persist because teams optimize locally
- Integration logic accumulates outside bounded contexts (integration layer bloat)

Failure modes are observable through:
- frequent cross-context change coordination
- recurring integration test fragility
- outages propagating across contexts
- repeated “missing data” compensations

---

## Implementation Notes (Non-Canonical)

This mechanic may be implemented through:

- Domain events with explicit payload contracts
- Outbox patterns to ensure delivery consistency
- Contract testing for event schemas and semantics
- Versioned event payloads with backward-compatible evolution rules

---

## Related Mechanics

- Consumer Driven Contract Tests (CDCT)
- Explicit Decision Boundaries
- Review Environments (as isolation for change validation)

# Example: Insurance Domain One-Way Context Flow

## Contexts

- **Offer System** (bounded context)
  - owns: offers, applications (Offerte, Antrag)

- **Policy System** (bounded context)
  - owns: policies, contracts (Policen, Verträge)

## One-Way Relationship

Offer System → Policy System

## Event-Carried State

When an application becomes a contract candidate,
the Offer System emits an event carrying sufficient state for the Policy System.

Example intent-level event (not a schema):

- applicant identity (stable business identifier)
- product selection
- pricing basis snapshot
- risk assessment snapshot (if applicable)
- payment party / payer data (if required for policy issuance)
- effective date constraints
- references to immutable documents (terms, disclosures)

## Forbidden Reach-Back Reads

The Policy System must not require:

- synchronous reads into the Offer System to resolve payer details
- schema-coupled queries to reconstruct offer pricing
- process loops that require Offer System to “stay alive” for issuance

If additional information is required,
it must be delivered through a follow-up event
or modeled as a separate one-way process stage.

