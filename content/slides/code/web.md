---
title: HTML and JavaScript side by side
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: 1fr auto 1fr
---

> Two code blocks on a two-column slide sit side by side.

```html
<button id="greet">
    Say hello
</button>
<script src="greet.js"></script>
```

```js
const button = document.querySelector("#greet");
button.addEventListener("click", () => {
    alert("Hello!");
});
```

> This slide uses `classes: [burger, gap]` with `cols: 1fr 1fr`: the first and last items span both columns.
