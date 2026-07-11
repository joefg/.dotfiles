local M = {}

M.setup = function()
  vim.api.nvim_create_user_command('PackUpdate', function()
      vim.pack.update()
    end,
    {}
  )
end

return M
