---
title: Shortcodes, links and live examples
type: exercise
weight: 2
---

The iframe, figure, youtube, a, ref and relref shortcodes, and the link and image hooks, in all the ways people use them.

<!--more-->

## iframe: a file in assets/examples

{{< iframe src="examples/greeting.html" height="220" >}}{{< /iframe >}}

## iframe: a second one on the same page

{{< iframe src="examples/counter.html" height="160" >}}{{< /iframe >}}

## iframe: a file in this page's folder

`hello.html` sits next to this page's `index.md` (this needs `security.allowContent`; on the website it doesn't work in an exercise yet, see *Known bugs (i)*):

{{< iframe src="hello.html" height="120" >}}{{< /iframe >}}

## iframe: a folder with an index.html in this page's folder

`folder-demo/index.html` sits next to this page's `index.md`, shown with `src="folder-demo/index.html"` (*Known bugs (i)* too):

{{< iframe src="folder-demo/index.html" height="120" >}}{{< /iframe >}}

## iframe: an external address

{{< iframe src="https://example.com/" height="200" >}}{{< /iframe >}}

A bare relative address such as `src="demo/"` is in *Known bugs*.

## figure

{{< figure src="images/placeholder-green.svg" alt="a green placeholder picture" caption="figure, with a caption" >}}

## youtube

{{< youtube id="dQw4w9WgXcQ" >}}

## ref and relref

These work: the shortcode on its own, not inside a Markdown link.

- `{{</* ref "/writing/cheat-sheet" */>}}` gives {{< ref "/writing/cheat-sheet" >}}
- `{{</* relref "/writing/cheat-sheet" */>}}` gives {{< relref "/writing/cheat-sheet" >}}
- A site path without a leading slash, `[the cheat sheet](writing/cheat-sheet/)`: [the cheat sheet](writing/cheat-sheet/)
- With a leading slash, `[the cheat sheet](/writing/cheat-sheet/)`: [the cheat sheet](/writing/cheat-sheet/) (see *Known bugs (h)*)
- Page-relative, `[the last page of this unit](../toc-and-nav/)`: [the last page of this unit](../toc-and-nav/) (see *Known bugs (h)*)

Inside a Markdown link, as `[text]({{</* ref ... */>}})`, see *Known bugs*.
The `{{%/* ref */%}}` form inside a link works:
[the cheat sheet, with `{{%/* ref */%}}`]({{% ref "/writing/cheat-sheet" %}}) and
[with `{{%/* relref */%}}`]({{% relref "/writing/cheat-sheet" %}}).

## The a shortcode

{{< a href="https://gohugo.io" title="Hugo's website" target="_blank" class="button" >}}A link with **attributes**{{< /a >}}

## Other links

- An external link opens in a new tab: [Hugo](https://gohugo.io)
- A link to a page that doesn't exist: [no such page](no-such-page/) (no warning when the site is built)
- A link to a heading on this page: [back to the top](#iframe-a-file-in-assetsexamples)

## Images

- From `assets/images`: ![a blue placeholder picture](images/placeholder-blue.svg)
- From this page's folder: ![an orange placeholder picture](picture.svg)
- With no alt text: ![](images/placeholder-green.svg)
- From another website: ![the Hugo logo](https://gohugo.io/images/hugo-logo-wide.svg)
