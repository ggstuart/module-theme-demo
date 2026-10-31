---
title: SQL
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: auto 1fr auto
---

> Point at particular lines by listing them after the language name.

```sql {hl_lines=[4,"6-7"]}
SELECT s.name, AVG(m.mark) AS average
FROM students AS s
JOIN marks AS m ON m.student_id = s.id
WHERE m.year = 2026
GROUP BY s.name
HAVING AVG(m.mark) >= 40
ORDER BY average DESC;
```

````markdown {linenos=false}
```sql {hl_lines=[4,"6-7"]}
SELECT s.name, ...
```
````

> Line 4 and lines 6 to 7 are highlighted: one number per line, or a range in quotes.
