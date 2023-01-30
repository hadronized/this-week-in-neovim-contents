<h3 id="new-mini-basics">
  <a href="#new-mini-basics">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>mini.basics</span>
  </a>
</h3>

<video controls>
  <source
    src="https://user-images.githubusercontent.com/24854248/215277747-c0dea3eb-e8f7-4550-85ce-200b111fff55.mp4"
  >
</video>

The new `mini.basics` module of `mini.nvim` provides common configuration presets for options, mappings, and 
autocommands. After a single `require('mini.basics').setup()` you will get:

- Common options set: `termguicolors`, `number`, `ignorecase`, etc. Which ones are set is mostly based on 
  [results of the Neovim built-in options survey](https://www.reddit.com/r/neovim/comments/zg44mm/results_of_neovim_builtin_options_survey_more_in/). 
  If you set option manually beforehand, it won't get changed.
- Mappings for common actions created (if you didn't manually create particular mapping beforehand):
    - `j`/`k` will move by visible lines.
    - `<C-s>` will save buffer.
    - `go`/`gO` will create empty line after/before cursor line.
    - Mappings like `\x` will toggle common options: `\w` toggles 'wrap', `\s` - 'spell', etc.
    - And many more.
- Common autocommands created: highlight on yank, start Terminal mode when opening built-in terminal, etc.

A new addition to the _“mini”_ series of plugin, by [@echasnovski](https://github.com/echasnovski).

- [Reddit](https://www.reddit.com/r/neovim/comments/10o5sjm/minibasics_common_configuration_presets_for/)
- [GitHub](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-basics.md)

---
