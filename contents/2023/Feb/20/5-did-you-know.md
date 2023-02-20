# [Did you know?](#tips) {#tips}

You can setup your own statusline without having to rely on a plugin. Even though the operation is slightly more 
complex than just customizing a statusline plugin, it’s not really rocket science. You have two options:

- Set your statusline to a simple string, using the various out-of-the-box interpolation variables.
- Set your statusline to a string starting with `%!` to execute a function that will be run everytime the statusline
  needs to be rerendered.

The builtin variables are pretty symbol to figure out and include things like:

- Path to the file in the buffer.
- The modified / readonly / etc. flags.
- Type of the buffer.
- Buffer number.
- Line / column / window number.
- Percentage in the file the vertical position is at.
- Various grouping mechanisms.

For more information, have a look at `:help stl`.