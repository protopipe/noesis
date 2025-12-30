# High Coupling, Low Fault Locality

## The Problem

In many systems, components are tightly coupled
while faults are poorly localized.

Small changes in one part of the system
can cause failures in seemingly unrelated areas.

As a result, the impact of a change is hard to predict,
and the source of a failure is hard to identify.

---

## Why This Happens

- Domain boundaries are unclear or eroded over time
- Shared state and implicit dependencies accumulate
- Integration happens late and across multiple layers
- Architectural constraints are undocumented or invisible
- Responsibility spans multiple teams without clear ownership

Coupling grows gradually,
while fault locality silently degrades.

---

## Observable Symptoms

- Minor changes trigger unexpected regressions
- Failures surface far away from their root cause
- Debugging requires cross-team investigation
- Tests fail without clear indication of what broke
- Teams become cautious about making changes

---

## Why This Blocks Fast Delivery and Learning

When coupling is high and fault locality is low:

- changes require extensive coordination
- root-cause analysis consumes disproportionate time
- teams delay releases to reduce perceived risk
- learning from failures is slow and expensive

Speed is limited by the cost of understanding impact.

---

## Why This Is a Systemic Problem

High coupling and low fault locality cannot be fixed locally.

They are the result of:
- long-term architectural drift
- organizational boundaries misaligned with system structure
- incremental decisions without global visibility

As long as failures cannot be clearly attributed,
organizations trade delivery speed for perceived safety,
and learning remains reactive instead of continuous.

