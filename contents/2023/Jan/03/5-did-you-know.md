# [Did you know?](#tips) {#tips}

Did you know that you can automatically jump to the last place you’ve visited in a file before exiting? Just add this 
`autocmd `in your `init.lua`:

```lua
vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
```
It will search mark `"` which contains the cursor position when last exiting the buffer and set the cursor position to
that location. A pretty nice trick to know!
