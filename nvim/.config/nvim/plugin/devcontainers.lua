vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://codeberg.org/esensar/nvim-dev-container" },
})

local devcontainer = require("devcontainer")
devcontainer.setup({})
