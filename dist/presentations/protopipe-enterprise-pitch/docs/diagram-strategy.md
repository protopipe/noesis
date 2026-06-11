# Diagram Strategy

Diagrams are first-class presentation assets.

## Source Formats

- Use Mermaid only for early throwaway diagrams and quick collaboration.
- Use PlantUML for Protopipe process and BPM-style visuals because it can
  include the canonical Noesis skin.
- Export final diagrams into `diagrams/generated/` as SVG.
- Prefer vertical swimlanes for responsibility, domain boundaries, handovers,
  decision flow, and observation loops.

## Protopipe BPM Visual Grammar

The deck follows `doc/09_identity/guidelines/swimlane-visual-grammar.md`.

- Lane: domain, role, team, responsibility area, or system boundary.
- Token / step: hypothesis, feature step, decision, observation, or learning
  signal.
- Transition: handover of control, evidence, responsibility, or accountability.
- Boundary: explicit domain boundary; no implicit coupling.

Swimlanes are not decorative. They are the preferred visual language for showing
where responsibility sits and how evidence moves.

## Legibility Checks

- Keep every label fully inside its box, token, or decision gate.
- Leave enough space between connected elements for a clearly visible arrow
  shaft, not only an arrowhead.
- Review diagrams at the rendered slide size. Source-level spacing can disappear
  when Reveal.js scales an SVG into the deck.

## Required Diagram Set

- Organizational reality drift map
- Habermas and Luhmann bridge
- Golden Circle communication flow
- Shared reality / APDP capability chain
- Protopipe component system map
- Integrated loop from purpose to monitoring and knowledge
- Consulting entry and expansion path

## Rendering Guidance

Keep diagram source editable and compact. Generated exports should be treated as
build artifacts unless hand-tuned for presentation quality.

PlantUML is rendered via Podman, not a required local binary:

```bash
./scripts/render-plantuml.sh
```

Or with Compose:

```bash
podman compose run --rm plantuml
```

The script defaults to Podman. Docker remains available as an explicit override:

```bash
CONTAINER_RUNTIME=docker ./scripts/render-plantuml.sh
```
