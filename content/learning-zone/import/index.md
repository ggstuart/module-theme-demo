---
title: Build and import the package
type: exercise
weight: 2
---

Download your module as a Learning Zone package and import it into a Learning Zone module.

<!--more-->

## Build the package

Your repository already contains the instructions GitHub needs, in `.github/workflows/learning-zone.yml`.
GitHub runs them every time you commit a change.

To run them by hand:

1. Open the **Actions** tab of your repository.
2. Choose **Learning Zone package** on the left.
3. Press **Run workflow**, then the green **Run workflow** button.

After a minute the run shows a green tick.

> The first time, GitHub may ask you to enable Actions for your copy.
> Press the button to allow them.

## Download it

1. Open the finished run.
2. Under **Artifacts**, press `course-package.zip` to download it.

Do not unzip it. Learning Zone wants the zip file itself.

## Import it into Learning Zone

Use a sandbox or development module the first time, so you can see the result before students do.

1. In your Learning Zone module, open **Module Tools**, then **Course Admin**.
2. Choose **Import/Export/Copy Components**.
3. Choose **Import Components**, from a course package, and press **Start**.
4. Upload `course-package.zip`.
5. Press **Import All Components** and wait for it to finish.

## Look at the result

Open **Content** in your module.
There is a new folder named after your module code and name, with a folder for each unit in the same order as the website.

- Open a lecture and click on the first slide. Use the arrow keys or the buttons underneath.
- Open an exercise and try a copy button.

## Tidy up the names (optional)

The folder and topic names come from the `title` of each file.
To use a different name in Learning Zone only, add this to a page's settings:

```yaml
learningzone:
  title: Week 1 lab
```

To leave a page out of Learning Zone altogether:

```yaml
learningzone:
  exclude: true
```

## When things change

An imported package is a copy.
When you update your materials, import the new package, check it, and then hide or delete the old folder.
