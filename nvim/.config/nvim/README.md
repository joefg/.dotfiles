# nvim

My neovim config is intended to be for editing.

If you want an IDE, just use VSCode. Otherwise, this works reasonably well.

## Plugins

Plugins are handled with [vim.pack](https://neovim.io/doc/user/pack/), and are
kept contained on a per-plugin basis in `plugins/`.

To add a plugin, start with adding a vim.pack to the top of your plugin file,
then keep setups contained there.

```lua
vim.pack.add({
    { src = "/path/to/plugin" }
})

local plugin = require("plugin")
plugin.setup({
    option = true -- or value, setup here.
})
```
