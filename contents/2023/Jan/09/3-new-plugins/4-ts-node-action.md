<h3 id="new-your-plugin.nvim">
  <a href="#new-your-plugin.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>ts-node-action.nvim</span>
  </a>
</h3>

![ts-node-action.nvim](https://user-images.githubusercontent.com/7228095/210154055-8851210e-e8e1-4ba3-a474-0be373df8d1b.gif)

A plugin framework for applying functional transformations to treesitter nodes. Out of the box, most of the actions are for ruby, but it's
incredibly simple to add your own functions, or reuse the builtin actions for new languages! Some of the functions are:
- Expand/collapse hashes/arrays/method params
- Cycle cases on identifiers/constants (snake, camel, underscore, screaming snake)
- Split/Join blocks
- Toggle Booleans
- Toggle conditionals with else into ternary and back
- Toggle conditionals without else into postfix format and back
- ... Check out github for the full list :)

Pull requests for language support are welcome

- [Reddit](https://old.reddit.com/r/neovim/comments/1054s17/new_plugin_preview_treesitter_node_action/)
- [GitHub](https://github.com/CKolkey/ts-node-action)

---
