---
title: "(i) HTML files next to an exercise aren't published"
type: exercise
weight: 9
---

An iframe of an HTML file in an exercise's own folder shows the site's home page instead.

<!--more-->

**Fixed in:** (not yet; found while building this site)

## Live example

`example.html` sits next to this page's `index.md`. Once fixed, the frame says "Hello from example.html".

{{< iframe src="example.html" height="120" >}}{{< /iframe >}}

A plain Markdown link to the same file, `[open example.html](example.html)`, points back at this page instead:
[open example.html](example.html). Once fixed, it opens the file.

## What is wrong

With `security.allowContent` (see (g)), an HTML file in a page's folder is a page of its own, not a plain file.
The iframe shortcode finds it as a page resource, which has no address of its own, so it falls back to the site's home page.
The link hook does the same for a plain link, so it points at this page's own address.
The same happens in the Learning Zone package.

Once lecture-local slides (ggstuart/Module#2) are in, HTML files next to a lecture's own slides are affected in the same way.

## Workaround

Put the file in `assets/examples/` and use `src="examples/example.html"`.
