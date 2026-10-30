---
title: Make a lecture
type: exercise
weight: 3
---

Write three slides and put them together into a lecture.

<!--more-->

## Make a folder for your slides

In your repository, open `content/slides`, press **Add file > Create new file** and name it `my-topic/first.md`.
That makes a `my-topic` folder with your first slide in it.

## Write three slides

Paste this into `first.md` and commit it:

```markdown
---
title: Why does this matter?
---

> A big, clear statement in a box.

Some text underneath to explain it.
```

Make two more files in the same folder, `second.md` and `third.md`.
Give each one its own `title` and some text.

> A slide should hold one idea.
> If a slide feels crowded, split it into two.

## Make the lecture

Lectures live inside a unit.
Create `content/writing/my-lecture/index.md` with:

```yaml
---
title: My first lecture
type: lecture
weight: 3
author: Your name
slides:
  - /slides/my-topic/first.md
  - /slides/my-topic/second.md
  - /slides/my-topic/third.md
---

A sentence that appears on the title slide.
```

Commit it, and your lecture appears in the unit, after the other two pages.

## Try a layout

Open `second.md` and add a two column layout to its settings:

```yaml
---
title: Before and after
params:
  layout:
    cols: 1fr 1fr
---
```

Each paragraph, list, picture or quote then goes into the next column.

## Reorder and reuse

- To reorder slides, move the lines in the lecture's `slides` list.
- To reuse a slide from another lecture, add its path to the list.
- To drop a slide, delete its line. The slide file stays, ready for next time.
