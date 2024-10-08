--               __  __  _                 
--    ________  / /_/ /_(_)___  ____ ______
--   / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/
--  (__  )  __/ /_/ /_/ / / / / /_/ (__  ) 
-- /____/\___/\__/\__/_/_/ /_/\__, /____/  
--                           /____/       

local M = {}

M.setup = function()
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
end

return M
