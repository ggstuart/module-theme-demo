---
title: Bash
classes: [burger, gap]
params:
  layout:
    cols: 1fr 1fr
    rows: auto 1fr auto
---

> A short command reads better without line numbers.

```bash {linenos=false}
# a lab folder, with a web server in it
mkdir -p ~/labs/week1 && cd ~/labs/week1
echo "<h1>It works</h1>" > index.html
python3 -m http.server 8000
```

```text {linenos=false}
$ curl http://localhost:8000/
<h1>It works</h1>
```

> `{linenos=false}` turns the line numbers off. On the right, a second terminal checks that the server works.
