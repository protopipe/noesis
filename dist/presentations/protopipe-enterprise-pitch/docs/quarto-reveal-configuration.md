# Quarto and Reveal.js Configuration

The deck is configured in `_quarto.yml`.

## Quarto

- Project type: `website`
- Render target: `presentation/index.qmd`
- Output directory: `_site`
- Execution freeze: `auto`
- Static resources: `assets/` and `diagrams/generated/`

## Reveal.js

- Theme: Quarto `default` plus `theme/protopipe.scss`
- Aspect ratio: `1600x900`
- Transition: `fade`
- Navigation: linear
- Slide numbers: current slide / total slides
- Controls, progress, hash navigation, history, and overview enabled
- Centering disabled to support enterprise-style composed layouts
- Code copy enabled for technical appendix slides

## Rendering

Use:

```bash
./scripts/render.sh
```

Use preview mode while authoring:

```bash
./scripts/preview.sh
```

