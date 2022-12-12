<h3 id="update-grapple.nvim">
    <a href="#update-grapple.nvim">
        <span class="icon-text">
            <span class="icon">
                <i class="fa-solid fa-book"></i>
            </span>
            <span>grapple.nvim</span>
        </span>
    </a>
</h3>

> Grapple is a plugin that aims to provide immediate navigation to important files (and its last known cursor location)
> by means of persistent file tags within a project scope. Tagged files can be bound to a keymap or selected from within
> an editable popup menu.

<video controls>
  <source
    src="https://user-images.githubusercontent.com/2467016/204135078-c1c59f19-49b8-4c38-a76d-2892903816db.mov"
  >
</video>

The plugin received a large update lately in its **v0.5.1** release. Among the new things:

- Setup is now optional!

- Project scopes are now [saved as individual files](https://github.com/cbochs/grapple.nvim#persistent-state),
  instead of one large JSON blob. This means:
  - Project scopes can be loaded **lazily**; only the scopes used within a neovim session are loaded.
  - Load times should always be fast since a user will only tag a few files per project scope.
  - It's as easy as deleting a file in order to cleanup old / unused project scopes (automatic pruning is in the works).
  - Unlike [harpoon](https://github.com/ThePrimeagen/harpoon/issues/188), grapple should not see performance degradation
    over time.
- New `git_branch` scope that can save your tags to a specific git repo and branch. Useful if you use git worktrees.
- New project [Scope API](https://github.com/cbochs/grapple.nvim#usage) for custom scope resolution. This means:
  - For example, users who do not use git can define their own custom scope resolution.
- [Project scopes](https://github.com/cbochs/grapple.nvim#project-scopes) are now cached by default. This means:
  - A project scope will only be updated when necessary (i.e. a specific autocmd event is triggered).
- Project scopes can be asynchronously determined (i.e. `git_branch`).

A nice update!

- [Reddit](https://www.reddit.com/r/neovim/comments/zg08ab/updates_to_grapplenvim_v051/)
- [GitHub](https://github.com/cbochs/grapple.nvim)

---
