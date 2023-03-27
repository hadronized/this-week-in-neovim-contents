<h3 id="nvim-spider">
  <a href="#nvim-spider">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-spider</span>
  </a>
</h3>

> Use the w, e, b motions like a spider.

The plugin offers alternatives to vim's w, e, and b motion which differ in two ways: 
1. __Subword Movement__: The movements happen by subwords, meaning it stops at the sub-parts of a CamelCase (or SCREAMING_SNAKE_CASE or kebab-case) variable. 

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

3. __Furthermore__
- lightweight (~120 LoCs) & solely lua
- works in normal, visual, and operater-pending mode
- supports counts
- zero-config (aside from adding the keymaps you want)
- `ge` is also supported (not mentioned in the descriptions for the bad pun)

__Links__
- [GitHub](https://github.com/chrisgrieser/nvim-spider)
- [Reddit](https://www.reddit.com/r/neovim/comments/121u05r/introducing_nvimspider_use_the_w_e_b_motions_like/)

---
