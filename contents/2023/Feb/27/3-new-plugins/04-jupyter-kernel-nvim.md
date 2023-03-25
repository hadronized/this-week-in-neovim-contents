<h3 id="jupyter-kernel.nvim">
  <a href="#jupyter-kernel.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>jupyter-kernel.nvim</span>
  </a>
</h3>

![jupyter-kernel.nvim](https://user-images.githubusercontent.com/12573521/221217194-c18b98ec-0100-4865-a133-9a043a09bcaf.png)

There are a lot of plugins out there to help with sending Python code to a REPL, but not a lot of plugins helps extracting the benefit of interactive coding back into Neovim, where your cursor will reside most of the time.
This is a simple plugin that wrap-around python package 'jupyter_client' to provide ergonomic workflow that enhance your coding experience with any Jupyter kernels.

It provides two main features at the moment: provide `jupyter` source for nvim-cmp autocompletion and a command `:JupyterInspect` to query jupyter kernel information about object under the cursor.

- [Reddit](https://www.reddit.com/r/neovim/comments/11bhtv3/introducing_jupyterkernelnvim_inspect_object_and/)
- [GitHub](https://github.com/lkhphuc/jupyter-kernel.nvim)

---
