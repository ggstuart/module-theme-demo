---
title: "(h) Links starting with /, ../ or # go to the wrong place"
type: exercise
weight: 8
---

On a site that lives in a folder (every GitHub Pages project site, such as `…github.io/module-theme-demo/`), page links that start with `/`, `../` or `#`, and pictures from `static/` that start with `/`, go to the wrong address.

<!--more-->

**Fixed in:** (not yet; found while building this site)

## Live example

| You write | Website | Learning Zone package |
| --- | --- | --- |
| `[the cheat sheet](/writing/cheat-sheet/)`: [the cheat sheet](/writing/cheat-sheet/) | broken (misses the site folder) | works |
| `[a file in static](/known-bugs/iframe-paths/demo/)`: [a file in static](/known-bugs/iframe-paths/demo/) | broken | works |
| `[the code unit](../../code/)`: [the code unit](../../code/) | broken | works, by luck: `../` is taken from the top of the site, and two levels up from here is the top of the package |
| `[bug (c)](../merge-deep/)`: [bug (c)](../merge-deep/) | broken | broken |
| `[back to the table](#live-example)`: [back to the table](#live-example) | goes to the home page | goes to the home page |

Pictures:

- From `assets/`, with a leading `/` (this works): `![](/images/placeholder-blue.svg)` ![a blue placeholder picture](/images/placeholder-blue.svg)
- From `static/`, with a leading `/` (broken on the website): `![](/known-bugs/root-and-parent-links/static-picture.svg)` ![a purple placeholder picture](/known-bugs/root-and-parent-links/static-picture.svg)

Once fixed, every link and picture above works in both.

## What is wrong

The link and image hooks (`render-link.html`, `render-image.html`) first look for a file in the page's folder or in `assets/` (which is why the `assets/` picture works).
Anything else goes through Hugo's `relURL`, which:

- treats a leading `/` as the top of the web server, not of the site, so the site folder is lost;
- turns `../…` into `/…`, so it is taken from the top of the site, not from the page;
- turns `#heading` into the site's home address plus `#heading`.

The Learning Zone package build has no site folder, so leading-`/` links happen to work there.

## Workaround

- Write site paths without the leading slash: `[the cheat sheet](writing/cheat-sheet/)` gives [the cheat sheet](writing/cheat-sheet/).
- Instead of `../`, write the path from the top of the site the same way: `[bug (c)](known-bugs/merge-deep/)` gives [bug (c)](known-bugs/merge-deep/).
- For a link to a heading on the same page, use HTML: `<a href="#live-example">back to the table</a>` gives <a href="#live-example">back to the table</a>.
