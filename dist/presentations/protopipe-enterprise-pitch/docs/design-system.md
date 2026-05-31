# Design System

The visual direction is dark, enterprise, technical, strategic, and OSS-native.
It should feel closer to Linear, Stripe, Vercel, Red Hat, and Thoughtworks Radar
than to a startup hype deck or stock-photo consulting brochure.

## Palette

- Background: `#081a17`
- Deep background: `#0b0c0e`
- Primary accent: `#f7436e`
- Secondary accent: `#41d6c3`
- Warning / experiment accent: `#f6c56f`
- Text: `#ffffff`
- Muted text: `rgba(255, 255, 255, 0.72)`

## Layout Principles

- Use the exported Protopipe full-color logo from the identity chapter in the
  Reveal footer as a restrained persistent brand marker.
- Slides should be dense enough for enterprise audiences, but not cramped.
- Use tables for responsibility maps and transformation paths.
- Use Protopipe swimlanes for BPM-style process flows, responsibility,
  handovers, and domain boundaries.
- Use flow diagrams only for simple loops and system interactions where
  responsibility is not the main point.
- Use compact reference lines for theory sources, talks, papers, and books.
- Avoid rounded decorative card stacks unless showing repeated items.
- Avoid stock-photo metaphors and agile workshop imagery.

## Typography

Use system fallbacks by default for portability. If brand fonts are licensed for
distribution, place them in `assets/fonts/` and wire them into `theme/`.
