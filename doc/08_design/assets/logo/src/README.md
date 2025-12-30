# Logo Source Folder

In this folder, you can see all source files for the Protopipe logo. 

There is one version as HTML and one as SVG.

In order to generate the vectorized svg, you have to install the fonts from the fonts [folder](../../fonts). Follow the instructions in the [README](../../fonts/README.md) there.

## HTML

You can just oben the html files in your Browser to see the Logo. You can copy HTML and CSS for Websites.

## SVG

In order to use this, you have to vectorize the fonts. Therefore you have to run e.g.:

```bash
inkscape logo.svg \
  --export-plain-svg=../out/logo-color-full.svg \
  --actions="select-all;object-to-path;export-do"
```
