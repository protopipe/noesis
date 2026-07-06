# SCSS Architecture

The theme currently lives in one Quarto-compatible SCSS file:

- `theme/protopipe.scss`

Quarto Reveal themes require special comment sections:

- `scss:defaults` for Reveal variables before theme compilation.
- `scss:rules` for concrete CSS rules after theme compilation.

## Current Sections

- Reveal defaults: colors, font families, sizing, heading behavior.
- CSS custom properties: Protopipe palette and semantic tokens.
- Base slide rules: background, typography, tables, footer, slide number.
- Reusable slide components: `slide-intent`, `toc-only`, `diagram-slot`, `flow`.
- Title slide rules: first-slide specific treatment.

## Extension Path

Keep the single-file theme until the visual system becomes large enough to
justify partials. When splitting becomes useful, keep `protopipe.scss` as the
Quarto entry point and introduce:

- `_tokens.scss`
- `_base.scss`
- `_components.scss`
- `_print.scss`

Only split when it improves maintainability; Quarto theme compilation is easier
to debug with a compact entry file.

