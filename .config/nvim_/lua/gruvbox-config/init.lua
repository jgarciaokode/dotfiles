vim.cmd [[
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- GruvBox
vim.cmd[[highlight TabLine guibg=none guifg=#D4D4D4 gui=none cterm=none ctermbg=none]]
vim.cmd[[highlight TabLineFill guibg=none gui=none cterm=none ctermbg=none]]
vim.cmd[[highlight TabLineSel guibg=none gui=none cterm=none ctermbg=none]]
vim.cmd[[highlight EndOfBuffer guibg=none]]

vim.cmd[[highlight VertSplit guibg=none guifg=Grey24 gui=none cterm=none ctermfg=none ctermbg=none]]
vim.cmd[[highlight SignColumn guibg=none]]
vim.cmd[[highlight GitSignsAdd guibg=none]]
vim.cmd[[highlight GitSignsDelete guibg=none]]
vim.cmd[[highlight GitSignsChange guibg=none]]
vim.cmd[[highlight DiagnosticSignError guibg=none gui=none]]
vim.cmd[[highlight DiagnosticSignWarn guibg=none gui=none]]
vim.cmd[[highlight DiagnosticSignInfo guibg=none gui=none]]
vim.cmd[[highlight DiagnosticSignHint guibg=none gui=none]]
vim.cmd[[highlight TelescopePromptPrefix guifg=#8ec07c]]
-- vim.cmd[[highlight Search gui=none guifg=#282828 guibg=#fabd2f ]]
vim.cmd[[highlight IndentBlanklineContextChar gui=none guifg=#8ec07c]]
vim.cmd[[highlight TelescopePromptBorder gui=none guifg=#5A5A5A]]
vim.cmd[[highlight TelescopePreviewBorder gui=none guifg=#5A5A5A]]
vim.cmd[[highlight TelescopeResultsBorder gui=none guifg=#5A5A5A]]
vim.cmd[[highlight BufferLineFill gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineIndicatorSelected gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineTab gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineTabSelected gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineTabClose gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineCloseButton gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineCloseButtonSelected gui=none guibg=none ctermbg=none cterm=none]]
vim.cmd[[highlight BufferLineCloseButtonVisible gui=none guibg=none ctermbg=none cterm=none]]

vim.cmd[[highlight DiffText gui=none guifg=none guibg=#8f3f71]]
vim.cmd[[highlight DiffChange gui=none guifg=none guibg=#264F78]]
-- vim.cmd[[highlight DiffAdd gui=none guifg=none guibg=#4B5632]]
-- vim.cmd[[highlight DiffDelete gui=none guifg=none guibg=#6F1313]]



-- vim.cmd[[highlight TelescopeMatching gui=bold guifg=#18a2fe ]]
-- vim.cmd[[highlight TelescopeSelection guifg=#D4D4D4 guibg=#004b72 ]]
-- vim.cmd[[highlight Comment guibg=none guifg=#4f856a gui=none cterm=none ctermfg=none ctermbg=none]]
-- vim.cmd[[highlight Normal guibg=none gui=none guifg=none ctermbg=none cterm=none]]
-- vim.cmd[[highlight NonText guibg=none gui=none guifg=none ctermbg=none cterm=none]]
-- vim.cmd[[highlight NvimTreeNormal guibg=none gui=none guifg=none ctermbg=none cterm=none]]
-- vim.cmd[[highlight NvimTreeEndOfBuffer guibg=none]]

