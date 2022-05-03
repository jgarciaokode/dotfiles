vim.cmd [[
try
  colorscheme vscode
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

require('onenord').setup({
  theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- styles = {
  --   comments = "NONE", -- Style that is applied to comments: see `highlight-args` for options
  --   strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
  --   keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
  --   functions = "NONE", -- Style that is applied to functions: see `highlight-args` for options
  --   variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
  --   diagnostics = "underline", -- Style that is applied to diagnostics: see `highlight-args` for options
  -- },
  disable = {
    background = true, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = true, -- Hide the end-of-buffer lines
  },
  custom_highlights = {}, -- Overwrite default highlight groups
  custom_colors = {}, -- Overwrite default colors
})

-- ONENORD
vim.cmd[[highlight TelescopeNormal gui=none guifg=none guibg=none]]
vim.cmd[[highlight NvimTreeWindowPicker guibg=none]]
vim.cmd[[highlight TelescopeSelection guifg=#D4D4D4 guibg=#004b72 ]]
vim.cmd[[highlight TelescopeSelection guifg=#D4D4D4 guibg=#3B4254 ]]
vim.cmd[[highlight DiffText gui=none guifg=none guibg=#8f3f71]]
vim.cmd[[highlight DiffChange gui=none guifg=none guibg=#264F78]]
vim.cmd[[highlight BufferLineFill gui=none guibg=none]]
vim.cmd[[highlight BufferLineIndicatorSelected gui=none guibg=none]]
vim.cmd[[highlight TabLine gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight TabLineFill gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight TabLineSel gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight LspReferenceText gui=none guibg=#3B4254]]
vim.cmd[[highlight LspReferenceRead gui=none guibg=#3B4254]]
vim.cmd[[highlight LspReferenceWrite gui=none guibg=#3B4254]]
