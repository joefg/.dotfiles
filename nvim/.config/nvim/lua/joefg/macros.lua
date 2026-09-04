local M = {}

M.setup = function()
  if vim.fn.executable('python') == 1 then
    vim.api.nvim_command("command -range=% Json <line1>,<line2>!python3 -m json.tool")
    vim.api.nvim_command("command -range=% Jsonc <line1>,<line2>!python3 -m json.tool --compact")
    vim.api.nvim_command("command -range=% Jsonl <line1>,<line2>!python3 -m json.tool --json-lines")
    vim.api.nvim_command("command -range=% Jsons <line1>,<line2>!python3 -m json.tool --sort-keys")
  end

  if vim.fn.executable('curl') == 1 then
    vim.api.nvim_command("command -range=% Curl <line1>,<line2>!xargs -L 1 curl -s")
    vim.api.nvim_command("command -range=% Curlv <line1>,<line2>!xargs -L 1 curl -v")
  end

  vim.api.nvim_command("cabbrev W w")
  vim.api.nvim_command("cabbrev Q q")
  vim.api.nvim_command("cabbrev Wq wq")
  vim.api.nvim_command("cabbrev WQ wq")
end

return M
