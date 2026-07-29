local M = {}

M.macros = require("joefg.macros")
M.netrw = require("joefg.netrw")
M.template = require("joefg.template")
M.settings = require("joefg.settings")
M.statusline = require("joefg.statusline")

M.setup = function(config)
  M.settings:setup()
  -- M.statusline:setup({
  --   separator = config.separator or "arrows",
  --   git_symbol = config.git_symbol or " " 
  -- })
  M.netrw:setup()
  M.macros:setup()
  M.template:setup()
end

return M
