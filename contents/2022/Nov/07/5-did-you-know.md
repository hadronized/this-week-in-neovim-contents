# [Did you know?](#tips) {#tips}

---

Have you migrated from [**nvim-lsp-installer**](https://github.com/williamboman/nvim-lsp-installer) to [**mason.nvim**](https://github.com/williamboman/mason.nvim)? `nvim-lsp-installer` installed servers to a different location than `mason.nvim` - remember to clean up the old installation directory to free up disk space! The default installation directory of `nvim-lsp-installer` are:

- Unix: `~/.local/share/nvim/lsp_servers`
- Windows: `~\AppData\Local\nvim-data\lsp_servers`

These directories can safely be removed if you're no longer using `nvim-lsp-installer`!
