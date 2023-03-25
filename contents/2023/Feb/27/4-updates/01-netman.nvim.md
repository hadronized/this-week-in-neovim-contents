<h3 id="netman.nvim">
  <a href="https://github.com/miversen33/netman.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>netman.nvim</span>
  </a>
</h3>

> Lua powered Remote Resource Interface

For those who are unfamiliar, Netman is a Framework that provides abstracted access to remote filesystems through a 
standardized API.

![Neo-tree Integration of Remote Filesystems](https://user-images.githubusercontent.com/2640668/221367566-97a71fb7-5ba8-4344-8251-f78af8d61ffc.png)

Netman has completed (and merged) its v1.1 update. Below is a nonexhaustive change log from v1.0 to v1.1

- [Mostly complete Neo-tree integration](https://imgur.com/a/yzTDcQL) (Note, as of current the neo-tree integration is 
  still beta and does not recognize your neo-tree configuration).
- [Moving files and directories between hosts (including between docker containers and ssh servers)](https://github.com/miversen33/netman.nvim/issues/115).
- [Auto opening your remote "home" directory in ssh](https://github.com/miversen33/netman.nvim/issues/110).
- [A complete rewrite of how "integration" with neovim works](https://github.com/miversen33/netman.nvim/pull/67).
- [A completely new logging system](https://github.com/miversen33/netman.nvim/issues/79).
- [A new event system](https://github.com/miversen33/netman.nvim/issues/77).
- [Updated API Documentation](https://github.com/miversen33/netman.nvim/wiki/API-Documentation).
- [Updated Help Docs](https://github.com/miversen33/netman.nvim/blob/main/doc/netman.txt).

And there is a ton more! The big thing is that most of the leg work is now done for UI integrations, and quite a bit of 
documentation was updated for the new changes
**[There is a caveat to this, currently netman does not support asynchronous anything :(](https://github.com/miversen33/netman.nvim/issues/117)**

Next Milestone is [v1.15](https://github.com/miversen33/netman.nvim/milestone/5) which will consist of some more minor 
updates to prep for more UI integrations (and maybe more providers? 👀).
