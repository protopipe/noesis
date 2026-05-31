# GitHub Pages Deployment Strategy

Recommended deployment target: GitHub Pages with Quarto rendering in CI.

## Local Render

```bash
cd dist/presentations/protopipe-enterprise-pitch
quarto render
```

## Suggested Workflow

Create `.github/workflows/protopipe-presentation.yml` at the repository root if
this deck becomes a published artifact.

```yaml
name: Protopipe Presentation

on:
  push:
    branches: [main]
    paths:
      - "dist/presentations/protopipe-enterprise-pitch/**"
      - ".github/workflows/protopipe-presentation.yml"
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: quarto-dev/quarto-actions/setup@v2
      - name: Render presentation
        working-directory: dist/presentations/protopipe-enterprise-pitch
        run: quarto render
      - uses: actions/upload-pages-artifact@v3
        with:
          path: dist/presentations/protopipe-enterprise-pitch/_site

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - id: deployment
        uses: actions/deploy-pages@v4
```

## Publication Model

Keep the deck in `dist/` because it is derived and audience-specific. Promote
only reusable language, constraints, or identity decisions back into `doc/`.

