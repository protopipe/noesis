# Noesis-First Authoring Rule

When working in this repository, treat `doc/` as the canonical Noesis source
and `dist/` as derived material.

Rules:

- Write canonical concepts in English.
- Add or refine Noesis entries before creating presentations, publications,
  whitepapers, mockups, or other `dist/` artifacts.
- Do not introduce new canonical concepts directly in `dist/`.
- Keep Noesis declarative. It may define problems, desired outcomes,
  mechanics, capabilities, language, and constraints.
- Do not put implementation decisions, product roadmap choices, concrete
  architecture decisions, or vendor selections into Noesis.
- If an idea implies both a problem and a solution, document the problem first,
  then derive mechanics or capabilities, and only afterwards create downstream
  material outside Noesis.
- Blockchain, marketplace, oracle, provider, token, or storage technologies are
  implementation candidates unless the user explicitly asks for downstream
  `dist/` material.
