# Glossary

This glossary defines the **canonical language of Protopipe**.

Terms listed here have a **specific meaning** within Protopipe.
If a term is used differently elsewhere, the Protopipe definition takes precedence.

Shared language is a design constraint.
Ambiguous language creates hidden coupling.

---

## Augmented Product Development Platform (APDP)

An Augmented Product Development Platform (APDP) is a system that augments
an organization’s ability to make product, architectural, and strategic
decisions under uncertainty by embedding feedback, measurement, and
responsibility directly into the development process.

An APDP does not replace product development.
It augments decision-making by making assumptions explicit, measurable,
and revisable.

APDP is the **capability layer** in the Protopipe narrative model.

It sits between:
- **Use-Cases** (observable outcomes), and
- **Mechanisms** (structural reinforcements such as Review Environments or CDCT).

APDP is not a feature list.

---

## Protopipe Portfolio (ProtoPortfolio)

The ProtoPortfolio is Protopipe’s portfolio model.

It connects:
- strategy
- hypotheses
- experiments
- outcomes

Unlike traditional portfolios, it does not track projects or initiatives.
It tracks **decisions under uncertainty** and their measurable effects.

The ProtoPortfolio is the operational representation of strategy.

---

## Strategy

Strategy in Protopipe is not a roadmap.

Strategy is a **set of explicit hypotheses** about how desired outcomes can be achieved,
combined with a commitment to measure and revise them.

A strategy without feedback is opinion.

---

## Golden Circle

The Golden Circle defines:

- **WHY** — the non-negotiable purpose
- **HOW** — the guiding principles and constraints
- **WHAT** — the concrete implementations (allowed to be fuzzy)

In Protopipe:
- WHY must be sharp
- HOW must be clear
- WHAT may remain uncertain

---

## Hypothesis

A hypothesis is an explicit assumption that can be falsified through measurement.

In Protopipe, hypotheses replace feature commitments.

A hypothesis is valuable only if:
- it is measurable
- it influences decisions
- it can be discarded

---

## Experiment

An experiment is the operationalization of a hypothesis.

It defines:
- what is changed
- what is measured
- how success or failure is detected

Experiments are always run against production,
using mechanisms such as test groups or A/B testing.

An experiment ends when a decision is made —
not when certainty is reached.

---

## KPI Tree

The KPI Tree is a structured representation of cause-and-effect relationships
between actions and outcomes.

It connects:
- strategic goals
- operational metrics
- technical signals

The KPI Tree provides a shared language between business and engineering.

---

## Feature

A feature is a **user-visible behavior** of the system.

In Protopipe, a feature is not defined by implementation,
but by observable behavior and impact.

Features are described in **domain language**.

A feature is defined by one or more **rules**.
Each rule is clarified by one or more **examples**.

This structure follows the principles of Behavior-Driven Development (BDD),
where examples serve as executable specifications.

---

## Feature Step

A Feature Step is the smallest meaningful unit of user or system interaction.

Feature Steps are:
- semantically meaningful
- visible
- verifiable

Each Feature Step has a clear **state**, derived from verification:

- **Not implemented**
- **Not successful**
- **Successful (green)**

If all Feature Steps of a feature are **green**,
the feature is functionally ready to be shipped.

Feature Steps replace story points and man-day estimation.

They enable:
- flow-based planning
- incremental delivery
- automatic throughput measurement via feature coverage

---

## BDD (Behavior-Driven Development)

BDD is a practice for describing system behavior
using examples and shared language.

In Protopipe, BDD is primarily a **communication tool**, not a testing technique.

---

## Cucumber

Cucumber is used as the executable language of BDD.

It serves as:
- verified documentation
- feature catalog
- contract between domain and implementation

Cucumber features are expected to be readable by non-developers.

---

## Context Map

A Context Map describes the boundaries and relationships
between bounded contexts in a system.

In Protopipe, context maps are:
- explicit
- versioned
- owned

They prevent architectural drift and hidden coupling.

---

## Swimlanes

Swimlanes are Protopipe’s core visual metaphor.

They are used to visualize not only processes,
but **responsibility, ownership, and decision boundaries**.

Swimlanes are used to:
- make responsibility visible
- represent domain boundaries
- untangle processes
- reveal where decisions are made

They show *who owns what*,  
*how work and decisions flow*,  
and *where accountability lives*.

---

## Render Function Artifact (RFA)

A **Render Function Artifact (RFA)** is the core rendering unit of the Protopipe
frontend architecture.

An RFA is a deployable artifact exposing a pure render function:

```
render(data, context) -> html (+meta)
```

Characteristics:
- deterministic output
- no side effects (except telemetry)
- server-side executable (SSR-first)
- internally technology-agnostic
- locally testable without backend dependencies

RFAs define the **hard integration boundary** between the platform
(routing, experiments, caching) and team-owned frontend implementations.

---

## Template

A **Template** defines the static structural layout of a page.

Properties:
- immutable per version
- contains named Slots
- contains no business logic
- independent of concrete content

Templates define layout and structure, not behavior or data sources.

---

## Slot

A **Slot** is a named insertion point within a Template.

Properties:
- uniquely named
- contractually defined
- filled at runtime by a Fragment (via an RFA)
- experiment-aware

Slots are stable architectural anchors enabling controlled experimentation and
incremental migration.

---

## Fragment

A **Fragment** is the concrete content rendered into a Slot.

Properties:
- rendered by an RFA
- owned by a single team
- focused on a specific business concern
- independently versioned and deployable

A Fragment is not a page, but a composable part of a page.

---

## Page

A **Page** is the smallest deliverable frontend unit.

A Page consists of:
- a Template
- Slot definitions
- Fragment-to-Slot assignments
- optional Experiment configuration

Pages are intentionally larger than Fragments to ensure delivery stability and
experiment isolation.

---

## Experiment (Frontend)

An **Experiment** is a first-class architectural concept, not a feature flag.

Properties:
- routes to artifact implementations
- overrides Fragment assignments for Slots
- assigns users to Test Groups
- is time-bounded and measurable

Experiments are configured at platform level, not implemented inside components.

---

## Artifact-based Experiment

An **Artifact-based Experiment** replaces feature toggles in product code.

Instead of conditional logic, experiments route to different artifacts
(e.g. different RFAs), often built from feature branches.

Benefits:
- no toggle cleanup
- clear Definition of Done at merge time
- reproducible experiment results

---

## Atomic Design (Reference Model)

Protopipe aligns with Atomic Design as a structural reference, not as a dogma.

- **Atoms**: basic UI elements (e.g. button, input)
- **Molecules**: combinations of atoms
- **Organisms**: complex UI blocks
- **Templates**: page layouts with Slots
- **Pages**: concrete deliverables

Atomic Design describes structure; Protopipe adds ownership, versioning,
and experimentation semantics.

---

## Click Prototype

A **Click Prototype** is an interactive UI prototype that:
- is visually realistic
- supports navigation and interaction
- does not require productive backend systems

In Protopipe, Click Prototypes are often built from the same RFAs and
can be promoted to production without rewriting.

---

## Consumer Driven Contract Tests (CDCT)

**Consumer Driven Contract Tests (CDCT)** validate interfaces between
frontend consumers and backend providers.

Properties:
- contracts are defined by the consumer
- providers are validated against those contracts
- enable shift-left development
- reduce integration risk

In Protopipe, CDCTs also apply to RFAs and frontend-backend boundaries.

---

## Edge-Side Excludes (ESE)

**Edge-Side Excludes** are a migration mechanism.

Principle:
- existing HTML is loaded from an origin
- defined sections are removed
- replaced with Protopipe-managed Fragments

ESEs enable incremental migration and safe experimentation and are
explicitly limited to avoid excessive complexity.

---

## Hydration (Isomorphic Rendering)

**Hydration** enriches server-rendered HTML with optional client-side
interactivity.

In Protopipe:
- Templates remain unchanged
- RFAs may provide hydration support
- hydration is optional and use-case-driven

---

## Storybook (Central)

Storybook is the central hub for:
- developing Fragments and RFAs
- documenting UI contracts
- enabling collaboration with non-technical stakeholders

In Protopipe, Storybook serves as a contractual and architectural tool,
not a purely visual playground.

---

## Shift Left (Frontend)

**Shift Left** means moving validation, testing, and integration earlier
in the development lifecycle.

Applied to frontend architecture:
- RFAs are locally executable
- CDCTs replace shared integration environments
- Click Prototypes and Storybook replace late UI reviews

---

## Ownership (Frontend)

Ownership in Protopipe is multi-dimensional:

- Teams own Fragments and RFAs
- The platform owns Templates, routing, and experiments
- Product and management roles own experiment goals and KPIs

This separation enables organizational and technical scaling.

## Context

Context describes the set of assumptions, constraints, and boundaries
within which a decision is made.

In Protopipe, context is explicit and versioned.
Implicit context is treated as risk.

---

## Decision

A decision is a commitment to act under uncertainty.

In Protopipe, decisions are:
- explicit
- measurable
- revisable

A decision without feedback is considered incomplete.

---

## Analysis

Analysis is the accumulation of understanding
through explicit assumptions, measurements, and outcomes.

In Protopipe, analysis is not a side effect.
**Analysis is the primary outcome of the system.**

---

## Time to Market

Time to market is the duration between an idea
and validated impact.

It is measured through learning speed,
not delivery pressure.

---

## Visibility

Visibility is the ability to observe:
- decisions
- assumptions
- ownership
- outcomes

Visibility creates responsibility.
Lack of visibility creates coordination overhead.

---

## Test Group

A test group is a controlled subset of users
used to validate experiments on production.

Test groups allow real-world feedback
without exposing the entire user base to risk.

---

## Production Review Environment

A production review environment is real production,
augmented with test groups and experimentation mechanisms.

It replaces the need for production-like staging environments.

---

## AI Context

AI context is the curated subset of Protopipe knowledge
provided to AI systems to ensure aligned reasoning.

The glossary is a primary source for AI context stability.

