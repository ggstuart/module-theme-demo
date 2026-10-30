# Module theme demo

A demonstration module built with Graeme Stuart's [Module](https://github.com/ggstuart/Module) Hugo theme.
It is aimed at university lecturers who have never used Markdown or a static website, and answers two questions:
**how hard is it to write materials this way, and what does the result look like?**

The same Markdown files become:

- a **website** (built by `.github/workflows/website.yml` and published with GitHub Pages at https://ggstuart.github.io/module-theme-demo/), and
- a **Learning Zone package**, `course-package.zip` (built by `.github/workflows/learning-zone.yml`), which imports into a DMU Learning Zone (Brightspace) module as a folder per unit and a topic per lecture or exercise.

This repository is the theme's demonstration site and test bed: changes to the theme are tried here before
they reach real modules. It is not a template. A separate **module-starter** repository will be the template
to start a new module from.

## Try it

Everything works in a web browser: nothing to install.

1. Open the **Actions** tab, choose **Learning Zone package**, and open the latest run.
2. Download `course-package.zip` from the run's page (under *Artifacts*).
3. In Learning Zone: **Module Tools > Course Admin > Import/Export/Copy Components > Import Components** from a course package, upload the zip and press **Import All Components**.

## Changes and previews

Changes go through pull requests. For each pull request the workflows:

- build the website and the Learning Zone package, and attach both to the run as artifacts (`website` and `course-package.zip`);
- publish a preview of the website at `https://ggstuart.github.io/module-theme-demo/pr-preview/pr-<number>/` and link it in a comment
  (not for pull requests from forks, which are only built).

Merging to `main` publishes the site at the top of the `gh-pages` branch, which GitHub Pages serves
(**Settings > Pages > Build and deployment > Source: Deploy from a branch, Branch: gh-pages, / (root)**).
Closing a pull request removes its preview.

The module itself (start with the *Start here* unit) explains everything else, step by step.

## Units

- **The basics**: *Start here*, *Code listings* (the headline feature: highlighted code in Python, Java, JavaScript, HTML, SQL and bash), *Getting started*, *Write your own*, *Into Learning Zone*.
- **Advanced** (also a test bed for theme changes): *lectures and slides*, *exercises*, *site settings*, *odd and broken input*, and *an empty unit*. They use every feature of the theme, including the ways it is likely to be misused.
- **Known bugs**: one page per known theme bug, each with a live example that changes by itself once the fix reaches the theme, a workaround, and a **Fixed in** line.

A module started from this one can simply delete the `advanced-*`, `odd-input`, `site-settings`, `empty-unit`, `known-bugs` folders and `content/stray.md` / `content/loose-page`.

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
git clone --recurse-submodules https://github.com/ggstuart/module-theme-demo.git   # not needed in a codespace
cd module-theme-demo
bash preview.sh      # the website, at http://localhost:1313/module-theme-demo/ (in a codespace it opens by itself)
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

**The theme here tracks unreleased work.** The `themes/module` submodule and the Learning Zone workflow point at the
`learning-zone-export` branch of `ggstuart-bot/Module`, proposed for `ggstuart/Module` in
[ggstuart/Module#4](https://github.com/ggstuart/Module/pull/4) and not merged yet. Once it is merged and released,
both will point at a tag of `ggstuart/Module` instead (see *Getting started > Keeping the theme up to date*).
