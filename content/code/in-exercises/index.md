---
title: Code in an exercise
type: exercise
weight: 1
---

How to put a code listing in an exercise, in six languages.

<!--more-->

## The whole trick

Write three backticks and the name of the language, paste the code, and finish with three backticks:

````markdown
```python
print("Hello, students!")
```
````

That gives:

```python
print("Hello, students!")
```

The colours, the line numbers and the monospaced font are automatic.
Indentation is kept exactly as you typed it, and quotes stay straight, so students can copy code that actually runs.

## Python

```python
def average(marks):
    """Return the mean of a list of marks, or None for an empty list."""
    if not marks:
        return None
    return sum(marks) / len(marks)


cohort = {"Ada": [72, 65, 80], "Grace": [58, 91, 77]}
for name, marks in cohort.items():
    print(f"{name}: {average(marks):.1f}")
```

## Java

```java
public class Greeting {
    public static void main(String[] args) {
        String name = args.length > 0 ? args[0] : "world";
        for (int i = 1; i <= 3; i++) {
            System.out.println(i + ": Hello, " + name + "!");
        }
    }
}
```

## JavaScript

```js
const button = document.querySelector("#greet");
button.addEventListener("click", () => {
    const name = prompt("What is your name?");
    alert(`Hello, ${name || "stranger"}!`);
});
```

## HTML

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>My first web page</title>
</head>
<body>
    <h1>Hello, Learning Zone!</h1>
    <button id="greet">Say hello</button>
</body>
</html>
```

## SQL

```sql
SELECT s.name, AVG(m.mark) AS average
FROM students AS s
JOIN marks AS m ON m.student_id = s.id
WHERE m.year = 2026
GROUP BY s.name
HAVING AVG(m.mark) >= 40
ORDER BY average DESC;
```

## Bash

```bash
# make a folder for the lab, and start a web server in it
mkdir -p ~/labs/week1 && cd ~/labs/week1
echo "<h1>It works</h1>" > index.html
python3 -m http.server 8000
```

## Useful extras

Point at particular lines by listing them after the language:

````markdown
```python {hl_lines=[3,4]}
...
```
````

```python {hl_lines=[3,4]}
def average(marks):
    """Return the mean of a list of marks, or None for an empty list."""
    if not marks:
        return None
    return sum(marks) / len(marks)
```

Turn the line numbers off for a one-liner with `{linenos=false}`:

```bash {linenos=false}
python3 average.py
```

Some languages also get a **copy to clipboard** button. See *Known bugs* for which ones.
The name after the backticks can be any of [hundreds of languages](https://gohugo.io/content-management/syntax-highlighting/#languages).
