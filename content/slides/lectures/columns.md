---
title: Columns and layouts
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr 1fr
    rows: auto 1fr auto
---

> Add a `layout` to split a slide into columns or rows. Everything else on the slide flows into them.
> The `burger` class makes the first and last items full width, like this text and the code below.

> One

> Two

> Three

```yaml {linenos=false}
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr 1fr
    rows: auto 1fr auto
```
