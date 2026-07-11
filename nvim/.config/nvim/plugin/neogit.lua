vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/NeogitOrg/neogit" }
})

local neogit = require("neogit")
neogit.setup({
  disable_context_highlighting = true,
  commit_editor = {
    spell_check = false
  }
})
