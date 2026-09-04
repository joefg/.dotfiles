local M = {}

M.macros = require("joefg.macros")
M.template = require("joefg.template")
M.settings = require("joefg.settings")

M.setup = function(config)
  M.settings:setup()
  M.macros:setup()
  M.template:setup()
end

return M
