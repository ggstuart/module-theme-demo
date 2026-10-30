---
title: "(j) display_toc: false is ignored on exercises"
type: exercise
weight: 10
display_toc: false
---

An exercise always shows its contents list, even with `display_toc: false` in its front matter.

<!--more-->

**Fixed in:** (not yet)

## Live example

This page has `display_toc: false`. While the bug is there, the contents list (*Live example*, *What is wrong*, *Workaround*) still appears at the top. Once fixed, it is gone.

## What is wrong

`layouts/exercise/single.html` always prints `.TableOfContents`. Only the default page layout and unit pages check `display_toc`.

## Workaround

None for exercises, short of overriding `layouts/exercise/single.html` in the site. A page with no `type` respects `display_toc`, but loses the exercise layout.
