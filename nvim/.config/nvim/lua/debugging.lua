--    ____       __                      _            
--   / __ \___  / /_  __  ______ _____ _(_)___  ____ _
--  / / / / _ \/ __ \/ / / / __ `/ __ `/ / __ \/ __ `/
-- / /_/ /  __/ /_/ / /_/ / /_/ / /_/ / / / / / /_/ / 
--/_____/\___/_.___/\__,_/\__, /\__, /_/_/ /_/\__, /  
--                       /____//____/        /____/   
-- DAP adapters.

local M = {}

M.setup = function()
  local dap, dapui = require("dap"), require("dapui")

  -- UI setup
  dapui.setup()
  dap.listeners.before.attach.dapui_config = function()
    dapui.open()
  end
  dap.listeners.before.launch.dapui_config = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
  end
  dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
  end

  -- Python - requires python-debugpy installed globally.
  local python = require("dap-python").setup("python3")
end

return M
