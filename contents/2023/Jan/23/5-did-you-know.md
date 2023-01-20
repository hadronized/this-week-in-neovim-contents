# [Did you know?](#tips) {#tips}

We [continue](https://this-week-in-neovim.org/2023/Jan/16#tips) to learn `=` operator in command-line mode. Sometimes you need to redirect output of **Ex** command to current buffer.
You can do it with `:put` command, `execute()` and `=` operator:

```
:put =execute('messages')
```

If you don't want to add to the current buffer, you can also redirect commands output to a file, register or variable using built-in Ex-command `:redir`:

```
:redir > messages.txt
:messages
:redir END
```

In addition, for redirect output of shell-command in current buffer, use `!!` in normal mode or `:.!` in cmd-line mode for replace current line or `:read !` for put shell's output after current line:

```
:.!tree
```

And you get a pretty view of your current working directory right in your current buffer.
