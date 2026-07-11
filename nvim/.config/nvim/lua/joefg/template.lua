local M = {}

M.setup = function()
  vim.api.nvim_command("augroup templates")
  vim.api.nvim_command("autocmd BufRead,BufNewFile *.md setlocal textwidth=80")
  vim.api.nvim_command("autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal textwidth=80")
  vim.api.nvim_command("augroup END")
end

return M
