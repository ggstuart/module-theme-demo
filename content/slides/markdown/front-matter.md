---
title: The bit at the top
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: auto 1fr auto
---

> Every file starts with a few settings between `---` lines.

```yaml {linenos=false}
---
title: Week 3 lab
type: exercise
weight: 3
---

The rest of the page goes here.
```

- `title` is the page title
- `type` says what it is: `lecture`, `exercise` or `unit`
- `weight` puts pages in order: 1 comes first

> Everything below the second `---` is the page itself.
