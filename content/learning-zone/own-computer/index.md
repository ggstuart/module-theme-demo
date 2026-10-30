---
title: Working on your own computer
type: exercise
weight: 3
---

Optional: preview your changes instantly on your own computer before you commit them.

<!--more-->

## Do you need this?

No. Everything in this module can be done in a web browser on GitHub.
Working on your own computer is faster once you write a lot, because you see each change the moment you save the file.

## Install the tools

You need two free programs:

- **Git**, which copies your repository to your computer: [git-scm.com](https://git-scm.com/downloads)
- **Hugo**, which builds the website: [gohugo.io/installation](https://gohugo.io/installation/) (version 0.165 or later, the *extended* edition)

A text editor such as [Visual Studio Code](https://code.visualstudio.com) makes editing pleasant, but any editor works.

## Copy your repository

Open a terminal (on Windows, *Git Bash*) and run:

```sh
git clone --recurse-submodules https://github.com/<your-user-name>/<repository-name>.git
cd <repository-name>
```

`--recurse-submodules` also fetches the theme, which provides the look of the site.

## Preview the website

```sh
hugo server
```

Open the address it shows, usually `http://localhost:1313/`.
Leave it running: every time you save a file, the page in your browser updates by itself.

To see the Learning Zone version of the pages instead:

```sh
hugo server --environment learningzone
```

## Build the package yourself

```sh
hugo --environment learningzone --destination course-package
cd course-package && zip -r ../course-package.zip . && cd ..
```

On Windows PowerShell, use this instead of the `zip` line:

```powershell
Compress-Archive -Path course-package\* -DestinationPath course-package.zip
```

## Save your work back to GitHub

```sh
git add .
git commit -m "Describe what you changed"
git push
```

GitHub then updates the website and builds a new package, just as if you had edited in the browser.
