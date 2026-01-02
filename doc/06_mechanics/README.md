# Mechanics

This directory contains the **canonical mechanics of Protopipe**.

Mechanics are the structural core of Protopipe.
They encode **non-negotiable consequences** that shorten feedback,
reduce systemic risk, and make certain forms of work unavoidable
while making others impossible or costly.

Mechanics are **not solutions**, **not patterns**, and **not best practices**.
They are enforced trade-offs.

---

## What a Mechanic Is

A mechanic exists to enforce a structural consequence.

A mechanic:

- shortens feedback loops
- removes options instead of adding features
- encodes a deliberate trade-off
- forces behavior through structure, not discipline
- hurts a little — by design

If a rule can be ignored without consequence,
it is not a mechanic.

---

## The Core Principle

> **Mechanics shorten feedback by enforcing consequences.**  
> They do not describe solutions.  
> They remove options.

This principle is the foundation for all mechanics in Protopipe.

---

## Dependency Direction (Non-Negotiable)

Mechanics sit in a strict dependency chain:

```
Problem
↓
Use-Case
↓
Mechanic
↓
Implementation
```


- Problems describe tensions and pain.
- Use-Cases describe desired, observable outcomes.
- Mechanics enforce structural consequences.
- Implementations are replaceable realizations.

**Noesis ends at the Mechanic.**  
Implementations must never flow back.

---

## Naming Convention (Mandatory)

The **name of a mechanic is part of the mechanic**.
It expresses the enforced trade-off explicitly.

All mechanics **must** use **one of the following three naming forms**.
No other forms are allowed.

### 1. `X over Y` — Explicit Trade-off

Use this form when a mechanic enforces a clear preference
between two competing approaches.

**Meaning**  
X is structurally preferred.  
Y is still possible, but discouraged or costly.

**Examples**

- *Composability over Convenience*
- *Observation over Orchestration*
- *Eventual Consistency over Global Process Engines*

---

### 2. `X by Default, Y by Exception` — Default with Justification

Use this form when a behavior is allowed,
but only with explicit justification.

**Meaning**  
X is the assumed baseline.  
Y requires conscious, explicit reasoning.

**Examples**

- *Eventual Consistency by Default, Atomicity by Exception*
- *Open Source by Default, Closed Source by Justification*

---

### 3. `No X without Y` — Hard Constraint

Use this form when a behavior must never occur
unless a prerequisite is fulfilled.

**Meaning**  
X is forbidden unless Y is present.

**Examples**

- *No Process Step without Testable Outcome*
- *No Cross-Context Read without Event-Carried State*
- *No Release without Observable Feedback*

---

### Naming Guidance (Important)

- If the name does **not** clearly express loss or constraint,
  it is not a valid mechanic name.
- If the name sounds comfortable or neutral,
  it is likely a pattern or guideline — not a mechanic.
- The name should make the trade-off obvious
  even without reading the document.

If the name does not “hurt” a little,
rework it.

---

## Mechanics vs. Patterns vs. Features

To avoid dilution, the following distinctions apply:

- **Mechanic**  
  Enforces a consequence. Removes options.

- **Pattern**  
  Suggests a recurring solution. Optional.

- **Feature**  
  Describes functionality or capability.

Only mechanics belong in this directory.

Patterns, features, tools, and implementations
must live elsewhere (e.g. `dist/`, reference implementations).

---


## Reference Implementations (Dogfooding)

Every mechanic **may** provide a reference implementation.

Reference implementations are:

- explicitly **non-canonical**
- intentionally minimal
- used to **experience the enforced constraints in practice**
- a means to apply the “eat your own dogfood” principle

Their purpose is **not** to prove technical correctness,
completeness, or scalability.

Their sole purpose is to validate the **consequence** of a mechanic:

- Are options actually removed?
- Is the constraint felt in daily work?
- Does feedback become shorter or clearer?
- Is the trade-off tolerable?

A mechanic candidate **must not** be promoted to approved status
unless its constraints have been experienced
through a reference implementation.

Dogfooding is **necessary, but not sufficient**.

If a reference implementation fails,
this does **not** automatically invalidate the mechanic.
However, the mechanic **must be questioned**.

Implementation must never justify the mechanic.
The mechanic must justify the implementation.


---

## Candidate vs. Approved Mechanics

Not every good idea is immediately canonical.

Mechanics may exist in two states:

- **Candidates**  
  Under evaluation, consolidation, or refactoring

- **Approved**  
  Stable, invariant, and accepted as canonical

Candidates are expected to change.
Approved mechanics are expected to endure.

---

## Final Rule

If a mechanic does not:

- shorten feedback
- enforce a trade-off
- remove options
- create visible consequences

then it does not belong here.

Be strict.
Protopipe gains strength through constraint.

