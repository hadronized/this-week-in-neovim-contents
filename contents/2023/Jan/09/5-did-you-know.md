# [Did you know?](#tips) {#tips}

Last week, we saw how to [jump to the last place](https://this-week-in-neovim.org/2023/Jan/02#tips) you’ve visited in a file.
Today we'll learn how to disable `hlsearch` **automatically** when your search done and enable on next searching without
extra plugins. Add next lines in your `init.lua`:

```lua
local ns = vim.api.nvim_create_namespace('toggle_hlsearch')

local function toggle_hlsearch(char)
  if vim.fn.mode() == 'n' then
    local keys = { '<CR>', 'n', 'N', '*', '#', '?', '/' }
    local new_hlsearch = vim.tbl_contains(keys, vim.fn.keytrans(char))

    if vim.opt.hlsearch:get() ~= new_hlsearch then
      vim.opt.hlsearch = new_hlsearch
    end
  end
end

vim.on_key(toggle_hlsearch, ns)
```

Also, if you don’t want to have a listener listening to all your keys, you can just achieve the same result manually by
calling the `:noh` (`:nohlsearch`), which removes the highlighting of the search.
