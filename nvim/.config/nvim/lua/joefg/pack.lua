--               __
--   ____  ___  / /_______      __
--  / __ \/ _ \/ __/ ___/ | /| / /
-- / / / /  __/ /_/ /   | |/ |/ /
--/_/ /_/\___/\__/_/    |__/|__/
--
-- Vim's native file explorer

local M = {}

M.setup = function()
  vim.api.nvim_create_user_command('PackUpdate', function()
      vim.pack.update()
    end,
    {}
  )
end

return M
