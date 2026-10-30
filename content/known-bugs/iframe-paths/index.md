---
title: "(e) iframe with a page-relative address"
type: exercise
weight: 5
---

`{{</* iframe src="demo/" */>}}` looks for `demo/` at the top of the site, not next to the page.

<!--more-->

**Fixed in:** (not yet)

## Live example

`static/known-bugs/iframe-paths/demo/index.html` is published at `known-bugs/iframe-paths/demo/`, right below this page.
While the bug is there, the frame below shows the site's home page or a "page not found"; once fixed, it says "Hello from demo/".

{{< iframe src="demo/" height="140" >}}{{< /iframe >}}

## What is wrong

When `src` is not a file in the page's folder or in `assets/`, `layouts/shortcodes/iframe.html` passes it to `relURL`, which treats it as relative to the site, not to the page.

## Workaround

Put the example in `assets/examples/` and use `src="examples/name.html"` (as *Code listings* and the live example slides do),
or give the path from the top of the site, without a leading slash: `src="known-bugs/iframe-paths/demo/"`:

{{< iframe src="known-bugs/iframe-paths/demo/" height="140" >}}{{< /iframe >}}
