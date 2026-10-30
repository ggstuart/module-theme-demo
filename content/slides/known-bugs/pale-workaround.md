---
title: Workaround
classes: [known-bug-unpatched]
---

Define the colour in your own stylesheet (one of the `customcss` files):

```css
:root {
    --clr-slide-text: hsl(0, 10%, 10%);
}
```

> This site does that in `static/css/example.css`, except on this lecture (any page with a slide of class `known-bug-unpatched`),
> so the bug shows here and nowhere else.
