--     _         _  __      __
--    (_)____   (_)/ /_    / /__  __ ____ _
--   / // __ \ / // __/   / // / / // __ `/
--  / // / / // // /_ _  / // /_/ // /_/ /
-- /_//_/ /_//_/ \__/(_)/_/ \__,_/ \__,_/
--
-- My neovim config.
-- For more info on how to configure neovim with lua,
-- see these guides:
--	* https://github.com/nanotee/nvim-lua-guide
--	* https://oroques.dev/notes/neovim-init/

-- Colour scheme
vim.cmd("colorscheme retrobox")

-- Plugins
vim.pack.add({
  { src = "https://github.com/sheerun/vim-polyglot" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/NeogitOrg/neogit" }
})

local joefg = require("joefg")
local gitsigns = require("gitsigns")
gitsigns.setup()

local neogit = require("neogit")
neogit.setup({
  disable_context_highlighting = true,
  commit_editor = {
    spell_check = false
  }
})
