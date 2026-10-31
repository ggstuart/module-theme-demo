---
title: Reuse
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: auto 1fr auto
---

> A slide can appear in as many lectures as you like. This module's Python slide is in two:

```yaml {linenos=false}
# content/code/on-slides/index.md
title: Code on slides
type: lecture
slides:
  - /slides/code/same-as-pages.md
  - /slides/code/python.md
  - /slides/code/java.md
```

```yaml {linenos=false}
# content/advanced-lectures/layouts/index.md
title: Slide layouts and types
type: lecture
slides:
  - /slides/advanced/unknown-class.md
  - /slides/code/python.md
```

> Write a good explanation once and use it in a lecture, a revision session and a colleague's module.
> Fix it once and every lecture that uses it is fixed.
