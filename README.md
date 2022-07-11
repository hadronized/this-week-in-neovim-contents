# This Week In Neovim | Contents

This repository holds the contents of https://this-week-in-neovim.org.

## Organization

News are classified by year, and then by week number, and that file tree lives in `contents`. Contents is written
in a Markdown file named `week-%M.md` — for intance, `week-28.md`.

```
contents/
  |
  + 2021
  |  |
  |  + …
  |
  + 2022/
      |
      + …
      |
      + week-26.md
      |
      + week-27.md
      |
      + week-28.md
```

At the very beginning of a weekly cycle, a new default Markdown file for the week is created and pushed to a branch `%Y-week-%M`. PR
are accepted and must target that branch.

Before the end of the cycle, around Sunday or Monday, a PR is opened to merge `%Y-week-%M -> master`. Everyone can
partake in that phase of review, but the goal here is to ensure links work, no typo are present, etc., or if anyone want
to withdraw their updates from the weekly updates.

To finish the cycle, the merge commit is created and the article is automatically available on
https://this-week-in-neovim.org/latest or https://this-week-in-neovim.org/<year>/<week-number>.

## How to contribute?

If you want to become a content contributor, you can do different things, but there are some general rules to follow:

1. Always read the current `%Y-week-%M` state (and PRs targetting it) to ensure no one has come up yet with the same
   news as you.
2. Open PR against `%Y-week-%M` branch by adding new stuff you’ve seen.
3. Ensure your contribution is devoid of bad language and goes straight to the point. See the section about how to
   contribute actual news.
4. Wait for someone to review and merge your contribution.
5. Your news will be added to `master` at the end of the cycle.

If the branch is not created yet, you can even contribute that branch!

1. Create the `%Y-week-%M` branch. You can use the `date` command to generate that name (assuming you are rebased on
   `origin/master`, fully fetched): `git switch -c $(date +%Y-week-%M)`.
2. Copy the file `week-template.md` in `contents/<year>/week-<week-nb>.md`.
3. Open the PR.

## How do you write a news PR?

When opening a PR to add some news to the next weekly, you must always include the following elements:

- The source of the news. It can be a commit on GitHub, a changelog, a blog article, etc. anything, but you must provide
  a link. A chat discussion is not considered “a valid source of information” if we can’t link back to it.
- A super short description of the change. For instance, _“some-plugin.nvim: add new feature to sort files by size.”_.
- If the news is visual, you are strongly advised to upload some screenshots to GitHub (open an issue, slide the image,
  can the link and simply close your issue tab, do not actually create the issue). **Do not put images in your PRs as
  they will be automatically refused.**
