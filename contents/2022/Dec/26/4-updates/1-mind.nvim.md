<h3 id="update-mind.nvim">
    <a href="#update-mind.nvim">
        <span class="icon-text">
            <span class="icon">
                <i class="fa-solid fa-book"></i>
            </span>
            <span>mind.nvim</span>
        </span>
    </a>
</h3>

> The power of trees at your fingertips.

![mind.nvim](https://user-images.githubusercontent.com/506592/185793543-e12baf93-8329-4e3b-96d2-da38547691ee.png)

The plugin got updated to version **v2.2.1** with a bug fixes and some nice additions. The next to come release, `v3`,
will add support custom node type — currently, you have the choice between empty nodes, data nodes or link nodes. With
this next update, you can imagine having a “task” node, tracking how many tasks are done as children to put some
decoration showing the progression. No ETA yet.

Changelog:

- Remove local `.mind` tree.
- Add the `delete_file*` commands, bound to `D`, to remove the associated file (if any) of a node.
- Hide relative line numbers in Mind buffers, if set by default.
- Add icons when fuzzy searching things (it will either show a link or a
  data marker, depending).
- Better default for searching data / URL nodes; it will not show empty
  nodes.
- Fix prefix for the prompt while fuzzy searching.
- Fix smart project creation.
- Fix moving nodes (persistence wasn’t applied correctly).
- Fix `toggle_node_line` (persistence problem as well).
- Fix `save_tree` in various asynchronous commands, just as above.
- Fix an explorer bug and remove a needless print.
- Fix highlighting for empty nodes.
- Update highlights.
- Update the README to reflect recent changes.
- Various docs cleanups and fixes.

More [here](https://github.com/phaazon/mind.nvim/releases/tag/v2.2.1).

- [GitHub](https://github.com/phaazon/mind.nvim)
- [Release notes](https://github.com/phaazon/mind.nvim/releases/tag/v2.2.1)

---
