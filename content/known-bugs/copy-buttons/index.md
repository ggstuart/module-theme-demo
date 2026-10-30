---
title: "(d) Copy buttons only for some languages"
type: exercise
weight: 4
---

Only code blocks marked `html`, `css`, `js`, `JavaScript`, `json`, `php` or `phtml` get a "copy to clipboard" button.

<!--more-->

**Fixed in:** ggstuart/Module#5 (pending merge)

## Live example

While the bug is there, only the first block below has a button. Once fixed, they all do.

```html
<p>html: has a button</p>
```

```bash
echo "bash: no button"
```

```powershell
Write-Output "powershell: no button"
```

```http
GET /index.html HTTP/1.1
Host: example.org
```

```javascript
console.log("lowercase javascript: no button");
```

```python
print("python: no button")
```

## What is wrong

The theme's `static/js/exercise.js` adds buttons only to a fixed list of web languages, and the names are case-sensitive.

## Workaround

For JavaScript, write `js` instead of `javascript`. For other languages there is none, other than selecting the text by hand.
