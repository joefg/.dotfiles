--    __                           __        __      
--   / /_ ___   ____ ___   ____   / /____ _ / /_ ___ 
--  / __// _ \ / __ `__ \ / __ \ / // __ `// __// _ \
-- / /_ /  __// / / / / // /_/ // // /_/ // /_ /  __/
-- \__/ \___//_/ /_/ /_// .___//_/ \__,_/ \__/ \___/ 
--                     /_/                           
-- 
vim.api.nvim_command('augroup templates')
vim.api.nvim_command('autocmd BufNewFile *.py 0r ~/.config/nvim/templates/skeleton.py')
vim.api.nvim_command('autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh')
vim.api.nvim_command('autocmd BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html')
vim.api.nvim_command('augroup END')

