---
title: A lecture is a list
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: 1fr auto 1fr
---

> The lecture file just lists its slides, in order.

```yaml {linenos=false}
---
title: Anatomy of a lecture
type: lecture
weight: 1
slides:
  - /slides/lectures/a-lecture-is-a-list.md
  - /slides/lectures/a-slide-file.md
  - /slides/lectures/columns.md
---

How slides and lectures fit together.
```

The title slide, the contents slide and the "any questions?" slide at the end are made for you.

> To reorder the lecture, move the lines in the list.
