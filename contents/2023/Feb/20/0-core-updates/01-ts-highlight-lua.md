- [#22257](https://github.com/neovim/neovim/pull/22257) removed the (undocumented) `vim.g.ts_highlight_lua` variable 
  that enabled treesitter highlighting for Lua files. 
  
  This variable was only meant for easier testing during the last development cycle.
  To enable treesitter highlighting for Lua files (or any of the file types with a bundled parser), either put 
  `vim.treesitter.start()` in a `.config/nvim/ftplugin/lua.lua` (and/or `help.lua`, `c.lua`, `vim.lua`) or in an 
  autocommand like:

  ```lua
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua', -- or { 'lua', 'help' },
    callback = function() vim.treesitter.start() end,
  })
  ```

---
