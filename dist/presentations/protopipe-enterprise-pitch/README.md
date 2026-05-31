# Protopipe Enterprise Pitch Deck

**Augmented Product Development Platform**

This directory is a non-canonical presentation project derived from Noesis.
It is intended for Quarto, Reveal.js, VS Code, GitHub, and GitHub Pages.

The deck is structured like a software project:

- `presentation/` contains the Quarto entry point and chapter files.
- `theme/` contains the Reveal.js theme and reusable SCSS modules.
- `assets/` contains images, logos, and font notes.
- `diagrams/` contains source diagrams and generated exports.
- `scripts/` contains local rendering helpers.
- `docs/` contains authoring, deployment, and extension guidance.

Noesis remains the canonical reasoning space. This deck may interpret,
sequence, and package Protopipe for an audience, but it must not introduce
canonical facts without moving them back into `doc/`.

Narrative scope:

Golden Circle / Purpose -> Strategy -> Product -> Architecture -> Development
-> Monitoring and Observations -> Learning -> Decision

## Quick Start

```bash
cd dist/presentations/protopipe-enterprise-pitch
quarto preview presentation/index.qmd
```

Render static output:

```bash
./scripts/render.sh
```

The rendered site is written to `_site/`.

Render PlantUML diagrams with Podman:

```bash
./scripts/render-plantuml.sh
```

Or:

```bash
podman compose run --rm plantuml
```

The render script defaults to Podman. To use Docker explicitly:

```bash
CONTAINER_RUNTIME=docker ./scripts/render-plantuml.sh
```
