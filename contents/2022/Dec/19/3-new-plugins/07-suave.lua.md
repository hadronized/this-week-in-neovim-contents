<h3 id="new-suave.lua">
    <a href="#new-suave.lua">
        <span class="icon-text">
            <span class="icon">
                <i class="fa-solid fa-book"></i>
            </span>
            <span>suave.lua</span>
        </span>
    </a>
</h3>

<video controls>
  <source
    src="https://user-images.githubusercontent.com/24765272/207277797-88682d65-fe22-41a1-9155-b20e23a0205b.mov"
  >
</video>

Suave.lua is all about project session automation, it can:

-  `.setup()` callbacks on session store/restore.
-  `.session_store()` multiple sessions for a single project.
-  `.session_store()` mutliple sessions in your project folder.
-  Add simple note on session store.
- Use `autocmd` with %.session_store(auto=true)` to achieve project session automation:
  - When `auto=true`, the naming process is skipped. So you can put the call inside autocmd.
- Store/restore sessions by selecting them from the menu, no more command typing.

- [Reddit](https://www.reddit.com/r/neovim/comments/zkrkg8/suavelua_session_lua_for_vim_enthusiasts/)
- [GitHub](https://github.com/nyngwang/suave.lua)

---
