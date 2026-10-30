---
title: "(f) A slide as a page of its own is unstyled"
type: slide
weight: 6
---

**Fixed in:** (not yet)

This page *is* the live example: it has `type: slide`, so it is shown on its own, outside a lecture. While the bug is there it looks bare, with no slide styling.

**What is wrong:** the theme's `layouts/slide/single.html` only makes the `<article class="slide">`. Unlike a lecture it doesn't load `presentation.css` or `slide-types.css`, so nothing styles it.

**Workaround:** don't give slides pages of their own. Keep them in `content/slides/` with `build: render: never` (see *Advanced: site settings*) and use them in a lecture.
