<h3 id="nvim-recorder">
  <a href="#nvim-recorder">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>nvim-recorder</span>
  </a>
</h3>

A plugin that enhances how you interact with macros.

- __Simplified controls__: One key to start and stop recording, a second key for playing the macro. Instead of 
  `qa … q @a @@`, you just do `q … q Q Q`.
- __Macro Breakpoints__ for easier debugging of macros. Breakpoints can also be set after the recording, and are 
  automatically ignored when triggering a macro with a count.
- __Status line components__: Particularly useful if you use `cmdheight=0` where the recording status is not visible.
- __Macro-to-mapping__: Yank a macro to your default register, with the keys "decoded" for keymaps.
- __Various quality-of-life features__ like notifications with macro content, the ability to cancel a recording, or a 
  command to edit macros.

Made by [@chrisgrieser](https://github.com/chrisgrieser).

- [Reddit](https://www.reddit.com/r/neovim/comments/1085spm/introducing_nvimrecorder_a_plugin_to_enhance_your/)
- [GitHub](https://github.com/chrisgrieser/nvim-recorder)

---
