- [NVIM 0.8.3](https://github.com/neovim/neovim/releases/tag/v0.8.3) (bugfix/maintenance release)
  - Bug Fixes
    - clipboard: Show provider warning when not during batch changes.
    - diff: Avoid restoring invalid 'foldcolumn' value.
    - filetype: Don't pass empty string to detect.
    - messages: Reset msg_grid_scroll_discount when redrawing.
    - rbuffer: Handle edge case where write_ptr has wrapped around.
    - rpc: Don't parse msgpack if buflen is 0.
    - treesitter: Properly restore `'syntax'` ([#21358](https://github.com/neovim/neovim/pull/21358)).
    - treesitter: Validate language name.
  - Build System
    - deps: Bump `libvterm` to `v0.3.1`.
    - deps: Bump `tree-sitter-vimdoc` to `v1.3.0`.
  - [Reddit](https://www.reddit.com/r/neovim/comments/10rqb1t/nvim_083_bugfixmaintenance_release/)
