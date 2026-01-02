## Technological Foundation

Technology at Protopipe is not neutral.  
It amplifies how organizations think, learn, and decide.

Our technological choices are guided by two foundational beliefs:

### Open Source as an Innovation Accelerator

We strongly prefer open source technologies.

Not for ideological reasons, but because open source provides:

- the **best access to shared knowledge**
- the **fastest innovation cycles**
- transparent failure modes
- collective problem solving at scale

Open source lowers the cost of understanding systems.  
Understanding lowers risk.  
Lower risk enables faster and better decisions.

Where source code is closed, learning slows down.
Where learning slows down, feedback degrades.

---

### The Unix Principle: One Tool, One Job

We follow the Unix philosophy:

> *Do one thing well.*

We prefer **small, specialized, composable tools** over large, all-in-one systems.

Reasons:
- Smaller tools are easier to understand
- Clear responsibility reduces hidden coupling
- Composition scales better than centralization
- Failure remains local instead of systemic

Complex systems must be **decomposable**, **testable**, and **replaceable**.

All-in-one tools optimize for convenience.  
We optimize for **clarity, control, and evolvability**.

---

## Radar Structure

The radar follows the ThoughtWorks model:

- **Adopt** — proven, preferred, actively used  
- **Trial** — promising, under evaluation  
- **Assess** — context-dependent, used cautiously  
- **Hold** — intentionally avoided  

Each quadrant reflects **fit with our culture and decision principles**, not popularity.

---

## 🌟 Adopt

### Languages & Frameworks

#### Rust
For performance-critical and deterministic system components.

- Strong guarantees around correctness
- Predictable runtime behavior
- Excellent fit for low-level, high-responsibility components
- Encourages explicit design and clear ownership

#### TypeScript
For frontends, domain-adjacent tooling, and CI-related code.

- Explicitness over convenience
- Stronger feedback during development
- Shared language between frontend and tooling

#### Python
For AI, NLP, analysis pipelines, and exploratory systems.

- Fast exploration cycles
- Strong ecosystem for data and AI
- Well suited for hypothesis-driven development

#### Poetry
For Python dependency management.

- Reproducible environments
- Explicit dependency resolution
- Reduced environmental ambiguity

#### pydantic
For explicit data modeling and validation.

- Validation as executable documentation
- Clear contracts at system boundaries
- Early failure instead of silent corruption

#### mypy
For static typing in Python.

- Feedback before runtime
- Better reasoning about change impact
- Improves long-term maintainability

---

### Tools

#### containerd
Preferred container runtime.

- Clear separation of concerns
- Lower abstraction leakage than Docker Desktop
- Better fit for Kubernetes-native thinking

#### nerdctl
CLI companion for containerd.

- Docker-compatible workflows without Docker dependency
- Transparent, scriptable behavior

#### MkDocs
Documentation as code.

- Versioned, reviewable documentation
- Long-lived knowledge
- Strong alignment with “documentation is communication”

#### PlantUML
Text-based diagrams.

- Diagrams as versioned artifacts
- Diffable and reviewable
- Forces clarity of thought

#### ADR (Architecture Decision Records)
For documenting architectural decisions.

- Decisions become visible and traceable
- Rationale preserved over time
- Prevents repeated debates

#### Copier
Project scaffolding with evolution in mind.

- Templates that evolve without lock-in
- Reproducible project structures
- Avoids generator one-way streets

---

## 🧪 Trial

### Kotlin
For JVM-based services requiring stronger expressiveness than Java.

- Improved readability
- Safer defaults
- Evaluated per context

### Nix / NixLang
For reproducible builds and development environments.

- Strong guarantees
- High learning curve
- Evaluated where determinism outweighs complexity

---

## 🔍 Assess

### Java
Stable but heavy.

- Large ecosystem
- High operational and cognitive overhead
- Used only when constraints demand it

### Haskell
Conceptually strong, operationally expensive.

- High abstraction power
- Steep onboarding
- Limited organizational scalability

### Clojure
Powerful, but integration-heavy.

- Strong expressiveness
- Requires high cultural alignment
- Assessed case by case

---

## 🧊 Hold

### Languages & Frameworks

- Groovy  
- JavaScript without TypeScript  
- Ruby  

Reasons:
- Weak feedback guarantees
- High ambiguity under change
- Poor alignment with testability and visibility principles

### Tools

- Docker (standalone)
- docker-compose

Reasons:
- Hidden complexity
- Poor fit for scalable, Kubernetes-native systems
- Encourages environment drift

---

## Tool Evaluation Criteria

All tools are evaluated against the following criteria:

| Criterion        | Guiding Question                                               |
|------------------|----------------------------------------------------------------|
| Transparency     | Can we understand what is happening internally?                |
| Modularity       | Can the system be decomposed into meaningful parts?            |
| Coupling         | How entangled are data, control flow, and decisions?           |
| Testability      | Can we fail deliberately and analyze safely?                   |
| Operability      | Can we debug, recover, and evolve the system confidently?      |
| Knowledge Access | Is the underlying knowledge accessible and shareable?          |
| Community        | Does the tool benefit from a healthy, active ecosystem?        |
| Cultural Fit     | Does the tool reinforce our principles and decision logic?     |


## Explicit Trade-off

We consciously trade short-term convenience for long-term understanding.

Tools that optimize for ease of use at the cost of transparency
introduce hidden risk and slow learning.

For Protopipe, **clarity beats comfort**.

