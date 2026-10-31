---
title: Python
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: auto 1fr auto
---

> Indentation matters in Python, and it is kept exactly.

```python
def average(marks):
    """The mean mark, or None if there are no marks."""
    if not marks:
        return None
    return sum(marks) / len(marks)


cohort = {"Ada": [72, 65, 80], "Grace": [58, 91, 77]}
for name, marks in cohort.items():
    print(f"{name}: {average(marks):.1f}")

print(average([]))
```

```text {linenos=false}
Ada: 72.3
Grace: 75.3
None
```

> On the right is what it prints, in a `text` block.
