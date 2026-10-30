---
title: "(g) HTML files in content/ stop the build"
type: exercise
weight: 7
---

With Hugo 0.162 or later, any `.html` file in `content/` stops the build, unless the site allows it.

<!--more-->

**Fixed in:** (not yet; this needs a note in the theme's readme, or a default in the theme's config)

This one stops the whole build, so there is no live example. This site already has the workaround, which is why *Shortcodes, links and live examples* can use `hello.html` from its own folder.

## What is wrong

Newer versions of Hugo refuse HTML content files by default, with an error like:

```text
access denied: "text/html" is not whitelisted in policy "security.allowContent"
```

Older modules (web-application-development, for example) keep live HTML examples next to their lectures, so they need the setting.

## Workaround

In `hugo.toml`:

```toml
[security]
  allowContent = ['text/html', 'text/markdown']
```
