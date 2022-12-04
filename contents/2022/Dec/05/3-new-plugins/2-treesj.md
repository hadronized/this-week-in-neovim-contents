<h3 id="new-your-plugin.nvim">
  <a href="#new-your-plugin.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>TreeSJ</span>
  </a>
</h3>

![your-plugin](https://user-images.githubusercontent.com/46977173/201088511-b336cec5-cec4-437f-95b3-0208c83377fd.mov)

TreeSJ: split or join blocks of code

Neovim plugin for splitting/joining blocks of code like arrays, hashes, statements, objects, dictionaries, etc. Written in Lua, using [Tree-Sitter](https://tree-sitter.github.io/tree-sitter/).

Inspired by and partly repeats the functionality of [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim).

Features:

- Can be called from anywhere in the block: No need to move cursor to specified place to split/join block of code;
- Make cursor sticky: The cursor follows the text on which it was called;
- Autodetect mode: Toggle-mode present. Split or join blocks by same key mapping;
- Do it recursively: Expand or collapse all nested nodes? Yes, you can;
- Recognize nested languages: Filetype doesn't matter, detect language with treesitter.

Created by [@Wansmer](https://github.com/Wansmer).

- [Reddit](https://www.reddit.com/r/neovim/comments/z2iv9p/introduce_treesj_neovim_plugin_for/)
- [GitHub](https://github.com/Wansmer/treesj)

---
