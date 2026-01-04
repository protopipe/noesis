# Protopipe Noesis

**Canonical reference model of Protopipe.**

Noesis contains the shared facts, constraints, relations, and language
that define how Protopipe reasons about problems, outcomes, and structure.

No decisions are made here.
All decisions are derived *outside* this repository
and can be validated *against* it.

---

## What Noesis is

Noesis is the **canonical reasoning space** of Protopipe.

It contains:
- the purpose and framing (*why*)
- the shared language (*how we think and speak*)
- acknowledged problems
- stakeholder-bound desired outcomes
- global mechanics that encode trade-offs and consequences
- capabilities the platform must be able to provide

Everything in Noesis is:
- intentional
- reviewable
- versioned
- stable enough to reason about

If something is present here, it is assumed to be canonical.

---

## What Noesis is not

Noesis is **not**:

- a backlog or roadmap
- a list of features
- a set of decisions
- an architecture of concrete systems
- an organizational chart
- a customer-specific solution space

Implementation, selection, prioritization, and trade-off decisions
are produced **outside Noesis** (e.g. in `dist/`)
using Noesis as a reference and constraint system.

---

## Canonical vs. Decisional

**Noesis is declarative, not operative.**

- Noesis defines *what is true*, *what matters*, and *what follows if X is chosen*.
- It does **not** decide *what to choose*.

Decisions:
- are always contextual
- are always local
- are always reversible
- must always be explainable by referencing Noesis

> If something feels like a decision, it does not belong in Noesis.

---

## Mechanics and Desired Outcomes

Desired Outcomes are the **strategic fix stars** of Protopipe.
They express *what different stakeholders ultimately want to achieve*.

Mechanics are **global, canonical relation rules** derived from recurring
conflicts between desired outcomes.

They function like **directional signposts**:

- They do not choose a direction.
- They describe consequences of choosing one direction over another.
- They remain valid even when the desired outcome is temporarily obscured,
  in conflict, or locally unreachable.

Mechanics:
- are not solutions
- are not patterns
- are not best practices
- remove options instead of adding features

They are referenced during decision-making,
but never applied inside Noesis itself.

---

## Capabilities

Capabilities describe **what the Protopipe platform must be able to do**
in order to address acknowledged problems
and enable desired outcomes.

Capabilities:
- are solution-neutral
- are not features
- are not implementations
- serve as entry points for complexity analysis

When a capability is explored in depth,
its internal complexity, invariants, and structural cuts
are derived locally from that capability.

---


## About Relationships

Noesis intentionally does not maintain explicit relationships
between its elements.

Problems, desired outcomes, mechanics, and capabilities
are stored as **atomic, canonical facts**.

Relationships between them are:
- derived when needed
- context-specific
- generated via prompts
- explained, not assumed

This avoids:
- manual relationship maintenance
- hidden assumptions
- outdated dependency graphs

Prompts are the primary mechanism
for discovering, explaining, and challenging relationships.

---

## Repository structure (canonical reading order)

The numbering defines an **intentional reading and reasoning order**.
It reflects *conceptual dependency*, not execution order.

### 01_why
Purpose, vision, Golden Circle, and non-negotiable framing.

Why Protopipe exists.

---

### 02_language
Canonical terminology and definitions.

How we think, speak, and avoid ambiguity.

---

### 03_culture
Cultural principles and mental models.

How behavior is shaped implicitly.
No rules, no enforcement logic.

---

### 04_stakeholders
Stakeholders as responsibility holders and decision perspectives.

Not personas. Not users. Not org charts.

---

### 05_problems
Explicitly acknowledged systemic problems and tensions.

Problems describe *what is broken or insufficient* — never solutions.

---

### 06_desired-outcomes
Desired outcomes bound to stakeholders.

Outcomes describe *what must become true* if problems are addressed.
They are not implementations.

---

### 07_mechanics
Global, canonical mechanics.

Mechanics encode enforced trade-offs and consequences.
They apply across architecture, organization, and process.

No decisions live here.

---

### 08_capabilities
Capabilities of the Protopipe platform.

They describe *what the platform must be able to enable*,
independent of how it is implemented.

---

### 09_identity
Identity, design language, and self-description.

This layer provides shared semantics and recognition,
not constraints or rules.

---

### 10_contrasts
Deliberate contrasts to other tools, methods, and approaches.

Used to sharpen understanding through comparison.
No new rules are introduced here.

---

### 11_experiences
Narrative, experiential descriptions of how Protopipe is encountered.

Used for understanding, not for derivation or constraint.

---

## AI context usage

Noesis is designed to be consumed by humans **and machines**.

Subsets of this repository may be used as:
- AI context packs
- prompt grounding
- constraint sources
- terminology alignment

AI-generated outputs are expected to:
- reference Noesis explicitly
- respect its constraints
- never invent facts or rules not present here

---

## Contribution rules (non-negotiable)

- All changes via pull request
- Small, intention-revealing diffs
- No implementation detail
- No decisions
- No tool- or vendor-specific content

If something must be debated,
debate it **before** it enters Noesis.

Noesis gains strength through constraint.

