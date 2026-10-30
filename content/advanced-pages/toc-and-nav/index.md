---
title: Contents list, headings and prev/next
type: exercise
weight: 4
display_toc: false
tags: [navigation, edge cases]
---

Deep headings, duplicate headings, a contents list that can't be turned off, and the last page of a unit.

<!--more-->

## Contents list

This page sets `display_toc: false`, but exercises always show their contents list (see *Known bugs (j)*).
The box under the title is the site's own `layouts/partials/exercise/intro.html`, which replaces the theme's on every exercise.

## Level 2

### Level 3

#### Level 4

##### Level 5

###### Level 6

## Duplicate heading

Two headings with the same text get different anchors (`#duplicate-heading` and `#duplicate-heading-1`).

## Duplicate heading

The second one.

## Prev and next

This is the last page of its unit, so it has a "previous" link but no "next" link.
The first page, *Code in many languages*, has only a "next" link.

## Tags

This page has `tags: [navigation, edge cases]`. On the website Hugo makes a page for each tag, at `/tags/`;
the Learning Zone package leaves them out.
