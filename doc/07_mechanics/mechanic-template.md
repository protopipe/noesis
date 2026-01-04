# Mechanic Template

This template defines the canonical structure for mechanics in Protopipe Noesis.

A mechanic describes **structural reinforcement**, not a solution or tool.
It must be independent of any specific implementation,
while allowing concrete realizations to exist downstream.

The dependency direction is strict:

```
Problem
↓
Desired Outcome (stakeholder-bound)
↓
Mechanic
↓
Decision (outside Noesis)
↓
Implementation
```

Noesis ends at the mechanic.
Implementations never flow back.

---

# Mechanic: <Name>

## Intent

<One or two sentences describing why this mechanic exists.
What structural problem does it address?>

---

## Problems Addressed

<List the canonical problems this mechanic reduces or resolves.>

- <Problem name>
- <Problem name>

---

## Desired Outcomes Supported

<List the use-cases that become reliably possible because of this mechanic.>

- <Use-case name>
- <Use-case name>

---

## Enforced Behavior

<Describe what this mechanic makes unavoidable.
This section defines the invariant.>

This mechanic enforces that:

- <Invariant / forced behavior>
- <Invariant / forced behavior>

If this behavior is not enforced,
the mechanic is considered ineffective.

---

## Structural Constraints

<Describe the constraints introduced by this mechanic.
What becomes impossible, discouraged, or expensive?>

- <Constraint>
- <Constraint>

Constraints are intentional.
They exist to prevent undesired behavior.

---

## Mechanic Boundary

<Define responsibility and non-responsibility.>

This mechanic:
- is responsible for <X>
- explicitly does not address <Y>

---

## Reference Implementation (Protopipe)

This section documents **Protopipe’s own reference implementation**
of the mechanic.

It exists to:
- demonstrate feasibility
- provide a working example
- support orientation within the Protopipe ecosystem
- enable “eat your own dogfood” validation

The reference implementation:

- is **not canonical**
- may evolve independently
- must not change the mechanic’s intent
- must be removable without invalidating the mechanic

Reference implementation overview:

- Artifact(s): <name / location>
- Scope: <what it covers>
- What it proves: <why this implementation exists>

If the reference implementation fails in practice,
the mechanic itself must be re-evaluated.

---

## Failure Modes

<Describe how this mechanic typically fails or gets bypassed.>

- <Failure mode>
- <Failure mode>

Failure modes must be observable.

---

## Implementation Notes (Non-Canonical)

<Optional examples of alternative implementations.>

This section may include:
- other possible realizations
- variations seen in the field
- trade-offs between approaches

All content here is explicitly non-canonical.

---

## Related Mechanics

<Optional cross-references.>

- <Mechanic name>
- <Mechanic name>

