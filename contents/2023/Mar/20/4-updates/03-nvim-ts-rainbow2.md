<h3 id="update-nvim-ts-rainbow2">
  <a href="#update-nvim-ts-rainbow2">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-ts-rainbow2</span>
  </a>
</h3>

> Rainbow delimiters for Neovim through Tree-sitter.

This release brings with it bugfixes and support for new file types. A very big Thank You to all who have contributed 
their efforts.

#### Fixed

- Highlight groups getting cleared when colour scheme is reloaded
- Null-dereference error if an injected language does not have a query define

#### Added

- Query `rainbow-tags` for HTML includes `style` and `script` tags
- Query `rainbow-parens` for Javascript includes `parenthesized_expression` and
  `subscript_expression`
- Support for reStructuredText (`rst`)
- Support for Markdown (`markdown`)
- Support for Vue.js (`vue`)
- Support for Fennel (`fennel`)
- Support for React.js (part of Javascript support)
- Support for React.js in Typescript (`tsx`)

#### Links

- [GitLab](https://gitlab.com/HiPhish/nvim-ts-rainbow2)
- [GitHub mirror](https://github.com/HiPhish/nvim-ts-rainbow2)

---
