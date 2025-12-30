# protopipe-noesis

**Canonical mental model of Protopipe.**  
Decisions, language, architecture, and narratives start here.

## What “Noesis” means
*Noesis* (νοῦς) refers to understanding and reasoning: the “thinking layer”.  
This repository is that layer for Protopipe: the place where we keep the *why*, the *how*, the shared language, and the decision logic that everything else derives from.

## What this repo is (and is not)
This repo is:
- The **source of truth** for Protopipe’s principles, decisions, and framing
- **Versioned, reviewable context** (diffable, attributable, auditable)
- A **reference system**, not a project backlog

This repo is not:
- A dumping ground for random docs
- A customer-specific solution space
- A place for implementation detail, tickets, or roadmaps

## AI context: why this repo matters
This repository is designed to be a **high-signal context pack** for humans *and* machines.

When you “feed” an AI assistant with selected files from this repo, you get:
- More consistent terminology (“ProtoPortfolio”, “Feature Steps”, etc.)
- Less context leak from unrelated projects/customers
- Better alignment with Protopipe’s decision rules and constraints

Practical usage patterns:
- For a **strategy/pitch** conversation: use `01_why/`, `02_culture/`, `06_narratives/`
- For **architecture** work: use `04_architecture/`, `03_decisions/adr/`, `05_technology/`
- For **terminology alignment**: use `07_glossary/`

Rule of thumb:
> If it’s not in Noesis, it’s not canonical.

## Repository map (reading order)
1. `01_why/` — Golden Circle, vision, non-negotiables
2. `02_culture/` — culture code, principles, anti-principles
3. `03_decisions/adr/` — Architecture Decision Records (why we chose X)
4. `04_architecture/` — architecture whitepaper + diagrams as text
5. `05_technology/` — technology radar + rationale
6. `06_narratives/` — customer-view narratives (use cases, contrasts, experiences)
7. `07_glossary/` — shared language and definitions

## Contribution rules (non-negotiable)
- Changes happen via PR/MR with review
- Prefer **small, atomic diffs**
- New major decisions require an **ADR**
- Diagrams must be **text-based** (PlantUML)

