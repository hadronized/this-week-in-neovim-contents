<h3 id="update-smart-splits.nvim">
  <a href="#update-smart-splits.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>smart-splits.nvim</span>
  </a>
</h3>

> 🧠 Smart, seamless, directional navigation and resizing of Neovim + terminal multiplexer splits. Supports tmux, Wezterm, and Kitty. Think about splits in terms of "up/down/left/right".

The Wezterm integration for `smart-splits.nvim` has been updated to support a new way to handle the keymaps from the Wezterm side.
The plugin now sets a [Wezterm user variable](https://wezfurlong.org/wezterm/shell-integration.html#user-vars) `IS_NVIM=true`
when initialized, and uses an `autocmd` to set it back to `false` when Neovim exits.

Previously, the Wezterm keymaps would need to check the foreground process name to check if `nvim` is running in order to decide whether to consume
the keymap or pass it on to Neovim. However, this came with some issues. The `pane:get_foreground_process_name()` function can have high and highly
variable latency, and does not work over an SSH connection, and sometimes doesn't work at all on Windows.

**Note:** This new way of configuring the Wezterm keymaps will not play very nicely with lazy-loading `smart-splits.nvim`, since
the Wezterm keymaps react to a user variable that is set only once the plugin is loaded, so the first keypress may not work, but it should
work for subsequent keys after that. However, `smart-splits.nvim` is very small, and not lazy-loading it on my system only adds 0.07ms
to my startup time, so I just stopped lazy-loading it.

In Wezterm, you can now switch this code:

```lua
-- Equivalent to POSIX basename(3)
-- Given "/foo/bar" returns "bar"
-- Given "c:\\foo\\bar" returns "bar"
local function basename(s)
  return string.gsub(s, '(.*[/\\])(.*)', '%2')
end

local function is_vim(pane)
  local process_name = basename(pane:get_foreground_process_name())
  return not not process_name:find('vim')
end
```

To just this code:

```lua
local function is_vim(pane)
  return pane:get_user_vars().IS_NVIM == 'true'
end
```

[Here's the PR](https://github.com/mrjones2014/smart-splits.nvim/pull/105) adding this functionality if you're interested.

- [GitHub](https://github.com/mrjones2014/smart-splits.nvim#wezterm)

---
