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

![legendary.nvim]([https://link-to-an-image-or-gif-or-video-etc.](https://user-images.githubusercontent.com/8648891/200827633-7009f5f3-e126-491c-88bd-73a0287978c4.gif))

`legendary.nvim` now supports an in-place filter syntax when defining keymaps! This is mainly useful when you want to
register keymaps that come from plugins which are only active on special filetypes or other conditions. There are special
filter keys for `filetype` and `buftype`, but you can also pass an arbitrary filter function.

For example, to register `nvim-tree.lua` keymaps with `legendary.nvim`, you can define the keymap like this:

```lua
{
  '<C-v>',
  description 'Open file under cursor in a vertical split',
  filters = {
    -- only show this keymap if the current filetype is NvimTree
    filetype = 'NvimTree',
  },
},
```

Here's another example showing all the types of filtering you can use:

```lua
{
  '<leader>s',
  description = 'My custom keymap',
  filters = {
    -- filetype and buftype can both be a string
    -- or a list of strings
    filetype = { 'ThisFiletype', 'OrThisFiletype' },
    buftype = 'nofile',
    -- Custom filter function receives the item being filtered
    -- and a context table as parameters
    function(item, context)
      return context.filetype == 'SomeFileType' and context.mode == 'v'
    end
  },
},
```

- [GitHub](https://github.com/mrjones2014/legendary.nvim)

---
