<h3 id="local-highlight.nvim">
  <a href="#local-highlight.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>local-highlight.nvim</span>
  </a>
</h3>

![local-highlight.nvim](https://github.com/tzachar/local-highlight.nvim)

Multiple plugins to highlight the word under the cursor exist. However, none of them solves all of the following issues at once:

1. Performance (especially on large files)
2. Format mangling: do not mangle the current formatting options of the
   highlighted words (e.g., italics, treesitter highlights).

![local-highlight.nvim](https://github.com/tzachar/local-highlight.nvim) will
only process the currently visible parts of your buffer, and use ext-marks to
highlight the word under the cursor.

# In Action

![recording](https://user-images.githubusercontent.com/4946827/217664452-eb79ff0c-fa91-4d24-adcd-519faf4a2785.gif)

- [Reddit](https://www.reddit.com/r/neovim/comments/10xf7s0/localhighlightnvim_blazing_fast_highlight_of_word/)
- [GitHub](https://github.com/tzachar/local-highlight.nvim)

---
