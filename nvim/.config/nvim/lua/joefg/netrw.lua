--               __
--   ____  ___  / /_______      __
--  / __ \/ _ \/ __/ ___/ | /| / /
-- / / / /  __/ /_/ /   | |/ |/ /
--/_/ /_/\___/\__/_/    |__/|__/
--
-- Vim's native file explorer

local M = {}

M.setup = function()
  vim.g.netrw_keepdir = 0
  vim.g.netrw_liststyle = 3
  vim.g.netrw_banner = 0
  vim.g.netrw_winsize = 30
  vim.g.netrw_localcopydircmd = "cp -r"
end

return M
