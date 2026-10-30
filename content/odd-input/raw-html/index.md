---
title: 'Raw HTML in Markdown: <details>, & and "quotes"'
type: exercise
weight: 4
---

HTML mixed into Markdown. This site sets `unsafe = true` for Goldmark, so it is kept.

<!--more-->

## A details box

<details>
<summary>Click to show the answer</summary>

The answer is **42**. Markdown works inside, if there is a blank line after `<summary>`.

</details>

## A table with merged cells

<table>
<tr><th colspan="2">Merged heading</th></tr>
<tr><td>one</td><td>two</td></tr>
</table>

## Inline HTML

Press <kbd>Ctrl</kbd> + <kbd>C</kbd>. Some <mark>highlighted</mark> text and H<sub>2</sub>O.

## A script tag

<p id="script-demo">If JavaScript ran, this sentence has changed.</p>
<script>document.getElementById("script-demo").textContent = "An inline script in Markdown ran.";</script>
