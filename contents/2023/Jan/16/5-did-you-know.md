# [Did you know?](#tips) {#tips}

Sometimes you need to print a Lua table via the command line, but typing something like this
`:lua vim.pretty_print(vim.fs)` can be verbose. You can use the following as a shortcut syntax: `:lua = vim.fs` and get
the same result! The `:lua = x` will always execute `x` and then pretty-print it.

Pretty convenient, don’t you think?
