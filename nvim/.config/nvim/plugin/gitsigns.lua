vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" }
})

local gitsigns = require("gitsigns")
gitsigns.setup()
