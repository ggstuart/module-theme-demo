---
title: "(c) Theme settings lost without _merge = 'deep'"
type: exercise
weight: 3
---

A site's own `[outputs]` or `[markup]` settings replace the theme's, unless they say `_merge = 'deep'`.

<!--more-->

**Fixed in:** (not yet; this needs a note in the theme's readme)

This one is about settings, so there is no live example: it would break the whole site.

## What is wrong

Hugo only takes settings from a theme for parts of the configuration the site doesn't set itself.
If a site's `hugo.toml` has an `[outputs]` section, the theme's `[outputs]` (which adds the slide layouts stylesheet and the Learning Zone package) is ignored.
The same goes for `[markup]`: the theme's code highlighting settings (`[markup.highlight]`, line numbers and the colour classes) are lost when a site adds, for example, `[markup.goldmark.renderer] unsafe = true`.

What you see: slide layouts (`cols`, `rows`, `gap`) stop working, and code blocks lose their colours and line numbers.

## Workaround

Add `_merge = 'deep'` to each section you set, as this site does in `hugo.toml`:

```toml
[markup]
  _merge = 'deep'
  [markup.goldmark.renderer]
    unsafe = true

[outputs]
  _merge = 'deep'
```
