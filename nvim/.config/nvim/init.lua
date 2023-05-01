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

--            __               _             
--    ____   / /__  __ ____ _ (_)____   _____
--   / __ \ / // / / // __ `// // __ \ / ___/
--  / /_/ // // /_/ // /_/ // // / / /(__  ) 
-- / .___//_/ \__,_/ \__, //_//_/ /_//____/  
--/_/               /____/                   
--
require('plugins')
require('macros')
require('template')

--   __  __ (_)
--  / / / // / 
-- / /_/ // /  
-- \__,_//_/   
--
vim.cmd 'colorscheme base16-tomorrow-night'

vim.opt.showmode = false
require('lualine').setup()
require('gitsigns').setup()

--                __   __   _                    
--   _____ ___   / /_ / /_ (_)____   ____ _ _____
--  / ___// _ \ / __// __// // __ \ / __ `// ___/
-- (__  )/  __// /_ / /_ / // / / // /_/ /(__  ) 
--/____/ \___/ \__/ \__//_//_/ /_/ \__, //____/  
--                                /____/         
--
vim.opt.title = true
vim.opt.number = true       -- Show line numbers
vim.opt.ruler = true        -- Show row and column ruler information
vim.opt.cursorline = true   -- Show a cursor line
vim.opt.linebreak = true    -- Break lines at word (requires Wrap lines)
vim.opt.showbreak = '+++'   -- Wrap-broken line prefix
vim.opt.textwidth = 100	    -- Line wrap (number of cols)
vim.opt.showmatch = true    -- Highlight matching brace
vim.opt.errorbells = true   -- Beep or flash screen on errors
vim.opt.visualbell = true   -- Use visual bell (no beeping)
vim.cmd 'set mouse='        -- Disable mouse

-- folds
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99

-- redrawing
vim.opt.lazyredraw = true
vim.opt.bomb = true
vim.opt.binary = true
vim.opt.ttyfast = true
vim.opt.syntax = 'on'

-- encodings
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = 'utf-8'
vim.opt.fileformats = 'unix'

-- fix backspace indent
vim.opt.backspace = 'indent,eol,start'

-- tabs. May be overriten by autocmd rules
vim.opt.autoindent = true   -- Auto-indent new lines
vim.opt.shiftwidth = 4      -- Number of auto-indent spaces
vim.opt.smartindent = true  -- Enable smart-indent
vim.opt.smarttab = true     -- Enable smart-tabs
vim.opt.softtabstop = 4     -- Number of spaces per Tab

-- searching
vim.opt.hlsearch = true       -- Highlight all search results
vim.opt.smartcase = true      -- Enable smart-case search
vim.opt.ignorecase = true     -- Always case-insensitive
vim.opt.incsearch = true      -- Searches for strings incrementally

-- directories for swp files
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.undolevels = 999

-- LSP configurations
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'eslint' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- Treesitter settings
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    custom_captures = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
