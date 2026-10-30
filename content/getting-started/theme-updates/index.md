---
title: Keeping the theme up to date
type: exercise
weight: 2
---

How your copy gets improvements to the theme, and why it doesn't change by surprise.

<!--more-->

## What the theme is

The look of your module, the slide controls and the Learning Zone export all come from a **theme** called *Module*.
Your repository doesn't contain a copy of it: the folder `themes/module` is a **submodule**, a pointer to one exact version of the theme's own repository.

That means your module keeps working the same way until you choose to update it.

## Update with a pull request (easiest)

This repository includes a file `.github/dependabot.yml`.
Once a week, GitHub's *Dependabot* checks for a newer version of the theme and, if there is one, opens a **pull request** in your repository called something like *Bump themes/module*.

1. Open the **Pull requests** tab and open the pull request.
2. Look at the **Checks** at the bottom of the pull request: the *Learning Zone package* workflow builds a package with the new theme and the *Website* workflow builds the site with it. A green tick means both built. (Pull requests from Dependabot are only built, not previewed.)
3. Press **Merge pull request**. Your website and package now use the new theme.

If you don't want an update yet, close the pull request. Nothing changes.

## Update by hand

In a codespace or on your own computer, in the repository's folder:

```sh
git submodule update --remote themes/module
git add themes/module
git commit -m "Update the theme"
git push
```

## The Learning Zone workflow

`.github/workflows/learning-zone.yml` uses the theme's GitHub Action to build the package.
The line that starts `uses: ggstuart-bot/Module/...@` says which version of the action to use.
For now it points at the branch where the export is being developed.
When the theme has tagged releases, it will name a release (for example `@v2026.1`), the same one as the theme submodule, so the two always match;
Dependabot then opens pull requests for that line too.
