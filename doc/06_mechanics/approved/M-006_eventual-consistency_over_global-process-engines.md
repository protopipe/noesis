# Mechanic: Eventual Consistency by Default, Explicit Atomicity by Exception

## Intent

Prevent systemic coupling and coordination overhead by defaulting to eventual consistency and local process ownership, while requiring **explicit, domain-owned justification** for any form of global or synchronous atomicity.

This mechanic exists to avoid architectures where perceived control is achieved
through centralized CRM systems or BPMN-driven global process engines,
instead of through clear ownership, explicit invariants, and observable outcomes.

---

## Problems Addressed

- Big Ball of Mud
- High Coupling, Low Fault Locality
- Integration Layer Lock-In
- Coordination Over Clarity
- Responsibility Without Control
- Untestable Architecture
- Strategy as Intent, Not Hypothesis

---

## Use-Cases Enabled

- CTO: Scales Change, Not Throughput
- CTO: Decouples Integration Platforms
- CTO: Reduces Architectural Risk
- CEO: Replaces Coordination with Shared Primitives
- Organization Maintains Canonical AI Contexts
- Teams Operate Autonomously with Clear Ownership

---

## Enforced Behavior

This mechanic enforces that:

- **Eventual consistency is the default integration model**
- Business processes are owned and executed **locally within bounded contexts**
- Cross-context progress is coordinated through **events**, not global state machines
- Global CRM or BPMN engines must not act as authoritative process controllers
- **Strong consistency or atomicity across contexts requires explicit justification**
- Atomic behavior must be owned by the **domain**, not by infrastructure tooling

If global orchestration or synchronous coordination is introduced
without explicit domain justification,
this mechanic is considered bypassed.

---

## Structural Constraints

This mechanic introduces the following constraints:

- No single system has full, synchronous control over end-to-end processes
- Intermediate and inconsistent states must be modeled explicitly
- Compensating actions replace rollback-based global coordination
- Observability focuses on signals and outcomes, not control flow
- Atomicity is treated as a **scarce architectural resource**

These constraints intentionally trade perceived control
for scalability, fault locality, and evolvability.

---

## Mechanic Boundary

This mechanic:

- defines eventual consistency as the **default assumption**
- enforces explicit ownership of any atomic behavior
- prevents infrastructure from silently becoming a process authority

This mechanic does **not**:

- forbid strong consistency where it is a true domain invariant
- eliminate the need for process visualization or analysis
- prohibit local workflow engines within a bounded context
- guarantee business correctness without validation

---

## Reference Implementation (Protopipe)

Protopipe applies this mechanic by:

- avoiding global BPMN or CRM-based process controllers
- modeling workflows as event-driven state transitions
- requiring explicit justification for any cross-context atomicity
- expressing atomic steps as domain-owned invariants, not engine logic

Reference implementation overview:

- Artifact(s): Context maps, process swimlanes, event flow narratives
- Scope: enforce default eventual consistency with explicit atomic exceptions
- What it proves: complex business processes remain controllable without central engines

If Protopipe itself relies on implicit global orchestration
to remain operable,
the mechanic must be re-evaluated.

---

## Failure Modes

Typical failure modes include:

- “Temporary” global process engines becoming permanent authorities
- Atomicity justified by convenience rather than domain necessity
- Events treated as notifications instead of state carriers
- Teams assuming synchronous guarantees that do not exist
- Compensating logic scattered, implicit, or undocumented

Failure modes are observable through:

- recurring cross-team coordination bottlenecks
- brittle end-to-end testing requirements
- outages propagating across multiple domains
- unclear ownership of business invariants

---

## Implementation Notes (Non-Canonical)

This mechanic may be implemented through:

- event-driven architectures with explicit state transitions
- saga-like patterns without central orchestration
- domain-local workflow engines
- observability pipelines tracking eventual completion
- explicit documentation of atomic domain invariants

---

## Related Mechanics

- One-Way Context Flow via Event-Carried State
- Testable Subprocess Partitioning into Release Units
- Explicit Technology Positioning

