---
title: Stylesheets, colours and the module name
type: exercise
weight: 1
---

Where your own CSS goes, and in which order the stylesheets apply.

<!--more-->

## Order

Each page loads, in this order (later ones win):

1. the theme's `css/onedark.css` and `css/style.css` (and for lectures `presentation.css`, `slide-types.css` and the slide layouts),
2. the files listed in `customcss` in `hugo.toml`, in their order (this site: `css/example.css`),
3. any `.css` file in the page's own folder.

This page has a `page.css` next to its `index.md`, which makes the box below dashed and purple;
`example.css` makes it solid and grey first, so the page wins over the site, which wins over the theme.

<div class="css-order-demo">If this box has a dashed purple border, the page stylesheet won.</div>

For a lecture, CSS in a slide's own folder is loaded too (see *Pictures, video, diagrams and live examples on slides*).

## Colours

The theme expects a site to define its colours in a stylesheet such as `css/colours.css` (web-application-development has one).
This site has no `colours.css`, to show what the theme does without one: see *Known bugs > Pale slide text*.

## Module code and name

`moduleCode` and `moduleName` under `[params]` in `hugo.toml` appear in the site header, the browser tab and the name of the Learning Zone folder.
