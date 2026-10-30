# Example module

An example module built with Graeme Stuart's [Module](https://github.com/ggstuart/Module) Hugo theme.
It is aimed at university lecturers who have never used Markdown or a static website, and answers two questions:
**how hard is it to write materials this way, and what does the result look like?**

The same Markdown files become:

- a **website** (built by `.github/workflows/website.yml` with GitHub Pages), and
- a **Learning Zone package**, `course-package.zip` (built by `.github/workflows/learning-zone.yml`), which imports into a DMU Learning Zone (Brightspace) module as a folder per unit and a topic per lecture or exercise.

## Try it

1. Press **Use this template > Create a new repository**.
2. In your copy, open the **Actions** tab, choose **Learning Zone package** and press **Run workflow**.
3. When it finishes, download `course-package.zip` from the run's page.
4. In Learning Zone: **Module Tools > Course Admin > Import/Export/Copy Components > Import Components** from a course package, upload the zip and press **Import All Components**.

The module itself (start with the *Welcome* unit) explains everything else, step by step.

## What is where

| | |
| --- | --- |
| `content/` | the materials: one folder per unit, one `index.md` per page |
| `content/slides/` | the slides that lectures are made from |
| `assets/` | pictures and HTML examples shared between pages |
| `hugo.toml` | module code, name and other settings |
| `themes/module/` | the theme (a git submodule), which provides the look and the Learning Zone export |

## On your own computer

```sh
git clone --recurse-submodules https://github.com/ggstuart-bot/example-module.git
cd example-module
hugo server                                   # the website, at http://localhost:1313/
hugo --environment learningzone --destination course-package   # the package folder
```

Needs [Hugo](https://gohugo.io/installation/) 0.165 or later (extended).

> The theme submodule currently points at the `learning-zone-export` branch of
> `ggstuart-bot/Module`, which is proposed for `ggstuart/Module` in
> [ggstuart/Module#4](https://github.com/ggstuart/Module/pull/4). Once that is merged, the submodule
> and `.github/workflows/learning-zone.yml` will point at `ggstuart/Module` instead.
