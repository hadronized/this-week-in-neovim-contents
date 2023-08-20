# This Week In Neovim | Contents

This repository holds the contents of https://this-week-in-neovim.org.

## Deprecation notice

**This repository is inactive as the owner ([@phaazon](https://github.com/phaazon)) moved away from the Vim/Neovim
community. However, you can still find all of the content available on
[the new platform](https://dotfyle.com/this-week-in-neovim) set up by [@codico](https://github.com/codicocodes).**

**Thank you.**

## Structure and architecture

News are classified by year, month, and day. The file naming scheme is quite simple `/contents/<year>/<month>/<day>`.
For instance:

```
contents/
  |
  + 2021
  |  |
  |  + …
  |
  + 2022/
      |
      + Jul
      |  |
      |  + 15
      |  |
      |  + …
```

> An important notice about formatting: both the year and the day are numerals (`2022`, `15`) but the month is not. So
> you have to use `Jul` instead of `06`. This is the case for all the months and the rule is simple: take the name of
> the month, keep only the first three characters and use an uppercase for the first one. `December -> Dec`,
> `August -> Aug`, etc.

In previous versions of TWiN (i.e. `twin-0.1`), the day was a file (`NN.md`). The current version of the `twin` library
still supports those so that we didn’t have to rewrite all the contents, but this a legacy and deprecated architecture.
**The day is now a directory**, which means that it contains sub-directories. The way it works is that `twin` will scan
the subdirectory and will perform a DFS on them after having sorted a given level by file paths (lexicographic sort). So
it will start by sorting the first layer, then will enter the first directory, sort all of its files, enter another
directory, etc. in a DFS way. Once `twin` finds a file, it will assume it’s Markdown (it won’t even look at the
extension) and will simply load it and concatenate it to what it has already processed. The end result is the final
Markdown representing the news.

The hierarchy and the name of the files don’t matter; what matter is the order in which the files are loaded. Because of
that, there is a convention for sub-directories and some files. Starting at a given day (for instance,
`contents/2022/Jul/15/`), we have:

- `0-core-updates/`: contains Neovim Core updates.
  - `0-HEADER.md`: the header that is always present, even if there are no changes.
  - Then any kind of news. Preferably one file per issue / news.
- `1-need-help`/: section for plugins requiring help. That section is removed if no plugin requires help.
  - `0-HEADER.md`: the header that is always present if there is at least one plugin requiring help.
- `2-guides/`: exact same structure but for guides, tutorials, blog posts, videos, etc.
- `3-new-plugins/`: ditto, but for new plugins.
- `4-updates/`: ditto, but for changes for already existing plugins.
- `5-did-you-know.md`: a single file for adding Neovim tips.
- `6-want-to-contribute.md`: a single immutable file; should never change.

At the very beginning of a weekly cycle, a new day directory for the week is created and pushed to a branch `%Y-%M-%d`.
PRs are accepted and must target that branch. Notice that the directory is dated (year, month, day), and then we
_expect_ a release to be done on that day. If for whatever reason we can’t make it, we will not change the branch name,
but we will update the directory _eventually_.

Before the end of the cycle, by Sunday sunset, while listening to some dope synthwave, `%Y-%M-%d` is merged into
`master`. Everyone can partake in that phase of review, but the goal here is to ensure links work, no typo are present,
etc., or if anyone want to withdraw their updates from the weekly updates.

To finish the cycle, the merge commit is created and the article is automatically available on
https://this-week-in-neovim.org/latest or `https://this-week-in-neovim.org/<year>/<month>/<day>`.

## How to contribute?

If you want to become a content contributor, you can do different things, but there are some general rules to follow:

1. Always read the current `%Y-%M-%d` branch (and PRs targetting it) to ensure no one has come up with the same
   news as you yet.
2. Open a PR against `%Y-%M-%d` branch by adding new stuff you’ve seen. Depending on what you want to add:
  - Adding some Core updates? Add them in `0-core-updates/`, one file per update.
  - Spotted a plugin requiring help? Add it in `1-need-help`. One file per plugin.
  - Same for all the rest of the directories, you got it, you’re smart.
3. Ensure your contribution is devoid of bad language and goes straight to the point. See the section about how to
   contribute actual news [here](#how-do-you-write-a-news-pr), especially for formatting, correct English writing, etc.
4. Wait for someone to review and merge your contribution.
5. Your news will be added to `master` at the end of the cycle.

If the branch is not created yet, you can even contribute that branch!

1. Create the `%Y-%M-%d` branch. It must start from `master`.
2. Copy the [template](./template) directory in `contents/<year>/<month>/<day>/`.
3. Open the PR.

## How do you write a news PR?

When opening a PR to add some news to the next weekly, you must always include the following elements (in order).

- If the plugin already exists and it’s about an update of it, add a quoteblock with a single line explaining what the
  plungin is about. For instance, `> A plugin that does a very interesting thing.`
- Then add an image, a gif, a video or even embed a video player. This is super important as visual things are super
  easy for people to get their head around, and it looks pretty, too.

  You are strongly advised to upload some screenshots to GitHub (open an issue, slide the image,
  get the link and simply close your issue tab, do not actually create the issue). **Do not put images in your PRs as
  they will be automatically refused — we don’t host the content, we only link to it.** If you don’t want to use GitHub,
  that’s fine, but ensure to use an image host that will remain stable in time and has permalinks.
- A description of the change.
- The source of the news. It can be a commit on GitHub, a changelog, a blog article, etc. anything, but you must provide
  a link. A chat discussion is not considered “a valid source of information” if we can’t link back to it — so GitHub
  discussions / issues are valid, since they have a permalink to them. The goal is to write a list of news, with a link
  to the actual news so that readers can read further more if they want to.

Each news is a block of both HTML and Markdown. Depending on the category, its header and content might change. At the
beginning of each cycle, when we copy the [template](./template) directory, all sections contains an example. **Do not
remove it** and simply copy it — that will prevent merge conflicts. The examples will be removed before merging to
`master`.
