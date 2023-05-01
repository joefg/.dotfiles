--   ____ ___   ____ _ _____ _____ ____   _____
--  / __ `__ \ / __ `// ___// ___// __ \ / ___/
-- / / / / / // /_/ // /__ / /   / /_/ /(__  ) 
--/_/ /_/ /_/ \__,_/ \___//_/    \____//____/  
--

-- JSON
vim.api.nvim_command('command -range=% Json <line1>,<line2>!python3 -m json.tool')

-- curl
vim.api.nvim_command('command -range=% Curl <line1>,<line2>!xargs -L 1 curl -s')
vim.api.nvim_command('command -range=% Curlv <line1>,<line2>!xargs -L 1 curl -v')
