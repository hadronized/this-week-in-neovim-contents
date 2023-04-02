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

> 🧠 Smart, directional Neovim and tmux/wezterm split resizing and navigation. Think about splits in terms of
> "up/down/left/right".

![smart-splits.nvim](https://user-images.githubusercontent.com/8648891/201928611-4338e3cb-cca9-4e15-92c6-0405b7072279.gif)

`smart-splits.nvim` now supports the Wezterm multiplexer in addition to `tmux`! Seamlessly navigate across and resize
Neovim and Wezterm split panes.

Since multiple multiplexer backends are now supported, if you've explicitly set `config.tmux_integration = true`, you
will receive a deprecation warning, as the option has changed to a more generic
`config.multiplexer_integration = 'tmux'` or `config.multiplexer_integration = 'wezterm'`. You can also set this config
value to `false` to explicitly disable it.

`smart-splits.nvim` will try to intelligently select the multiplexer backend automatically based on the presence of
`$TMUX` and `$WEZTERM_PANE` environment variables, unless you've disabled it explicitly.

```lua
require('smart-spits').setup({
  multiplexer_integration = 'wezterm',
  -- or
  -- multiplexer_integration = 'tmux',
  -- or
  -- multiplexer_integration = false,
})
```

See [Multiplexer Integrations](https://github.com/mrjones2014/smart-splits.nvim#multiplexer-integrations) for more information.

- [GitHub](https://github.com/mrjones2014/smart-splits.nvim)

---
