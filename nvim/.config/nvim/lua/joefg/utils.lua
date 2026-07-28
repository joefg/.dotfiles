local M = {}

M.clean_nils = function(table)
  local ret = {}
  for _, v in pairs(table) do
    ret[#ret + 1] = v
  end
  return ret
end

return M
