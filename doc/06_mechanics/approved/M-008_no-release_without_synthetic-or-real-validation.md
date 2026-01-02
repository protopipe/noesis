# Mechanic: No Release without Synthetic or Real Validation

## Mechanic Statement

A release must be validated **before completion**
either through **synthetic validation** or **real-world validation**.

There is no third option.

If neither form of validation is possible,
the component is not releasable under Protopipe constraints.

---

## Intended Outcome

Releases are validated decisions, not acts of trust.

Teams are forced to:

- make validation strategy explicit
- choose validation based on process criticality
- shift learning and quality checks left
- avoid implicit risk transfer to production

Validation becomes a structural property of the release,
not an afterthought.

---

## Enforced Actions

To complete a release, exactly one of the following must apply:

### Option A: Synthetic Validation

- Executable, meaningful tests exist
- Tests are run as part of the release pipeline
- Tests validate business-relevant behavior, not only technical correctness
- Failing tests block the release

Typical examples:
- contract tests
- business-rule tests
- regression and approval-style tests

---

### Option B: Real Validation (Artifact-Based Experiments)

- The release artifact is exposed to real users or processes
- Exposure is limited to explicit test groups
- Feedback is collected **during release**
- The release can be stopped or rolled back based on feedback

Typical examples:
- artifact-based experiments
- RFAs deployed from feature branches
- controlled exposure to test customers

---

## Forbidden or Discouraged Actions

As a consequence, the following becomes impossible or intentionally costly:

- Releasing without prior validation
- Declaring monitoring or logging as validation
- Relying solely on post-release incident detection
- Mixing synthetic and real validation implicitly
- Choosing validation based on convenience

Validation strategy must be explicit and justified.

---

## Domain Constraints

Certain domains **must not** use real-world validation:

- legal document generation (e.g. insurance policies)
- financial booking and settlement logic
- compliance-relevant calculations

In these domains, **synthetic validation is mandatory**.

If synthetic validation is not feasible,
the component is incompatible with Protopipe constraints.

---

## Problems Addressed

This mechanic directly reduces:

- Decisions Without Feedback
- Analysis as a Side Effect
- Untestable Architecture
- Risk Shifting to Production
- False Sense of Safety

---

## Use-Cases Enabled

This mechanic enables:

- Shift-left quality without blocking delivery
- Safe experimentation where failure is acceptable
- Strict validation where failure is not acceptable
- Clear architectural conversations about risk

---

## Scope & Boundary

This mechanic applies at:

- release governance level
- CI/CD pipeline level
- experimentation and quality strategy level

This mechanic does **not**:

- prescribe specific test frameworks
- mandate A/B testing everywhere
- relax legal or compliance constraints
- replace domain expertise

---

## Reference Implementation (Dogfooding)

Protopipe applies this mechanic by:

- enforcing explicit validation strategy per release
- blocking releases without validation declaration
- using synthetic tests for critical domains
- using artifact-based experiments for tolerant domains

Reference implementations are non-canonical
and exist to validate the enforced constraint.

---

## Failure Modes

This mechanic fails when:

- validation is reduced to technical smoke tests
- experiments are run without decision intent
- domain criticality is ignored
- teams try to combine both options to avoid commitment

Validation must lead to a decision.
Otherwise it is noise.

