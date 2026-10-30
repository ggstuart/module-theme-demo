---
title: Python
params:
  layout:
    cols: 2fr 1fr
---

```python
def average(marks):
    if not marks:
        return None
    return sum(marks) / len(marks)

print(average([72, 65, 80]))
```

> Indentation matters in Python, and it is kept exactly.
