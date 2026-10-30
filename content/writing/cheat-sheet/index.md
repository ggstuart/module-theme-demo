---
title: Markdown cheat sheet
type: exercise
weight: 4
---

Everything you are likely to need, on one page.

<!--more-->

## Text

| You type | You get |
| --- | --- |
| `*italic*` | *italic* |
| `**bold**` | **bold** |
| `` `code` `` | `code` |
| `[a link](https://www.dmu.ac.uk)` | [a link](https://www.dmu.ac.uk) |

Leave an empty line between paragraphs.

## Headings

```markdown
## A main heading
### A smaller heading
```

Start at `##`, because the page title is already the biggest heading.

## Lists

```markdown
- a bullet point
- another one
  - an indented one

1. a numbered step
2. the next step
```

## Quotes and notes

```markdown
> This stands out from the text around it.
```

> This stands out from the text around it.

## Pictures

```markdown
![What the picture shows](picture.png)
```

Put the picture file in the same folder as the page's `index.md`.

## Tables

```markdown
| Week | Topic        |
| ---- | ------------ |
| 1    | Introduction |
| 2    | Markdown     |
```

## Code

````markdown
```python
print("Hello")
```
````

Name the language after the backticks (`python`, `java`, `html`, `sql`...) and it is coloured for you.

## Diagrams

Diagrams are possible too: see *Advanced: exercises and pages*.

## YouTube videos

```markdown
{{</* youtube id="VIDEO_ID" */>}}
```

Paste the video's id (the part after `v=` in its address).
