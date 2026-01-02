# protopipe-noesis

**Canonical mental model of Protopipe.**  
Language, structure, mechanics, and shared understanding start here.

---

## What “Noesis” means

*Noesis* (νοῦς) refers to understanding and reasoning — the act of grasping
how things relate, why they matter, and what follows from them.

This repository is that layer for Protopipe.

It contains the **canonical thinking system**:
- the *why* behind Protopipe
- the shared language we use
- the problems we explicitly acknowledge
- the use-cases we optimize for
- the mechanics that make certain behaviors unavoidable

Everything else derives from this.

---

## What this repository is

This repository is:

- The **canonical source of truth** for Protopipe’s mental model  
- A **structured reasoning system**, not a collection of documents  
- **Versioned, reviewable, diffable context** for humans and machines  
- The foundation for **consistent AI context generation**  
- A place where *meaning*, *constraints*, and *structure* are made explicit  

If something appears here, it is assumed to be:
- intentional
- stable enough to reason about
- shared across the organization

---

## What this repository is not

This repository is **not**:

- A backlog, roadmap, or ticket system  
- A collection of implementation details  
- A customer-specific solution space  
- A place for architectural diagrams of concrete systems  
- A dump for artifacts that merely happen to exist  

Implementation happens **downstream**.
This repository defines the *mental and structural preconditions* for implementation.

---

## Canonical by design

Noesis is intentionally opinionated.

It captures:
- shared language
- framing
- invariants
- enforced structures

It does **not** capture:
- historical decision trails
- transient tool choices
- social process artifacts

Decisions emerge through pull requests, reviews, and iteration.
If a decision becomes obsolete, it disappears through change —
not through an archive of past intent.

> If it’s not in Noesis, it is not canonical.

---

## AI context: why this repository exists

This repository is designed to be a **high-signal context source**
for both humans **and** machines.

Selected subsets of this repository can be used as:
- AI context packs
- prompt grounding
- constraint definition
- terminology alignment

This reduces:
- context leakage between projects or customers
- inconsistent terminology
- hidden assumptions in AI-assisted work

It enables:
- reproducible reasoning
- aligned outputs
- shared understanding across roles

---

## Repository structure (reading order)

The numbering defines an **intentional reading and reasoning order**.
It is used both by humans and by automated context generators.

1. **`01_why/`**  
   Vision, Golden Circle, strategic framing, non-negotiables.

2. **`02_language/`**  
   Glossary, APDP, and other language constructs that define how we think and speak.

3. **`03_culture/`**  
   Culture code, principles, and mental models that shape behavior.

4. **`04_problems/`**  
   Explicit problem narratives, grouped by domain.
   These describe *tensions we acknowledge* — not solutions.

5. **`05_use-cases/`**  
   Outcome-oriented role-based use-cases.
   These describe *what must become possible*.

6. **`06_mechanics/`**  
   Structural mechanisms that enforce behavior and enable capabilities.
   Mechanics are organizational and architectural constraints — not tools.

7. **`07_identity/`**  
   Corporate identity and visual language.
   Design is treated as **canonical shared semantics**, not decoration.

8. **`08_contrasts/`**  
   Deliberate comparisons to other tools and approaches to sharpen positioning.

9. **`09_experiences/`**  
   Narrative experiences that illustrate how the system is encountered in practice.

---

## Contribution rules (non-negotiable)

- All changes happen via pull requests with review
- Prefer **small, atomic, intention-revealing diffs**
- Do not introduce implementation detail
- New concepts must be backed by:
  - language (glossary)
  - problems
  - use-cases
  - or mechanics
- Diagrams, if any, must be **text-based**

Noesis is not optimized for speed.
It is optimized for **clarity, consistency, and long-term reasoning**.

