<h3 id="lsp-format-modifications.nvim">
  <a href="#lsp-format-modifications.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
      </span>
    <span>lsp-format-modifications.nvim</span>
  </a>
</h3>

LSP formatting, but only on modified text regions.

Many projects suggest contributors use an autoformatter to keep code style consistent. However, in larger projects with legacy code, there can be plenty of places where the style deviates from the autoformatter's preference. In that case, you don't want to format entire files — you'll get very noisy diffs! But you also don't want to comb through all of the changes you've made, manually applying the autoformatter.

The solution implemented by this plugin is to run the autoformatter over the changed lines as defined by the revision control system.

Created by [@joechrisellis](https://github.com/joechrisellis).

- [GitHub](https://github.com/joechrisellis/lsp-format-modifications.nvim)
- [Reddit](https://www.reddit.com/r/neovim/comments/yrcejf/lspformatmodificationsnvim_lsp_formatting_but/)

---
