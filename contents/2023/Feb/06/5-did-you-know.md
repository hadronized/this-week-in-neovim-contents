# [Did you know?](#tips) {#tips}

Did you know what it is possible to use special commands like `\u`(upper character) and `\l`(lower character) on both side of `:substitute` command?

This is a synthetic example, where we'll change two-words name of html-tag from `CamelCase` to `kebab-case` and back:

```html
<MyElement>My element</MyElement>
```

Type `substitute` command `:%s/\v(\u\w+)(\u\w+)/\L\1-\2/g` and get result:

```html
<my-element>My element</my-element>
```

In the `pattern` side, we used `\u` for finding two capitalized words and dash between. In the `string` (replace) side, we used `\L` to turn every character in matches to lower-case.

To turn it back, type `:%s/\v(\w+)-(\w+)/\u\1\u\2/g`. Here, we used `\u` in `string` side to turn into uppercase only first character in matches.

Read `:h :substitute`, `:h pattern` and `:h sub-replace-special` to get more information.
