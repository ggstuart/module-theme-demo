---
title: What is wrong, and the workaround
---

> Only `layouts/exercise/single.html` loads Mermaid, when the page has `mermaid: true`. The lecture layout never does, so `mermaid: true` on a lecture has no effect on the website.
> The Learning Zone export loads Mermaid for any page that uses it, lectures included.

> **Workaround:** put diagrams in an exercise, or use a picture (for example an SVG exported from the [Mermaid Live Editor](https://mermaid.live)) on the slide.
