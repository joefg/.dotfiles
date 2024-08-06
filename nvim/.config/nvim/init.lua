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

-- lazy.nvim and plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  -- editorconfig
  { "editorconfig/editorconfig-vim" },
  -- lsps
  { "neovim/nvim-lspconfig" },
  -- treesitter
  { "nvim-treesitter/nvim-treesitter" },
  -- languages
  { "sheerun/vim-polyglot" },
  -- git
  { "lewis6991/gitsigns.nvim" },
  {
    "NeogitOrg/neogit",
    branch = "master",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = true,
  },
}

require("settings"):setup()

--   __  __ (_)
--  / / / // /
-- / /_/ // /
-- \__,_//_/

vim.cmd("colorscheme retrobox")
require("statusline"):setup {
  separator = "arrows",
  lsp_symbol = "symbols",
  git_symbol = " ",
}
require("netrw"):setup()

-- git plugins
require("gitsigns").setup()
require("neogit"):setup()

--    ____ ___  ____ _______________  _____
--   / __ `__ \/ __ `/ ___/ ___/ __ \/ ___/
--  / / / / / / /_/ / /__/ /  / /_/ (__  )
-- /_/ /_/ /_/\__,_/\___/_/   \____/____/

require("macros"):setup()

--   __                       __      __
--  / /____  ____ ___  ____  / /___ _/ /____  _____
-- / __/ _ \/ __ `__ \/ __ \/ / __ `/ __/ _ \/ ___/
--/ /_/  __/ / / / / / /_/ / / /_/ / /_/  __(__  )
--\__/\___/_/ /_/ /_/ .___/_/\__,_/\__/\___/____/
--                 /_/

require("template"):setup()

--    __                      _ __  __
--   / /_________  ___  _____(_) /_/ /____  _____
--  / __/ ___/ _ \/ _ \/ ___/ / __/ __/ _ \/ ___/
-- / /_/ /  /  __/  __(__  ) / /_/ /_/  __/ /
-- \__/_/   \___/\___/____/_/\__/\__/\___/_/

require("treesitter"):setup()

--     __   _____ ____
--    / /  / ___// __ \_____
--   / /   \__ \/ /_/ / ___/
--  / /______/ / ____(__  )
-- /_____/____/_/   /____/

require("lsp"):setup()
