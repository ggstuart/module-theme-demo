---
title: Your own copy
type: exercise
weight: 1
---

Create your own module from this example, change a page, and see the result.

<!--more-->

## Get a GitHub account

If you do not have one, sign up for free at [github.com](https://github.com/signup).
Use your university email address.

## Copy the starter module

1. Open the **module-starter** repository, which is the template for new modules. (It is being set up. This demo site's own [repository]({{% repository %}}) is not a template.)
2. Press the green **Use this template** button, then **Create a new repository**.
3. Give it a name, for example `CTEC1234`, and press **Create repository**.

You now have your own copy, with all the files that made this module.

## Find your way around

The files you will touch are all in the `content` folder.

```text {linenos=false}
content/
├─ _index.md               the home page
├─ welcome/                a unit (a folder)
│  ├─ _index.md            the unit's own page
│  ├─ why/index.md         a lecture
│  └─ tour/index.md        an exercise
├─ code/                   a unit
├─ getting-started/        a unit
├─ writing/                a unit
├─ learning-zone/          a unit
├─ advanced-…/             more units, using every feature (you can delete them)
├─ known-bugs/             a unit
└─ slides/                 not a unit: the slides that lectures are made from
```

> A **unit** is a folder whose `_index.md` says `type: unit`. A **page** is a folder with an `index.md` file in it.
> Pictures for a page go in the same folder as its `index.md`.
>
> `content/slides` is different: it is a store of slides, not a unit. Its pages never appear on their own,
> on the website or in Learning Zone; they only appear inside the lectures that list them.

## Change something

1. Open `content/_index.md` in your repository.
2. Press the pencil icon (**Edit this file**).
3. Change the first sentence to describe your module.
4. Press **Commit changes...**, then **Commit changes** again.

That is it: your change is saved, with a note of who made it and when.

## Change the module name

Open `hugo.toml`, which holds the settings for the whole module, and change these two lines:

```toml
[params]
  moduleCode = 'DEMO1001'
  moduleName = 'Teaching materials with Hugo'
```

The code and name appear in Learning Zone as the name of the imported folder.

## Turn on the website (optional)

Your module can also be a public website, which is handy for sharing with students outside Learning Zone.
The **Website** workflow puts the built site on a branch called `gh-pages` every time you change `main`
(it shows a note on the **Actions** tab while GitHub Pages is still off). To publish it:

1. In your repository, open **Settings > Pages**.
2. Under **Build and deployment > Source**, choose **Deploy from a branch**.
3. Under **Branch**, choose **gh-pages** and **/ (root)**, and press **Save**.

After a minute or two your site is at `https://<your-user-name>.github.io/<repository-name>/`.
The address is also shown on the workflow run's page and in **Settings > Pages**.

(GitHub Pages is free for public repositories. For a private repository it needs a paid GitHub plan, or a free
[GitHub Education](https://education.github.com) account for teachers.)
