<h3 id="nvim-spider">
  <a href="#nvim-spider.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-spider.nvim</span>
  </a>
</h3>

The plugin offers alternatives to vim's w, e, and b motion which differ in two ways: 
1. __Subword Movement__: The movements happen by subwords, meaning it stops at the sub-parts of an CamelCase (or SCREAMING_SNAKE_CASE or kebab-case) variable are considered words. (This is essentially what CamelCaseMotion.vim does.)

```lua
-- positions vim's `w` will move to
local myVariableName = FOO_BAR_BAZ

--    ^              ^ ^

-- positions spider's `w` will move to
local myVariableName = FOO_BAR_BAZ
--    ^ ^       ^    ^ ^   ^   ^
```

2. __Skipping Insignificant Punctuation__: A sequence of one or more punctuation characters is considered significant if it is surrounded by whitespace and does not includes any non-punctuation characters. This speeds up the movement across the line by reducing the number of mostly unnecessary stops.

```lua
-- positions vim's `w` will move to
if foo:find("%d") and foo == bar then print("[foo] has" .. bar) end
-- ^  ^^   ^  ^^  ^   ^   ^  ^   ^    ^    ^  ^  ^ ^  ^ ^  ^  ^ ^  -> 21

-- positions spider's `w` will move to
if foo:find("%d") and foo == bar then print("[foo] has" .. bar) end
-- ^   ^      ^   ^   ^   ^  ^   ^    ^       ^    ^    ^  ^    ^  -> 14
```

3. Furthermore
- lightweight and fully written in lua
- works in normal, visual, and operater-pending mode
- supports counts
- zero-config (aside from adding the keymaps you want)
- `ge` is also supported (not mentioned in the descriptions for the bad pun, duh)

__Links__
- [Reddit](https://www.reddit.com/r/neovim/comments/121u05r/introducing_nvimspider_use_the_w_e_b_motions_like/)
- [GitHub](https://github.com/chrisgrieser/nvim-spider)

---
