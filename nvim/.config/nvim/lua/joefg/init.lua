local M = {}

M.macros = require("joefg.macros")
M.netrw = require("joefg.netrw")
M.template = require("joefg.template")
M.settings = require("joefg.settings")

M.setup = function(config)
  M.settings:setup()
  M.netrw:setup()
  M.macros:setup()
  M.template:setup()
end

return M
