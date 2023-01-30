# [Did you know?](#tips) {#tips}

We know how to compare changes in a file with the `HEAD` in our git repo. But how to compare changes in the current 
buffer with a related file on your disk, before it will be saved, if Git does not track this file yet?

_Bram Moolenaar_ took care of it in `usr_05.txt`. Here is an example with little improvements in Lua:

```lua
vim.api.nvim_create_user_command('DiffOrig', function()
  -- Get start buffer
  local start = vim.api.nvim_get_current_buf()

  -- `vnew` - Create empty vertical split window
  -- `set buftype=nofile` - Buffer is not related to a file, will not be written
  -- `0d_` - Remove an extra empty start row
  -- `diffthis` - Set diff mode to a new vertical split
  vim.cmd('vnew | set buftype=nofile | read ++edit # | 0d_ | diffthis')

  -- Get scratch buffer
  local scratch = vim.api.nvim_get_current_buf()

  -- `wincmd p` - Go to the start window
  -- `diffthis` - Set diff mode to a start window
  vim.cmd('wincmd p | diffthis')

  -- Map `q` for both buffers to exit diff view and delete scratch buffer
  for _, buf in ipairs({ scratch, start }) do
    vim.keymap.set('n', 'q', function()
      vim.api.nvim_buf_delete(scratch, { force = true })
      vim.keymap.del('n', 'q', { buffer = start })
    end, { buffer = buf })
  end
end, {})
```

More with `:h :DiffOrig`.
