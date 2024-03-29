require('dap-python').setup('~/Projects/alab/cps-pinmeto-api/venv/bin/python')
-- require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
