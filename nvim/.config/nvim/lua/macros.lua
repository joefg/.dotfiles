--   ____ ___   ____ _ _____ _____ ____   _____
--  / __ `__ \ / __ `// ___// ___// __ \ / ___/
-- / / / / / // /_/ // /__ / /   / /_/ /(__  )
--/_/ /_/ /_/ \__,_/ \___//_/    \____//____/
--

local M = {}

M.setup = function()
  -- JSON
  vim.api.nvim_command("command -range=% Json <line1>,<line2>!python3 -m json.tool")
  vim.api.nvim_command("command -range=% Jsonc <line1>,<line2>!python3 -m json.tool --compact")
  vim.api.nvim_command("command -range=% Jsonl <line1>,<line2>!python3 -m json.tool --json-lines")
  vim.api.nvim_command("command -range=% Jsons <line1>,<line2>!python3 -m json.tool --sort-keys")

  -- curl
  vim.api.nvim_command("command -range=% Curl <line1>,<line2>!xargs -L 1 curl -s")
  vim.api.nvim_command("command -range=% Curlv <line1>,<line2>!xargs -L 1 curl -v")

  -- WQ/Wq/W/Q helper
  vim.api.nvim_command("cabbrev W w")
  vim.api.nvim_command("cabbrev Q q")
  vim.api.nvim_command("cabbrev Wq wq")
  vim.api.nvim_command("cabbrev WQ wq")
end

return M
