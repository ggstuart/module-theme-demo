---
title: The exercise intro box
type: exercise
weight: 3
---

Every exercise in this site starts with the same short box. It comes from the site, not the theme, so a copy of this site inherits it.

<!--more-->

## Where it comes from

The theme's exercise layout includes a partial template, `partials/exercise/intro.html`, under the contents list of every exercise.
This site has its own file at `layouts/partials/exercise/intro.html`, which Hugo uses instead of the theme's (a site's `layouts/` always wins):

```html
<blockquote>
    <p>
        Work through the steps in order. Each step only takes a few minutes, and
        nothing you do here can break anything.
    </p>
</blockquote>
```

## In your own copy

A module started from this one gets the same box on every exercise. To change it, edit `layouts/partials/exercise/intro.html`.
To go back to the theme's own intro, delete the file. To have no box at all, keep the file but leave it empty.
