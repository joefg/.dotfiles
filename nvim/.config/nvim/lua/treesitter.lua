--    __                           _  __   __
--   / /_ _____ ___   ___   _____ (_)/ /_ / /_ ___   _____
--  / __// ___// _ \ / _ \ / ___// // __// __// _ \ / ___/
-- / /_ / /   /  __//  __/(__  )/ // /_ / /_ /  __// /
-- \__//_/    \___/ \___//____//_/ \__/ \__/ \___//_/
--

local M = {}

M.setup = function()
  local treesitter = require("nvim-treesitter.configs")
  treesitter.setup {
    highlight = {
      enable = true,
      custom_captures = {},
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  }
end

return M
