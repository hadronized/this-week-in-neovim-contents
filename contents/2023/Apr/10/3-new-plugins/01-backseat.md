<h3 id="new-backseat.nvim">
  <a href="#new-backseat.nvim">
    <span class="icon-text">
      <span class="icon">
        <i class="fa-solid fa-book"></i>
      </span>
    </span>
    <span>backseat.nvim</span>
  </a>
</h3>

![backseat.nvim](https://user-images.githubusercontent.com/32351696/229314187-f229664f-f396-4840-9765-8118810b3dae.png)

Backseat uses GPT to highlight and explain code readability issues under each line of code. 

Run `:Backseat` to send the current buffer to the OpenAI API for `gpt-3.5-turbo` or gpt-4, which responds with line 
numbers and their matching issues/suggestions. The plugin then highlights those lines with sign column icons and virtual 
text. 

You can also do `:BackseatAsk <question>` to ask the AI a question about the current buffer, such as
`:BackseatAsk Can you identify any issues in redo()?`.

You can get an API key with a free OpenAI account, and after free credits run out, usage of `gpt-3.5-turbo` though the
OpenAI API currently costs ~$0.004 per 100 lines of code used with backseat.

This is my first time writing a plugin or using lua, issues and PRs welcome!

- [GitHub](https://github.com/james1236/backseat.nvim)

---
