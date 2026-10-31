---
title: Java
classes: [burger, gap]
params:
  layout:
    cols: 3fr 2fr
    rows: auto 1fr auto
---

> Any language works: write its name after the three backticks.

```java
public class Greeting {
    public static void main(String[] args) {
        String[] names = {"Ada", "Grace", "Alan"};
        for (String name : names) {
            System.out.println("Hello, " + name + "!");
        }
    }
}
```

```text {linenos=false}
$ java Greeting.java
Hello, Ada!
Hello, Grace!
Hello, Alan!
```

> The colours and line numbers are added for you. Program output goes in a `text` block.
