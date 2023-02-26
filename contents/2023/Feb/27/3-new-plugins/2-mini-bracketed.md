<h3 id="new-mini.bracketed">
  <a href="#new-mini.bracketed">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>mini.bracketed</span>
  </a>
</h3>

<video controls>
  <source
    src="https://user-images.githubusercontent.com/24854248/220173251-cd905d8f-ad07-4654-bba5-971220fad80a.mp4"
  >
</video>

A `mini.bracketed` module of `mini.nvim` implements functionality and mappings
to go forward/backward with square brackets. This is a Lua evolution of
[tpope/vim-unimpaired](https://github.com/tpope/vim-unimpaired) with **much more targets**:

| Target                                            | Mappings            |
|---------------------------------------------------|---------------------|
| Buffer                                            | `[B` `[b` `]b` `]B` |
| Comment block                                     | `[C` `[c` `]c` `]C` |
| Conflict marker                                   | `[X` `[x` `]x` `]X` |
| Diagnostic                                        | `[D` `[d` `]d` `]D` |
| File on disk                                      | `[F` `[f` `]f` `]F` |
| Indent change                                     | `[I` `[i` `]i` `]I` |
| Jump from jumplist inside current buffer          | `[J` `[j` `]j` `]J` |
| Location from location list                       | `[L` `[l` `]l` `]L` |
| Old files                                         | `[O` `[o` `]o` `]O` |
| Quickfix entry from quickfix list                 | `[Q` `[q` `]q` `]Q` |
| Tree-sitter node and parents                      | `[T` `[t` `]t` `]T` |
| Undo states from specially tracked linear history | `[U` `[u` `]u` `]U` |
| Window in current tab                             | `[W` `[w` `]w` `]W` |
| Yank selection replacing latest put region        | `[Y` `[y` `]y` `]Y` |

- [Reddit](https://www.reddit.com/r/neovim/comments/118511i/minibracketed_go_forwardbackward_with_square/)
- [GitHub](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-bracketed.md)

---
