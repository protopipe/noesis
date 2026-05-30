# Presentation Architecture

This deck is intentionally modular. The main file `presentation/index.qmd`
acts as the assembly root and includes one file per narrative act.

## Authoring Rules

- Keep slide titles in English.
- Treat `doc/` as canonical source material and this deck as derived.
- Add new narrative claims first as slide notes or placeholders, then verify
  whether they belong in Noesis.
- Frame Protopipe initially as an Augmented Product Development Platform
  before explaining the mechanics and components.
- Preserve the full loop: Golden Circle / Purpose -> Strategy -> Product ->
  Architecture -> Development -> Monitoring and Observations -> Learning ->
  Decision.
- Use `references` blocks for external sources and theory anchors. Keep them
  visible but visually subordinate to the slide argument.
- Use Protopipe swimlane / BPM-style diagrams for process explanations,
  especially when the point is responsibility, handover, domain boundaries, or
  observable evidence.
- Prefer one concept per slide.
- Prefer diagrams over decorative images.
- Use screenshots only when they show a concrete product, prototype, or system
  state.

## Slide Types

- `section`: act divider.
- `toc-only`: table-of-contents placeholder for future slide content.
- `slide-intent`: explicit authoring intent for a future content slide.
- `diagram-slot`: reserved slide for generated or designed diagrams.
- `flow`: linear system or decision loop.

## Canonical Anchors

- Language: `doc/02_language/glossary.md`
- Culture: `doc/03_culture/principles.md`, `doc/03_culture/culture-code.md`
- Problems: `doc/05_problems/`
- Identity: `doc/09_identity/`
