- [#20956](https://github.com/neovim/neovim/pull/20956) `vim.secure.read()` and use it for `'exrc'`

  Add the `vim.secure.read()` function in Lua which prompts the user whether the given file is trusted or not. This
  function is used to implement the `'exrc'` feature. By explicitly asking the user whether or not a `.nvimrc` or
  `.exrc` file is trusted (and only sourcing the file if so), the most trivial security issues with the `'exrc'` options
  are resolved and the function can be un-deprecated.

---
