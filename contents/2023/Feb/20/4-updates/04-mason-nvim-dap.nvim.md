<h3 id="update-mason-nvim-dap.nvim">
  <a href="#update-mason-nvim-dap.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>mason-nvim-dap.nvim</span>
  </a>
</h3>

> A bridge between `mason.nvim` and `nvim-dap`.

Major changes have happened lately in the Mason ecosystem. Non exhaustive list:

- `ensure_installed` accepts what `null-ls` and `nvim-dap` accept and not the name in `mason`.
- `mason-null-ls` is able to install new sources automatically as long as the casing follows `SOURCE_NAME`, this would 
  look for SOURC`E-NAME` in `mason.nvim`.
  - This allows less maintenance gith the introduction of new tools in both plugins.
- `setup_handler` has been ported over from `mason-lspconfig`.
- `mason-nvim-dap` is able to setup adapters and its configurations with sensible and overridable defaults.
- Both adhere to SemVer.
- Several adapters have been added `mason-nvim-dap`.
- Automatic_setup sets up the resource for you!

Links:

- [Reddit](https://www.reddit.com/r/neovim/comments/1146uy8/masonnvimdapnvim_and_masonnulllsnvim_plugin/)
- [GitHub (mason-nvim-dap.nvim)](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [GitHub (mason-null-ls.nvim)](https://github.com/jay-babu/mason-null-ls.nvim)

---
