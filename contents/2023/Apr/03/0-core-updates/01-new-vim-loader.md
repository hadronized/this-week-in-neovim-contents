- [#22668](https://github.com/neovim/neovim/pull/22668) adds `lua-loader`.
  A builtin Lua module which byte-compiles and caches Lua files (speeds up load times). To enable, add
  `vim.loader.enable()` to your `init.lua`.
