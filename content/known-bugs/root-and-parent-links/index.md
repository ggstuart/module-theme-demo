---
title: "(h) Links starting with / or ../ lose the site's folder"
type: exercise
weight: 8
---

On a site that lives in a folder (every GitHub Pages project site, such as `…github.io/module-name/`), links that start with `/` or `../` miss out the folder.

<!--more-->

**Fixed in:** (not yet; found while building this site)

## Live example

- `[the cheat sheet](/writing/cheat-sheet/)`: [the cheat sheet](/writing/cheat-sheet/)
- `[the code unit](../../code/)`: [the code unit](../../code/)
- `![a picture](/images/placeholder-blue.svg)`: ![a blue placeholder picture](/images/placeholder-blue.svg)

While the bug is there the links go to the top of `github.io` (a "page not found") and the picture is missing. Once fixed, they work.

## What is wrong

The link and image hooks (`render-link.html`, `render-image.html`) pass any address that isn't a file they know to `relURL`.
`relURL` treats a leading `/` as the top of the web server, not of the site, and turns `../…` into `/…`.

## Workaround

Write site paths without the leading slash: `[the cheat sheet](writing/cheat-sheet/)` gives [the cheat sheet](writing/cheat-sheet/).
