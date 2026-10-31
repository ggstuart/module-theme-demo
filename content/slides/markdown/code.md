---
title: Code
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: auto 1fr auto
---

> Three backticks start and end a block of code.

````markdown {linenos=false}
```python
for week in range(1, 13):
    if week == 7:
        print("Week", week, "is reading week")
    else:
        print("Week", week)
```
````

```python
for week in range(1, 13):
    if week == 7:
        print("Week", week, "is reading week")
    else:
        print("Week", week)
```

> Name the language and it is coloured for you, with line numbers and the indentation kept exactly.
