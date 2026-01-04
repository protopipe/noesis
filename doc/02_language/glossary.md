# Glossary

This glossary defines the **canonical language of Protopipe**.

Terms listed here have a **specific meaning** within Protopipe.
If a term is used differently elsewhere, the Protopipe definition takes precedence.

Shared language is a design constraint.
Ambiguous language creates hidden coupling.

---

## Canonical

**Canonical** describes information that is considered authoritative,
intentional, and shared.

In Protopipe, canonical knowledge is:
- explicitly written
- versioned
- reviewable
- stable enough to reason about

Canonical does not mean permanent.
It means “currently accepted as the shared frame of reference”.

Everything outside Noesis may change freely.
Everything inside Noesis must justify its existence.

---

## Architecture

In Protopipe, architecture is the **management of dependencies**.

Architecture is concerned with:
- coupling and cohesion
- direction of dependencies
- placement of invariants
- responsibility boundaries

Architecture is not:
- a component diagram
- a technology stack
- a deployment model

Architecture exists to reduce complexity
by shaping how changes propagate.

Good architecture allows change
without global reasoning.


---

## Complexity

Complexity describes the degree to which a system
cannot be understood, changed, or reasoned about locally.

In Protopipe, complexity is not defined by size,
but by **entanglement of dependencies**.

Complexity increases when:
- changes affect multiple components simultaneously
- invariants are scattered
- responsibilities are unclear
- reasoning requires global knowledge

Complexity is the primary reason
why mechanics, capabilities, and structure exist.

If a problem can be solved locally,
no architecture is required.

---

## Coupling

Coupling describes the degree to which two elements
must change together.

High coupling means:
- changes propagate
- coordination increases
- local reasoning breaks down

Coupling is a force that **pulls elements together**.

> Coupling and cohesion are opposing forces.
> Architecture is the art of balancing them.

---

## Cohesion

Cohesion describes the degree to which elements
belong together because they share purpose,
invariants, or change rhythm.

High cohesion justifies proximity.

Cohesion is a force that **keeps elements together**.

> Coupling and cohesion are opposing forces.
> Architecture is the art of balancing them.


---

## Invariant

An invariant is a rule about state or behavior
that must never be violated within a defined scope.

In Protopipe, invariants are primarily **local**:
- they belong to a capability, boundary, or responsibility unit
- they exist to reduce complexity by enabling local reasoning

Distributed invariants are treated as a structural smell:
if an invariant must be enforced in multiple places,
the system is likely cut incorrectly.

A good structural cut makes invariants local.

### Local Invariant

A local invariant is enforced in exactly one place (one boundary).
It enables local reasoning and low coordination.

### Distributed Invariant

A distributed invariant must be re-implemented or re-checked
across multiple components or teams.
It increases coupling and coordination cost.


---

## Information Hiding (Secrecy Principle)

Information hiding means that a boundary conceals the details
that are likely to change (volatility),
so that change does not propagate across the system.

In Protopipe, information hiding is used to keep invariants local:
- if an invariant depends on volatile details,
  those details must be encapsulated behind a stable interface

Information hiding is not about secrecy.
It is about change containment.


---

## Surgical Cut (Chirurgical Cut Line)

A surgical cut is a deliberate structural separation
that reduces complexity
without destroying coherence.

A cut is justified when:
- complexity is reduced
- invariants become local
- reasoning becomes possible again

A cut is invalid when:
- changes still affect both sides
- coordination remains mandatory
- invariants remain distributed

„A valid cut creates a boundary where information hiding is possible and invariants become local.“

Surgical cuts are reversible in theory,
but expensive in practice.

They must be chosen with care.

---

## Fix Star (Desired Outcome)

A Fix Star is a long-term desired outcome
that provides orientation without prescribing a path.

Fix stars:
- guide direction
- do not guarantee reachability
- may conflict with other fix stars

Fix stars are used for navigation,
not for planning.

When fix stars are temporarily obscured,
mechanics provide local guidance.

---

## Global

Global describes scope.

A concept may be:
- canonical but local
- global but non-canonical
- both
- neither

In Protopipe, mechanics are both
global and canonical.


---

## Noesis

Noesis describes the **canonical reasoning space of Protopipe**.

It contains the shared facts, relations, constraints, and language
that define how Protopipe understands problems, outcomes, structure,
and consequences.

Noesis is **declarative**, not operative.

It does not contain decisions.
It does not prescribe actions.
It does not select solutions.

Noesis exists so that decisions can be derived,
explained, challenged, and revised **outside** of it.

---

### What Noesis Contains

Noesis contains only **canonical elements**:

- shared language and definitions
- acknowledged problems
- stakeholder-bound desired outcomes
- global mechanics that encode enforced trade-offs
- capabilities the platform must be able to provide
- structural relations and constraints

Everything in Noesis is:
- intentional
- reviewable
- versioned
- stable enough to reason about

If something is present in Noesis,
it is assumed to be authoritative within its scope.

---

### What Noesis Explicitly Excludes

Noesis explicitly excludes:

- decisions
- priorities
- roadmaps
- implementations
- tools and technologies
- organizational assignments

If something answers the question  
**“What should we do in this situation?”**  
it does not belong in Noesis.

That question is answered elsewhere
(e.g. via decision prompts in `dist/`)
by referencing Noesis.

---

### Noesis and Decisions

Noesis is **not** a decision framework.

It does not decide between alternatives.
It does not resolve trade-offs.

Instead, Noesis defines:
- which trade-offs exist
- which consequences follow from certain choices
- which options are structurally discouraged or impossible

Decisions are:
- contextual
- situational
- reversible
- produced outside Noesis

A decision is considered valid
if it can be explained by referencing Noesis
without modifying it.

---

### Noesis and Mechanics

Mechanics are a **core element of Noesis**.

They encode **non-negotiable structural consequences**
derived from recurring conflicts between
stakeholder-bound desired outcomes.

Mechanics do not recommend solutions.
They remove options.

Noesis does not apply mechanics.
It only defines them.

Mechanics are referenced during decision-making
to evaluate consequences,
not to dictate outcomes.

---

### Noesis and Desired Outcomes

Desired outcomes act as **strategic fix stars**.

They describe what must become true
from the perspective of a stakeholder,
without prescribing a path.

Noesis records desired outcomes
as canonical points of orientation.

When desired outcomes conflict,
Noesis does not resolve the conflict.

Instead, it provides mechanics
that make the consequences of choosing
one direction over another explicit.

---

### Noesis and Capabilities

Capabilities describe
what the Protopipe platform must be able to enable
to address acknowledged problems
and support desired outcomes.

Capabilities are part of Noesis,
but they do not contain decisions or implementations.

They serve as **entry points into complexity**.

When a capability is explored,
complexity, invariants, and structural cuts
are derived locally from that capability,
while remaining constrained by mechanics.

---

### Noesis and Architecture

Noesis is not an architecture description.

Architecture is treated as one possible
application domain of Noesis.

In Protopipe, architecture is understood as
the management of dependencies
(coupling, cohesion, invariants, boundaries).

Noesis provides the canonical frame
within which architectural decisions
can be reasoned about,
but it does not define architectures itself.

---

### Canonical, Not Global

Noesis is canonical, not necessarily global.

Canonical means:
- authoritative
- shared
- intentionally maintained

Some elements of Noesis are global
(e.g. mechanics),
others may be canonical within a limited scope
(e.g. capability-local invariants).

Noesis does not require uniformity.
It requires explicitness.

---

### Noesis and AI

Noesis is designed to be **human-readable and machine-readable**.

It exists to close a gap commonly found in organizations:
knowledge is scattered across tools, documents, teams, and individuals,
resulting in hidden context, implicit assumptions, and local truths.

Noesis provides a **single canonical reference space**
that can be shared by:
- humans (for reasoning, alignment, and explanation)
- machines (for grounding, constraint checking, and derivation)

By being:
- declarative
- canonical
- explicit
- decision-free

Noesis enables AI systems to:
- reason without guessing intent
- derive options without inventing rules
- explain consequences by referencing shared constraints
- operate across organizational and technical boundaries

Noesis does not replace tools.
It replaces **implicit context**.

AI systems interacting with Protopipe
are expected to treat Noesis as:
- a grounding source
- a constraint system
- a shared language layer

Any AI-generated output
that contradicts Noesis
is considered invalid by definition.


---

### Final Statement

Noesis is the **fixed reference space**
of Protopipe.

It defines:
- what is true
- what matters
- what follows if certain choices are made

It never defines:
- what must be chosen

Protopipe gains clarity
by keeping Noesis stable
and decisions explicit.


---

## Augmented Product Development Platform (APDP)

An APDP is a system that augments an organization’s
ability to make **reversible, informed decisions under uncertainty**.

An APDP is more than:
- a technical platform
- an architectural framework
- a product toolchain

It integrates:
- strategy
- organization
- architecture
- feedback
- responsibility

APDP operates **above architecture**,
using architecture as one of several instruments
to manage complexity.

---

## Stakeholder

A stakeholder is a responsibility holder and decision perspective.

Stakeholders are not users or personas.
They define which outcomes matter,
which trade-offs are acceptable,
and which risks are owned.


---

## Mechanic

A **Mechanic** is a structural reinforcement
that makes certain behaviors inevitable or unavoidable.

Mechanics act like **directional signposts**.

They do not tell you where to go.
They tell you what will happen if you choose a direction.

Mechanics remain valid
even when desired outcomes conflict
or are temporarily unreachable.

Mechanics are not tools, patterns, or best practices.

They define:
- constraints
- invariants
- enforced boundaries
- responsibility distribution

Mechanics are **derived from recurring conflicts between
stakeholder-bound desired outcomes**.

They encode the non-negotiable consequences
that apply whenever a decision is made,
independent of the concrete solution.

Mechanics are **referenced by capabilities**
and **used during decision-making**,
but they do not prescribe implementations.

Examples of mechanics include:
- Review Environments
- Artifact-based Experiments
- Consumer Driven Contract Tests

A mechanic is successful
when it removes the need
for repeated discussion or coordination
by making trade-offs structurally explicit.

---

## Trade-off

A trade-off is a situation
where improving one dimension
necessarily worsens another.

In Protopipe, trade-offs are:
- explicit
- enforced through mechanics
- never solved, only chosen

If a decision claims to avoid a trade-off,
it is considered suspicious.


---

## Decision

A decision is a commitment to act under uncertainty.

In Protopipe, decisions are:
- contextual
- measurable
- revisable

Decisions do not require dedicated documents.
They typically emerge through pull requests, reviews, and iteration.

A decision becomes relevant to Noesis only if it affects:
- shared language
- acknowledged problems
- desired-outcomes
- or mechanics


---


## Learning Signal

A Learning Signal is an explicit, observable outcome
that reduces uncertainty and informs a decision.

In Protopipe, a learning signal:
- is tied to a hypothesis or experiment
- is measurable or at least falsifiable
- influences a decision or next step

Activity, delivery, or effort alone
do not constitute a learning signal.

---

## Business Ownership

Business Ownership describes responsibility
for hypotheses, experiments, and learning outcomes.

In Protopipe, business ownership means:
- defining the learning intent
- owning the interpretation of results
- being accountable for decisions based on learning

Business ownership is independent of technical implementation
and is typically held by:
- stakeholders
- product owners
- product managers

Ownership cannot be delegated without responsibility.

---

## Explicit Shared Meaning

Explicit Shared Meaning refers to information
that is intentionally expressed, referenceable,
and understood consistently across roles.

In Protopipe, shared meaning is:
- written down
- canonical or explicitly versioned
- used as a reference instead of verbal alignment

Meaning that exists only in conversations,
presentations, or individual interpretation
is considered implicit and non-canonical.

---

## Coordination

Coordination is the act of aligning work,
decisions, or responsibilities across people or teams.

In Protopipe, coordination is considered a cost,
not a goal.

Coordination is only valid
when it is based on explicit shared meaning.
Implicit alignment increases coordination overhead
and is treated as structural risk.

---

## Attribution Context

Attribution Context is the minimal set of information
required to relate signals to intent and outcome.

In Protopipe, attribution context includes:
- experiment context
- process context
- user context

Attribution context must be attached
at the point where events or telemetry are emitted
and propagated unchanged downstream.

Signals without attribution context
cannot be evaluated meaningfully.


---

## Experiment Evaluation

Experiment Evaluation is the act of interpreting
experiment results to inform a decision.

In Protopipe, experiment evaluation:
- depends on complete attribution context
- focuses on learning, not success or failure
- results in a decision, continuation, or discard

Evaluation is distinct from reporting or visualization.
An experiment without evaluation is incomplete.


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

## Reverse Feedback Loop

The Reverse Feedback Loop describes the inversion
of the classic **Build–Measure–Learn** cycle
during planning and decision-making.

While execution follows:

Build → Measure → Learn

planning follows the reverse direction:

Learn → Measure → Build

---

In the Reverse Feedback Loop, work does not start from features
or solutions, but from learning intent.

Decisions are planned by defining:
- what needs to be learned
- how learning will be measured
- what must be built to generate that learning

The concept originates from **Lean Startup**
and is used in Protopipe
to enforce learning-first planning
and prevent solution-driven execution.


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

