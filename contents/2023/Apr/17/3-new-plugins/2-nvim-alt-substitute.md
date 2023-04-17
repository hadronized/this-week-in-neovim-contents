<h3 id="nvim-alt-substitute">
  <a href="#nvim-alt-substitute">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-alt-substitute</span>
  </a>
</h3>

![nvim-alt-substitute](https://user-images.githubusercontent.com/73286100/231134276-e33b4ee8-611c-4b27-9c57-031ae13fc268.mp4)

> A substitute of vim's `:substitute` that uses __lua patterns instead of vim regex__. Supports incremental preview. 

For those of us who started using nvim after the introduction of lua and therefore never learned vimscript. (And do not want to learn it just for `:substitute`.)

__Features__
- Incremental preview of the substitution.
- Supports ranges, with `%` as default.
- The `g` flag is supported and works like with `:substitute`. 
- New flags: `i` for case-insensitive search and `f` for fixed strings (literal strings).

```text
:%s /\(\w\+\)\d\+/\1/g          -- :substitute
:S /(%w+)%d+/%1/g               -- :AltSubstitute
deviceModel2020 -> deviceModel  -- effect
```

__Links__
- [Reddit](https://link-to-the-reddit-post)
- [GitHub](https://www.reddit.com/r/neovim/comments/12ih4up/introducing_nvimaltsubstitute_a_substitute_of/)

---
