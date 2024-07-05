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

vim.opt.title = true
vim.opt.number = true -- Show line numbers
vim.opt.ruler = true -- Show row and column ruler information
vim.opt.cursorline = true -- Show a cursor line
vim.opt.linebreak = true -- Break lines at word (requires Wrap lines)
vim.opt.showbreak = "+++" -- Wrap-broken line prefix
vim.opt.textwidth = 100 -- Line wrap (number of cols)
vim.opt.showmatch = true -- Highlight matching brace
vim.opt.errorbells = true -- Beep or flash screen on errors
vim.opt.visualbell = true -- Use visual bell (no beeping)
vim.opt.mouse = "" -- Disable mouse

-- folds
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- redrawing
vim.opt.lazyredraw = true
vim.opt.bomb = true
vim.opt.binary = true
vim.opt.ttyfast = true
vim.opt.syntax = "on"

-- encodings
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.fileformats = "unix"

-- fix backspace indent
vim.opt.backspace = "indent,eol,start"

-- tabs. May be overriten by autocmd rules
vim.opt.autoindent = true -- Auto-indent new lines
vim.opt.shiftwidth = 4 -- Number of auto-indent spaces
vim.opt.smartindent = true -- Enable smart-indent
vim.opt.smarttab = true -- Enable smart-tabs
vim.opt.softtabstop = 4 -- Number of spaces per Tab

-- searching
vim.opt.hlsearch = true -- Highlight all search results
vim.opt.smartcase = true -- Enable smart-case search
vim.opt.ignorecase = true -- Always case-insensitive
vim.opt.incsearch = true -- Searches for strings incrementally

-- directories for swp files
vim.opt.backup = false
vim.opt.swapfile = false

-- undolevels
vim.opt.undolevels = 999

--   __  __ (_)
--  / / / // /
-- / /_/ // /
-- \__,_//_/

vim.cmd("colorscheme retrobox")
local statusline = require("statusline")
statusline:setup {
  separator = "arrows",
  lsp_symbol = "symbols",
  git_symbol = " ",
}

local netrw = require("netrw")
netrw:setup()

--           _ __
--    ____ _(_) /_
--   / __ `/ / __/
--  / /_/ / / /_
--  \__, /_/\__/
-- /____/

local gitsigns = require("gitsigns")
gitsigns.setup()

local neogit = require("neogit")
neogit.setup {}

--    ____ ___  ____ _______________  _____
--   / __ `__ \/ __ `/ ___/ ___/ __ \/ ___/
--  / / / / / / /_/ / /__/ /  / /_/ (__  )
-- /_/ /_/ /_/\__,_/\___/_/   \____/____/

local macros = require("macros")
macros:setup()

--   __                       __      __
--  / /____  ____ ___  ____  / /___ _/ /____  _____
-- / __/ _ \/ __ `__ \/ __ \/ / __ `/ __/ _ \/ ___/
--/ /_/  __/ / / / / / /_/ / / /_/ / /_/  __(__  )
--\__/\___/_/ /_/ /_/ .___/_/\__,_/\__/\___/____/
--                 /_/

local templates = require("template")
templates:setup()

--    __                      _ __  __
--   / /_________  ___  _____(_) /_/ /____  _____
--  / __/ ___/ _ \/ _ \/ ___/ / __/ __/ _ \/ ___/
-- / /_/ /  /  __/  __(__  ) / /_/ /_/  __/ /
-- \__/_/   \___/\___/____/_/\__/\__/\___/_/

local ts = require("treesitter")
ts:setup()

--     __   _____ ____
--    / /  / ___// __ \_____
--   / /   \__ \/ /_/ / ___/
--  / /______/ / ____(__  )
-- /_____/____/_/   /____/

local lsp = require("lsp")
lsp:setup()
