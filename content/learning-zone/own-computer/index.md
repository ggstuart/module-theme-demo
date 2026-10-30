---
title: Previewing as you write (optional)
type: exercise
weight: 3
---

Optional: see each change the moment you save it, in a codespace in your browser or on your own computer.

<!--more-->

## Do you need this?

No. Everything in this module can be done in a web browser on GitHub: edit a file, commit, and GitHub builds the website and the Learning Zone package for you (see the **Actions** tab).
A live preview is just quicker once you write a lot, because you don't wait for GitHub after each change.

## In your browser: GitHub Codespaces (nothing to install)

A **codespace** is a computer in the cloud with an editor, opened in a browser tab.
This repository is set up so that a codespace already has Hugo and the theme.

1. On your repository's page press **Code > Codespaces > Create codespace on main**. The first time takes a few minutes.
2. When the editor has opened, click in the **Terminal** panel at the bottom and type:

   ```sh
   bash preview.sh
   ```

3. A preview of the website opens (if it doesn't, open the **Ports** tab and click the globe next to port 1313).
   Edit any file in `content/`, save it, and the preview updates by itself.
4. When you are happy, save your work back to GitHub: open **Source Control** on the left, type a message, press **Commit**, then **Sync Changes**.

`bash preview.sh lz` previews the Learning Zone version of the pages instead.

Codespaces are free for a number of hours each month (more with a free [GitHub Education](https://education.github.com) teacher account).
Stop a codespace when you finish (**Code > Codespaces > ... > Stop codespace**); it also stops by itself after 30 minutes without use.

## On your own computer

You need two free programs:

- **Git**, which copies your repository to your computer: [git-scm.com](https://git-scm.com/downloads)
- **Hugo**, which builds the website: [gohugo.io/installation](https://gohugo.io/installation/) (version 0.165 or later, the *extended* edition)

A text editor such as [Visual Studio Code](https://code.visualstudio.com) makes editing pleasant, but any editor works.
(VS Code with Docker can also open this repository in the same set-up as a codespace.)

Open a terminal (on Windows, *Git Bash*) and copy your repository:

```sh
git clone --recurse-submodules https://github.com/<your-user-name>/<repository-name>.git
cd <repository-name>
```

`--recurse-submodules` also fetches the theme, which provides the look of the site.

Then preview the website:

```sh
bash preview.sh
```

Open `http://localhost:1313/<repository-name>/` (Hugo prints the address).
Leave it running: every time you save a file, the page in your browser updates by itself. Press Ctrl+C to stop it.

## Build the package yourself

You don't need to, because GitHub builds it, but you can. In a codespace or a terminal in the repository's folder (needs Python 3 as well as Hugo):

```sh
bash themes/module/.github/actions/learning-zone/build.sh course-package course-package.zip
```

That is the same script GitHub runs. It builds the package in the folder `course-package`, removes files no page uses, checks it, and makes `course-package.zip`, with `imsmanifest.xml` at the top of the zip as Learning Zone needs.

## Save your work back to GitHub

```sh
git add .
git commit -m "Describe what you changed"
git push
```

GitHub then updates the website and builds a new package, just as if you had edited in the browser.
