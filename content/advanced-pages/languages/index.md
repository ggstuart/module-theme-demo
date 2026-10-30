---
title: Code in many languages
type: exercise
weight: 1
---

Every language name a colleague is likely to type, highlight options, inline code and code inside lists.

<!--more-->

## Which blocks get a copy button?

Each heading below is the exact language name after the three backticks.
On 2026-27 only `html`, `css`, `js`, `JavaScript`, `json`, `php` and `phtml` get a button (see *Known bugs*).

### `bash`

```bash
for f in *.md; do
    echo "$f: $(wc -l < "$f") lines"
done
```

### `powershell`

```powershell
Get-ChildItem *.md | ForEach-Object {
    "{0}: {1} lines" -f $_.Name, (Get-Content $_).Count
}
```

### `http`

```http
GET /api/students/42 HTTP/1.1
Host: example.org
Accept: application/json
```

### `json`

```json
{
    "id": 42,
    "name": "Ada",
    "marks": [72, 65, 80]
}
```

### `php`

```php
<?php
$name = $_GET["name"] ?? "world";
echo "<p>Hello, " . htmlspecialchars($name) . "</p>";
```

### `markdown`

```markdown
# A heading

Some *emphasis* and a [link](https://example.org).
```

### `plaintext`

```plaintext
Plain text: no colours, no copy button.
```

### `text`

```text
Also plain text.
```

### `javascript`

```javascript
// lowercase "javascript"
console.log("hello");
```

### `JavaScript`

```JavaScript
// mixed case "JavaScript"
console.log("hello");
```

### `js`

```js
// "js"
console.log("hello");
```

### `HTML`

```HTML
<!-- upper case "HTML" -->
<p>Hello</p>
```

### `html`

```html
<!-- lower case "html" -->
<p>Hello</p>
```

### `css`

```css
body {
    font-family: system-ui;
}
```

### `typescript`

```typescript
const greet = (name: string): string => `Hello, ${name}`;
```

### `java`

```java
record Student(String name, int mark) {}
```

### `csharp`

```csharp
Console.WriteLine($"Hello, {name}!");
```

### `c`

```c
#include <stdio.h>
int main(void) { printf("hello\n"); return 0; }
```

### `go`

```go
package main

import "fmt"

func main() { fmt.Println("hello") }
```

### `rust`

```rust
fn main() {
    println!("hello");
}
```

### `yaml`

```yaml
title: My page
type: exercise
weight: 10
```

### `toml`

```toml
[params]
  moduleCode = 'DEMO1001'
```

### `diff`

```diff
- old line
+ new line
```

### `dockerfile`

```dockerfile
FROM python:3.13-slim
COPY . /app
CMD ["python", "/app/main.py"]
```

### `not-a-language`

```not-a-language
An unknown language name: shown plain, no error.
```

### `(none)`

```
No language at all.
```


## Highlight options

`{linenos=false}`:

```python {linenos=false}
print("no line numbers")
```

`{hl_lines=[2,"4-5"]}`:

```python {hl_lines=[2,"4-5"]}
a = 1
b = 2
c = 3
d = 4
e = 5
```

`{linenostart=199}`:

```python {linenostart=199}
# this listing starts at line 199
print("line 200")
```

`{linenos=inline}`:

```python {linenos=inline}
print("numbers inside the code, so copying takes them too")
```

## Inline code

Inline code such as `print("hi")`, `<div class="x">` or `SELECT *` sits in a sentence, has no colours and no button.

## Code inside lists

1. Make a folder:

   ```bash
   mkdir week1
   ```

2. Put a file in it:

   ```html
   <h1>Week 1</h1>
   ```

   - A nested bullet with code:

     ```python
     print("nested twice")
     ```

3. Done.

## A long listing

```python
print("this is line 1 of a long listing, which scrolls inside the page")
print("this is line 2 of a long listing, which scrolls inside the page")
print("this is line 3 of a long listing, which scrolls inside the page")
print("this is line 4 of a long listing, which scrolls inside the page")
print("this is line 5 of a long listing, which scrolls inside the page")
print("this is line 6 of a long listing, which scrolls inside the page")
print("this is line 7 of a long listing, which scrolls inside the page")
print("this is line 8 of a long listing, which scrolls inside the page")
print("this is line 9 of a long listing, which scrolls inside the page")
print("this is line 10 of a long listing, which scrolls inside the page")
print("this is line 11 of a long listing, which scrolls inside the page")
print("this is line 12 of a long listing, which scrolls inside the page")
print("this is line 13 of a long listing, which scrolls inside the page")
print("this is line 14 of a long listing, which scrolls inside the page")
print("this is line 15 of a long listing, which scrolls inside the page")
print("this is line 16 of a long listing, which scrolls inside the page")
print("this is line 17 of a long listing, which scrolls inside the page")
print("this is line 18 of a long listing, which scrolls inside the page")
print("this is line 19 of a long listing, which scrolls inside the page")
print("this is line 20 of a long listing, which scrolls inside the page")
print("this is line 21 of a long listing, which scrolls inside the page")
print("this is line 22 of a long listing, which scrolls inside the page")
print("this is line 23 of a long listing, which scrolls inside the page")
print("this is line 24 of a long listing, which scrolls inside the page")
print("this is line 25 of a long listing, which scrolls inside the page")
print("this is line 26 of a long listing, which scrolls inside the page")
print("this is line 27 of a long listing, which scrolls inside the page")
print("this is line 28 of a long listing, which scrolls inside the page")
print("this is line 29 of a long listing, which scrolls inside the page")
print("this is line 30 of a long listing, which scrolls inside the page")
print("this is line 31 of a long listing, which scrolls inside the page")
print("this is line 32 of a long listing, which scrolls inside the page")
print("this is line 33 of a long listing, which scrolls inside the page")
print("this is line 34 of a long listing, which scrolls inside the page")
print("this is line 35 of a long listing, which scrolls inside the page")
print("this is line 36 of a long listing, which scrolls inside the page")
print("this is line 37 of a long listing, which scrolls inside the page")
print("this is line 38 of a long listing, which scrolls inside the page")
print("this is line 39 of a long listing, which scrolls inside the page")
print("this is line 40 of a long listing, which scrolls inside the page")
print("this is line 41 of a long listing, which scrolls inside the page")
print("this is line 42 of a long listing, which scrolls inside the page")
print("this is line 43 of a long listing, which scrolls inside the page")
print("this is line 44 of a long listing, which scrolls inside the page")
print("this is line 45 of a long listing, which scrolls inside the page")
print("this is line 46 of a long listing, which scrolls inside the page")
print("this is line 47 of a long listing, which scrolls inside the page")
print("this is line 48 of a long listing, which scrolls inside the page")
print("this is line 49 of a long listing, which scrolls inside the page")
print("this is line 50 of a long listing, which scrolls inside the page")
print("this is line 51 of a long listing, which scrolls inside the page")
print("this is line 52 of a long listing, which scrolls inside the page")
print("this is line 53 of a long listing, which scrolls inside the page")
print("this is line 54 of a long listing, which scrolls inside the page")
print("this is line 55 of a long listing, which scrolls inside the page")
print("this is line 56 of a long listing, which scrolls inside the page")
print("this is line 57 of a long listing, which scrolls inside the page")
print("this is line 58 of a long listing, which scrolls inside the page")
print("this is line 59 of a long listing, which scrolls inside the page")
print("this is line 60 of a long listing, which scrolls inside the page")
print("this is line 61 of a long listing, which scrolls inside the page")
print("this is line 62 of a long listing, which scrolls inside the page")
print("this is line 63 of a long listing, which scrolls inside the page")
print("this is line 64 of a long listing, which scrolls inside the page")
print("this is line 65 of a long listing, which scrolls inside the page")
print("this is line 66 of a long listing, which scrolls inside the page")
print("this is line 67 of a long listing, which scrolls inside the page")
print("this is line 68 of a long listing, which scrolls inside the page")
print("this is line 69 of a long listing, which scrolls inside the page")
print("this is line 70 of a long listing, which scrolls inside the page")
print("this is line 71 of a long listing, which scrolls inside the page")
print("this is line 72 of a long listing, which scrolls inside the page")
print("this is line 73 of a long listing, which scrolls inside the page")
print("this is line 74 of a long listing, which scrolls inside the page")
print("this is line 75 of a long listing, which scrolls inside the page")
print("this is line 76 of a long listing, which scrolls inside the page")
print("this is line 77 of a long listing, which scrolls inside the page")
print("this is line 78 of a long listing, which scrolls inside the page")
print("this is line 79 of a long listing, which scrolls inside the page")
print("this is line 80 of a long listing, which scrolls inside the page")
print("this is line 81 of a long listing, which scrolls inside the page")
print("this is line 82 of a long listing, which scrolls inside the page")
print("this is line 83 of a long listing, which scrolls inside the page")
print("this is line 84 of a long listing, which scrolls inside the page")
print("this is line 85 of a long listing, which scrolls inside the page")
print("this is line 86 of a long listing, which scrolls inside the page")
print("this is line 87 of a long listing, which scrolls inside the page")
print("this is line 88 of a long listing, which scrolls inside the page")
print("this is line 89 of a long listing, which scrolls inside the page")
print("this is line 90 of a long listing, which scrolls inside the page")
print("this is line 91 of a long listing, which scrolls inside the page")
print("this is line 92 of a long listing, which scrolls inside the page")
print("this is line 93 of a long listing, which scrolls inside the page")
print("this is line 94 of a long listing, which scrolls inside the page")
print("this is line 95 of a long listing, which scrolls inside the page")
print("this is line 96 of a long listing, which scrolls inside the page")
print("this is line 97 of a long listing, which scrolls inside the page")
print("this is line 98 of a long listing, which scrolls inside the page")
print("this is line 99 of a long listing, which scrolls inside the page")
print("this is line 100 of a long listing, which scrolls inside the page")
print("this is line 101 of a long listing, which scrolls inside the page")
print("this is line 102 of a long listing, which scrolls inside the page")
print("this is line 103 of a long listing, which scrolls inside the page")
print("this is line 104 of a long listing, which scrolls inside the page")
print("this is line 105 of a long listing, which scrolls inside the page")
print("this is line 106 of a long listing, which scrolls inside the page")
print("this is line 107 of a long listing, which scrolls inside the page")
print("this is line 108 of a long listing, which scrolls inside the page")
print("this is line 109 of a long listing, which scrolls inside the page")
print("this is line 110 of a long listing, which scrolls inside the page")
print("this is line 111 of a long listing, which scrolls inside the page")
print("this is line 112 of a long listing, which scrolls inside the page")
print("this is line 113 of a long listing, which scrolls inside the page")
print("this is line 114 of a long listing, which scrolls inside the page")
print("this is line 115 of a long listing, which scrolls inside the page")
print("this is line 116 of a long listing, which scrolls inside the page")
print("this is line 117 of a long listing, which scrolls inside the page")
print("this is line 118 of a long listing, which scrolls inside the page")
print("this is line 119 of a long listing, which scrolls inside the page")
print("this is line 120 of a long listing, which scrolls inside the page")
```

## A very long line

```js
const wide = "a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, a very long line that does not wrap, ";
```
