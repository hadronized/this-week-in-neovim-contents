# [Did you know?](#tips) {#tips}

We continue to learn the `=` operator in command-line mode. 
Sometimes you need to redirect the output of **Ex** commands to the current buffer. You can do that with `:put`,
`execute()` and `=`:

```
:put = execute('messages')
```

If you don't want to add to the current buffer, you can also redirect command outputs to a file, register or variable 
using built-in Ex-command `:redir`:

```
:redir > messages.txt
:messages
:redir END
```
