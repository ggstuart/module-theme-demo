---
title: "(a) ref inside a Markdown link"
type: exercise
weight: 1
---

A Markdown link whose address is a `{{</* ref */>}}` or `{{</* relref */>}}` shortcode points to a broken address.

<!--more-->

**Fixed in:** ggstuart/Module#5 (pending merge)

## Live example

- `[the cheat sheet]({{</* ref "/writing/cheat-sheet" */>}})` gives [the cheat sheet]({{< ref "/writing/cheat-sheet" >}})
- `[the cheat sheet]({{</* relref "/writing/cheat-sheet" */>}})` gives [the cheat sheet]({{< relref "/writing/cheat-sheet" >}})

Hover over or follow the links. While the bug is there, the first goes to an address like `/<site folder>/https://…` and the second to `/<site folder>//<site folder>/…` (here the site folder is `module-theme-demo`).
In the Learning Zone package they start with `//`, which doesn't work either. Once fixed, both open the cheat sheet.

## What is wrong

The theme's link hook (`layouts/_default/_markup/render-link.html`) sees the shortcode's placeholder rather than its result, decides it is a site path, and puts the site's address in front of it. The shortcode's real address is then put after that.

## Workaround

Use the `{{%/* */%}}` form, whose result is in place before the link is made:
`[the cheat sheet]({{%/* ref "/writing/cheat-sheet" */%}})` gives [the cheat sheet]({{% ref "/writing/cheat-sheet" %}}).
Or write the site path yourself, without a leading slash: `[the cheat sheet](writing/cheat-sheet/)` gives [the cheat sheet](writing/cheat-sheet/) (with a leading slash it breaks, see (h)).
