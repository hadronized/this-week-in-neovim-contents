<h3 id="ts-node-action.nvim">
  <a href="#ts-node-action.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>ts-node-action.nvim</span>
  </a>
</h3>

![ts-node-action.nvim](https://user-images.githubusercontent.com/7228095/210154055-8851210e-e8e1-4ba3-a474-0be373df8d1b.gif)

A plugin framework for applying functional transformations to treesitter nodes. If you've ever found yourself doing some uninteresting reformatting actions on text frequently, speed up your workflow by writing a function to do the hard work for you! Out of the box most of the actions are for ruby, but Javascript, Python, Lua, and JSON have some actions too. And it's incredibly simple to add your own functions or reuse the builtin actions for new languages. 

Some of the built-in functions are:
- Expand/collapse hashes/arrays/method params
- Cycle cases on identifiers/constants (snake, camel, underscore, screaming snake)
- Split/Join blocks
- Toggle Booleans
- Toggle conditionals with else into ternary and back
- Toggle conditionals without else into postfix format and back
- ... And more! Check out github for the full list :)

Pull requests for language support are welcome! Written by [@CKolkey](https://github.com/CKolkey)!

- [Reddit](https://old.reddit.com/r/neovim/comments/1054s17/new_plugin_preview_treesitter_node_action/)
- [GitHub](https://github.com/CKolkey/ts-node-action)

---
