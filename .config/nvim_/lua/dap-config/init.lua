local dap_ok, dap = pcall(require, "dap")
if not dap_ok then
  return
end

-- No need to define adaptar for java since jdtls already handles it

-- Adapter for node
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/private/Projects/vscode-node-debug2/out/src/nodeDebug.js'},
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}

dap.configurations.java = {
  {
    type = 'java',
    request = 'launch',
    name = "Launch"
  },
  {
    type = 'java',
    request = 'attach',
    name = "Attach"
  },
}


require('dapui').setup()

dap.defaults.fallback.terminal_win_cmd = 'vsplit new'
vim.fn.sign_define('DapBreakpoint', {text='✋', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🔵', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='➡️', texthl='', linehl='DiffAdd', numhl=''})

