# [Did you know?](#tips) {#tips}

We [continue](https://this-week-in-neovim.org/2023/Jan/16#tips) to learn `=` operator in command-line mode. Sometimes you need to redirect output of **Ex** command to current buffer.
You can do it with `:put` command, `execute()` and `=` operator:

```
:put =execute('messages')
```

If you don't want to use no current buffer, and you want to specify filename for redirect output – use built-in Ex-command `:redir`.
In additional, for redirect shell-command in current buffer, use `!!` in normal mode or `:.!` in cmd-line mode:

```
:.!tree
```

And you get a pretty view of your current working directory right in your current buffer.
