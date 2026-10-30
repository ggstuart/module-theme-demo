---
title: Pages that don't appear
type: exercise
weight: 5
---

Drafts, future-dated pages and pages left out of Learning Zone.

<!--more-->

This unit also holds:

- `draft-page/index.md` with `draft: true`, and
- `future-page/index.md` dated in 2099.

Neither is built (the workflows run `hugo` without `--buildDrafts` or `--buildFuture`), so they appear nowhere: not in the menu, not in Learning Zone.

- `lz-excluded/index.md` has `learningzone: {exclude: true}`: it is on the website but not in the package.
- `content/stray.md` is a Markdown file directly in `content/`, and `content/loose-page/index.md` a page folder directly in `content/` with no type.
  Both are on the website (at `/stray/` and `/loose-page/`) but not in any unit, so not in Learning Zone, which only lists units.
