---
title: Write your first page
type: exercise
weight: 2
---

Add a new exercise page to your module, using headings, lists, a link and a picture.

<!--more-->

## Make a new page

In your repository on GitHub:

1. Open the `content/writing` folder.
2. Press **Add file > Create new file**.
3. In the name box type `my-page/index.md`.
   Typing the `/` makes the folder for you.

## Add the settings

Every page starts with a few settings between two lines of `---`.
Type or paste this at the top of the file:

```yaml
---
title: My first page
type: exercise
weight: 10
---
```

- `title` is the page title, used everywhere including Learning Zone.
- `type: exercise` makes it an exercise page like this one.
- `weight` puts the pages of a unit in order. Higher numbers come later.

## Write something

Under the settings, write a short introduction, then a line containing `<!--more-->`.
Anything above that line is used as the page summary on the unit page.

```markdown
This week we look at how plants make food.

<!--more-->

## Before the lab

Read chapter 3 and bring:

- a lab coat
- your notebook

## In the lab

1. Collect a leaf sample.
2. Look at it under the microscope.
3. Sketch what you see.

See the [Royal Society of Biology](https://www.rsb.org.uk) for more.
```

## Add a picture

1. Go back to the `content/writing/my-page` folder.
2. Press **Add file > Upload files** and upload a picture, for example `leaf.jpg`.
3. Edit `index.md` and add:

```markdown
![A leaf under the microscope](leaf.jpg)
```

> Always describe the picture in the square brackets.
> Screen readers read that text aloud to students who cannot see the image.

## Save and look

Press **Commit changes**.
If you turned on the website, it updates itself in a minute or two.
Your new page also appears in the next Learning Zone package you build.

## Check your understanding

Compare your file with the source of this page, which is in `content/writing/first-page/index.md`.
Everything on this page uses only what you have just seen.
