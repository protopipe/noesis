# Mechanic: No Experiment without Stable Invariants

## Intent

This mechanic exists to preserve comparability,
reproducibility,
and controlled evolution
within complex and continuously changing systems.

It enforces that components define stable invariants
and preserved constraints
that remain valid across composition,
abstraction,
and experimentation boundaries.

Experiments may introduce intentional variation,
but they must not mutate the context
required for reproducible evaluation.

---

## Problems Addressed

* uncontrolled experimentation
* hidden system drift
* unmeasurable A/B tests
* accidental side effects
* implicit behavioral changes
* frontend/backend divergence
* unstable UX validation
* non-reproducible experimental outcomes
* implicit invariant mutation
* hidden architectural erosion
* unstable component guarantees
* context drift through abstraction

---

## Desired Outcomes Supported

* reliable experimentation
* reproducible product validation
* measurable UX changes
* controlled visual experimentation
* bounded variability
* explicit architectural evolution
* deterministic experimental comparison
* stable experimental contexts
* enforceable component guarantees
* compositional system stability

---

## Enforced Behavior

This mechanic enforces that:

* every component explicitly defines stable invariants
* components preserve their invariants
  across composition and abstraction boundaries
* experiments may introduce intentional variants,
  but must not mutate invariants implicitly
* preserved constraints remain active
  unless explicitly replaced through substitution
* experimental variability remains intentionally bounded
* experiments preserve comparability
  between control and variation
* experiments remain reproducible,
  attributable,
  and structurally comparable

If invariants or preserved constraints change,
the affected component must be substituted
through an explicitly introduced:
- artifact
- version
- variant
- or context

Implicit in-place mutation is considered invalid behavior.

Changing invariants creates a new effective context
and invalidates direct comparability
with previous variants or baselines.

If this behavior is not enforced,
the mechanic is considered ineffective.

---

## Structural Constraints

* experiments cannot arbitrarily mutate unrelated components
* implicit invariant mutation invalidates experiments
* preserved constraints cannot be weakened
  through composition or abstraction
* higher-level abstractions cannot silently weaken
  guarantees provided by lower-level components
* visual or behavioral overrides without explicit substitution
  become invalid behavior
* hidden design drift becomes structurally expensive
* unstable or undefined experimental contexts
  are considered invalid
* implicit frontend/backend divergence
  becomes observable
* unbounded experimentation becomes discouraged
* mutation without contextual redefinition
  becomes structurally impossible

Constraints are intentional.

They exist to preserve:
- comparability
- reproducibility
- explicit variability boundaries
- stable guarantees
- and deterministic reasoning

within evolving systems.

---

## Mechanic Boundary

This mechanic:

* is responsible for preserving comparability
  between experimental variants
* is responsible for enforcing stable invariants
* is responsible for preserving constraints
  across abstraction and composition boundaries
* is responsible for making variability explicit and observable
* is responsible for preventing implicit context mutation
* explicitly does not address statistical evaluation of experiments
* explicitly does not address business prioritization
* explicitly does not address implementation technology choices
* explicitly does not define frontend frameworks or testing tools

---

## Reference Implementation (Protopipe)

This section documents Protopipe’s own reference implementation
of the mechanic.

It exists to:

* demonstrate feasibility
* provide a working example
* support orientation within the Protopipe ecosystem
* enable “eat your own dogfood” validation

The reference implementation:

* is not canonical
* may evolve independently
* must not change the mechanic’s intent
* must be removable without invalidating the mechanic

Reference implementation overview:

* Artifact(s):

  * namespaced frontend component registry
  * namespaced context registry
  * executable Storybook stories
  * preserved visual constraints
  * experimental artifact substitution model

* Scope:

  * frontend composition
  * UX validation
  * visual consistency enforcement
  * experimental UI variation

* What it proves:

  * experiments can remain structurally controlled
  * preserved constraints prevent unintended drift
  * explicit substitution preserves comparability
  * experimental variability can remain bounded
  * stable invariants enable reproducible evaluation
  * evolving systems can preserve deterministic guarantees

If the reference implementation fails in practice,
the mechanic itself must be re-evaluated.

---

## Failure Modes

* experiments bypass substitution
  through implicit overrides or mutation
* preserved constraints are silently weakened
* stable invariants are incompletely defined
* experiments modify multiple unrelated variables simultaneously
* frontend stories diverge from actual runtime behavior
* implicit invariant mutation changes the effective context
* experimental artifacts become permanent drift
* comparability between control and variation is lost
* higher-level abstractions weaken lower-level guarantees
* version changes silently alter preserved constraints

Failure modes must be observable.

---

## Implementation Notes (Non-Canonical)

This section may include:

* Storybook-driven experimentation systems
* Playwright-based invariant validation
* design token systems
* CSS variable architectures
* artifact substitution frameworks
* visual regression systems
* component namespace systems
* atomic-design-based composition validation
* executable layout constraints
* context-aware contract validation

Possible implementation approaches include:

* Playwright
* Chromatic
* Percy
* Storybook
* CSS Modules
* Shadow DOM
* Design Token systems
* component-scoped styling systems

All content here is explicitly non-canonical.

---

## Related Mechanics

* No Experiment without Explicit Testgroup Assignment
* No User Assignment without Single-Experiment Exposure
* No Event or Telemetry Emitting without Experiment, Process, and User Context
* Composability over Convenience
* Observation over Orchestration
* No Coordination without Explicit Shared Meaning
