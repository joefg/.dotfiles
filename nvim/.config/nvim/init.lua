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

local settings = require('settings')
settings:setup()

--   __  __ (_)
--  / / / // / 
-- / /_/ // /  
-- \__,_//_/   

vim.cmd 'colorscheme retrobox'
local statusline = require('statusline')
statusline:setup({
	separator = 'arrows',
	lsp_symbol = 'symbols',
	git_symbol = ' '
})

local netrw = require('netrw')
netrw:setup()

--           _ __ 
--    ____ _(_) /_
--   / __ `/ / __/
--  / /_/ / / /_  
--  \__, /_/\__/  
-- /____/        

local gitsigns = require('gitsigns')
gitsigns.setup()

local neogit = require('neogit')
neogit.setup({})

--    ____ ___  ____ _______________  _____
--   / __ `__ \/ __ `/ ___/ ___/ __ \/ ___/
--  / / / / / / /_/ / /__/ /  / /_/ (__  ) 
-- /_/ /_/ /_/\__,_/\___/_/   \____/____/  

local macros = require('macros')
macros:setup()

--   __                       __      __           
--  / /____  ____ ___  ____  / /___ _/ /____  _____
-- / __/ _ \/ __ `__ \/ __ \/ / __ `/ __/ _ \/ ___/
--/ /_/  __/ / / / / / /_/ / / /_/ / /_/  __(__  ) 
--\__/\___/_/ /_/ /_/ .___/_/\__,_/\__/\___/____/  
--                 /_/                             

local templates = require('template')
templates:setup()

--    __                      _ __  __           
--   / /_________  ___  _____(_) /_/ /____  _____
--  / __/ ___/ _ \/ _ \/ ___/ / __/ __/ _ \/ ___/
-- / /_/ /  /  __/  __(__  ) / /_/ /_/  __/ /    
-- \__/_/   \___/\___/____/_/\__/\__/\___/_/     

local ts = require('treesitter')
ts:setup()

--     __   _____ ____
--    / /  / ___// __ \_____
--   / /   \__ \/ /_/ / ___/
--  / /______/ / ____(__  )
-- /_____/____/_/   /____/

local lsp = require('lsp')
lsp:setup()
