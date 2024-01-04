--    __                           __        __      
--   / /_ ___   ____ ___   ____   / /____ _ / /_ ___ 
--  / __// _ \ / __ `__ \ / __ \ / // __ `// __// _ \
-- / /_ /  __// / / / / // /_/ // // /_/ // /_ /  __/
-- \__/ \___//_/ /_/ /_// .___//_/ \__,_/ \__/ \___/ 
--                     /_/                           
-- 

local M = {}

M.setup = function()
	vim.api.nvim_command('augroup templates')
	vim.api.nvim_command('autocmd BufRead,BufNewFile *.md setlocal textwidth=80')
	vim.api.nvim_command('autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal textwidth=80')
	vim.api.nvim_command('augroup END')
end

return M
