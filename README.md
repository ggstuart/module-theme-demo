# Example module

An example module built with Graeme Stuart's [Module](https://github.com/ggstuart/Module) Hugo theme.
It is aimed at university lecturers who have never used Markdown or a static website, and answers two questions:
**how hard is it to write materials this way, and what does the result look like?**

The same Markdown files become:

- a **website** (built by `.github/workflows/website.yml` with GitHub Pages), and
- a **Learning Zone package**, `course-package.zip` (built by `.github/workflows/learning-zone.yml`), which imports into a DMU Learning Zone (Brightspace) module as a folder per unit and a topic per lecture or exercise.

## Try it

Everything works in a web browser: nothing to install.

1. Press **Use this template > Create a new repository**.
2. In your copy, open the **Actions** tab, choose **Learning Zone package** and press **Run workflow**.
3. When it finishes, download `course-package.zip` from the run's page (under *Artifacts*).
4. In Learning Zone: **Module Tools > Course Admin > Import/Export/Copy Components > Import Components** from a course package, upload the zip and press **Import All Components**.

Edit pages on GitHub (the pencil icon), commit, and both workflows run again.
The website is optional: turn it on in **Settings > Pages > Build and deployment > Source: GitHub Actions**
(until then the *Website* workflow passes with a note saying Pages is off).

The module itself (start with the *Start here* unit) explains everything else, step by step.

## Units

- **The basics**: *Start here*, *Code listings* (the headline feature: highlighted code in Python, Java, JavaScript, HTML, SQL and bash), *Getting started*, *Write your own*, *Into Learning Zone*.
- **Advanced** (also a test bed for theme changes): *lectures and slides*, *exercises*, *site settings*, *odd and broken input*, and *an empty unit*. They use every feature of the theme, including the ways it is likely to be misused.
- **Known bugs**: one page per known theme bug, each with a live example that changes by itself once the fix reaches the theme, a workaround, and a **Fixed in** line.

A copy made for teaching can simply delete the `advanced-*`, `odd-input`, `site-settings`, `empty-unit`, `known-bugs` folders and `content/stray.md` / `content/loose-page`.

## What is where

| | |
| --- | --- |
| `content/` | the materials: one folder per unit (`_index.md` with `type: unit`), one `index.md` per page |
| `content/slides/` | not a unit: the slides that lectures are made from |
| `assets/` | pictures and HTML examples shared between pages |
| `hugo.toml` | module code, name and other settings |
| `config/learningzone/` | settings for previewing the Learning Zone version |
| `themes/module/` | the theme (a git submodule), which provides the look and the Learning Zone export |
| `.devcontainer/` | set-up for GitHub Codespaces (Hugo ready installed) |
| `.github/` | the two workflows, and Dependabot to offer theme updates |

## Live preview (optional)

In a codespace (**Code > Codespaces > Create codespace on main**) or on your own computer with
[Hugo](https://gohugo.io/installation/) 0.165 or later (extended), Git and Python 3:

```sh
git clone --recurse-submodules https://github.com/ggstuart-bot/example-module.git   # not needed in a codespace
cd example-module
bash preview.sh      # the website, at http://localhost:1313/example-module/ (in a codespace it opens by itself)
bash preview.sh lz   # the Learning Zone version of the pages
```

To build the package yourself, the same way the workflow does:

```sh
bash themes/module/.github/actions/learning-zone/build.sh course-package course-package.zip
```

or with plain Hugo (no size reduction), zipping the folder's contents so that `imsmanifest.xml` is at the root of the zip:

```sh
hugo --environment learningzone --destination course-package
cd course-package && zip -r -X ../course-package.zip . && cd ..
```

## Theme version

The theme submodule and the Learning Zone workflow currently point at the `learning-zone-export` branch of
`ggstuart-bot/Module`, which is proposed for `ggstuart/Module` in
[ggstuart/Module#4](https://github.com/ggstuart/Module/pull/4). Once that is merged and released, both will
point at a tag of `ggstuart/Module` instead, so a copy of this template only changes when you accept an update
(see *Getting started > Keeping the theme up to date*).
