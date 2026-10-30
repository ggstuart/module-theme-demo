---
title: HTML and JavaScript side by side
params:
  layout:
    cols: 1fr 1fr
---

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
