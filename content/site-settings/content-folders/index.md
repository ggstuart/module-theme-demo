---
title: Content folders, slides and HTML files
type: exercise
weight: 2
---

How `content/slides` stays out of the menus, and what `security.allowContent` is for.

<!--more-->

## content/slides is headless

`content/slides/_index.md` has:

```yaml
cascade:
  type: slide
  build:
    render: never
    list: always
build:
  render: never
  list: always
```

So no slide gets a page of its own (`render: never`), but the theme can still find them all to make the slide layouts stylesheet (`list: always`).
The same pattern is used in web-application-development.

## HTML files in content

`hugo.toml` here has:

```toml
[security]
  allowContent = ['text/html', 'text/markdown']
```

without which Hugo 0.162 and later stop with an error as soon as any `.html` file is in `content/` (see *Known bugs*).

## Tags and other taxonomies

`[taxonomies] tag = 'tags'` in `hugo.toml` gives tag pages on the website. The Learning Zone build turns taxonomies off (`disableKinds`).

## _merge = 'deep'

See *Known bugs > Theme settings lost without _merge*.
