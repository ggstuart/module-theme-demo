---
title: Exactly like an exercise
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: auto 1fr auto
---

> A slide is a small Markdown file.

````markdown {linenos=false}
---
title: Python
---

```python
def average(marks):
    if not marks:
        return None
    return sum(marks) / len(marks)

print(average([72, 65, 80]))
```
````

```python
def average(marks):
    if not marks:
        return None
    return sum(marks) / len(marks)

print(average([72, 65, 80]))
```

> Code goes in it the same way as in an exercise:
> three backticks and the name of the language.
