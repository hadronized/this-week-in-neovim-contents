<h3 id="new-mini.hues">
  <a href="#new-mini.hues">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>mini.hues</span>
  </a>
</h3>

<video controls>
  <source
    src="https://user-images.githubusercontent.com/24854248/236634787-ab0c33df-f697-4d96-a754-d77eccee7513.mp4"
  >
</video>

There was a release of a new color scheme module in `mini.nvim` called `mini.hues`. It is an another take on color scheme
generation: supply background with foreground colors and the rest of the palette is computed to be as much perceptually
different from one another as reasonably possible. It can limit number of used hues for non-base colors, adjust
saturation level and accent color while also having 30+ modern Neovim plugin integrations.

Along with it comes 'randomhue' - a good old configuration-free color scheme which on every `:colorscheme randomhue`
will randomly but smartly generate background/foreground colors and apply 'mini.hues'.

- [Reddit](https://www.reddit.com/r/neovim/comments/13an2tg/minihues_generate_configurable_color_scheme_plus/)
- [GitHub](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-hues.md)

---
