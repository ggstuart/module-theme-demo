---
title: Python
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: 1fr auto 1fr
---

> Indentation matters in Python, and it is kept exactly.

```python
def average(marks):
    if not marks:
        return None
    return sum(marks) / len(marks)

print(average([72, 65, 80]))
```

```text {linenos=false}
72.33333333333333
```

> On the right is what it prints, in a `text` block.
