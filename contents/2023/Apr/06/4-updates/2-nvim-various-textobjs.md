<h3 id="nvim-various-textobjs">
  <a href="#nvim-various-textobjs">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-various-textobjs</span>
  </a>
</h3>

> Bundle of ~~more than a dozen~~ *almost two dozen* new text objects for Neovim.

![list of all textobsj](https://i.imgur.com/l08JDN2.png)

Since [introducing nvim-various-textobjs](https://www.reddit.com/r/neovim/comments/zvnox9/introducing_nvimvarioustextobjs_a_plugin_bundling/), half a dozen additional text objects have been added:
- __restOfIndentation-textobj__: basically `ii`, but only from the cursor position downwards
- __key-textobj__: Counterpart to the value-textobj. Key of a key-value-pair, or left-hand-side of a variable assignment
- __entireBuffer-textobj__: a convenience text object representing the entire buffer
- __url-textobj__: a link (`http…`) as text object. The readme also includes an [example snippet for using the url-textobj to create a smarter `gx`](https://github.com/chrisgrieser/nvim-various-textobjs#smart-alternative-to-gx).
- __shellPipe-textobj__: a command stdout is piped to
- __toNextClosingBracket-textobj__: from the cursor position to the next `)`, `}`, or `]`. (This is essentially a replacement for the `%` motion-as-textobject, since I find it more intuitive this way.)
- Also new: the __subword-textobj__ now also recognizes parts of a camelCase word
<br>
Links:
- [Reddit](https://www.reddit.com/r/neovim/comments/11gemly/plugin_update_nvimvarioustextobjs_now_bundles_a/)
- [GitHub](https://github.com/chrisgrieser/nvim-various-textobjs)

---
