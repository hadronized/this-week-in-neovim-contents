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

> 🧠 Smart, directional Neovim and `tmux`/`wezterm`/`kitty` split resizing and navigation. Think about splits in terms 
> of "up/down/left/right". 

![smart-splits.nvim](https://user-images.githubusercontent.com/8648891/201928611-4338e3cb-cca9-4e15-92c6-0405b7072279.gif)

`smart-splits.nvim` now supports seamless split navigation for the Kitty multiplexer! The plugin will attempt to 
automatically detect your multiplexer backend based on the presence of the following environment variables:

- `$TMUX` => `config.multiplexer_integration = 'tmux'`
- `$WEZTERM_PANE` => `config.multiplexer_integration = 'wezterm'`
- `$KITTY_LISTEN_ON` => `config.multiplexer_integration = 'kitty'` (because Kitty requires listeneing on a socket for remote commands)

Read more about [setting up Kitty's multiplexer integration](https://github.com/mrjones2014/smart-splits.nvim#kitty).

Additionally, `smart-splits.nvim` now supports semantic versioning via git tags.

- [GitHub](https://github.com/mrjones2014/smart-splits.nvim)

---
