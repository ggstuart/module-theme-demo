---
title: SQL
params:
  layout:
    cols: 2fr 1fr
---

```sql {hl_lines=[4]}
SELECT s.name, AVG(m.mark) AS average
FROM students AS s
JOIN marks AS m ON m.student_id = s.id
GROUP BY s.name
ORDER BY average DESC;
```

> Line 4 is highlighted with `{hl_lines=[4]}` after the language name.
