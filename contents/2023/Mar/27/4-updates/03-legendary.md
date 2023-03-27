<h3 id="update-legendary.nvim">
  <a href="#update-legendary.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>legendary.nvim</span>
  </a>
</h3>

> 🗺️ A legend for your keymaps, commands, and autocmds, with which-key.nvim integration 

![legendary.nvim](https://user-images.githubusercontent.com/8648891/200827633-7009f5f3-e126-491c-88bd-73a0287978c4.gif)

`legendary.nvim` now has an extensions API, so users can automatically load keymaps/commands/etc. managed by other 
plugins into `legendary.nvim`'s registry, so that they can be triggered from `legendary.nvim`'s UI. For example, to load 
all of `nvim-tree.lua`'s keymaps into `legendary.nvim`, all you have to do now is add the following configuration:

```lua
require('legendary').setup({
  extensions = {
    nvim_tree = true,
  },
})
```

There are a few built-in extensions currently, and 3rd party extensions can also be added by creating a Lua module under 
the `legendary.extensions.*` namespace. See the 
[documentation](https://github.com/mrjones2014/legendary.nvim/blob/master/doc/EXTENSIONS.md) for more information.

- [GitHub](https://github.com/mrjones2014/legendary.nvim)

---
