[#21472](https://github.com/neovim/neovim/pull/21472): `:hardcopy` is now removed.

  - Commands removed:
      - `:hardcopy`
  - Options removed:
      `printdevice`
      `printencoding`
      `printexpr`
      `printfont`
      `printheader`
      `printmbcharset`

[#18706](https://github.com/neovim/neovim/pull/18706) `nvim -l` now invokes Lua scripts instead of setting the `lisp`
  option. To set the 'lisp' option as -l formerly did, just set it like any other option:

  ```sh
  nvim -c "set lisp"
  ```

