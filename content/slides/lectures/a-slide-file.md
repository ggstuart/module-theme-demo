---
title: A slide is a file
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: auto 1fr auto
---

> Each slide lives in its own file in `content/slides/`. This is the start of this one:

```markdown {linenos=false}
---
title: A slide is a file
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: auto 1fr auto
---

> Each slide lives in its own file in `content/slides/`.
```

The `classes` and `layout` lines are optional: leave them out and the slide is one column.
Folders inside `slides` keep things tidy, one folder per topic.

> The settings go between the `---` lines; everything below them is the slide.
