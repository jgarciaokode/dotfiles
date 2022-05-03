vim.g.vscode_style = "dark"
vim.g.vscode_transparent = 1
vim.g.vscode_italic_comment = 1
vim.g.vscode_disable_nvimtree_bg = true
vim.cmd[[set background=dark]]

vim.cmd [[
try
  colorscheme vscode
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- VSCODE
vim.cmd[[highlight Normal gui=none guibg=none]]
vim.cmd[[highlight BufferLineFill gui=none guibg=none]]
vim.cmd[[highlight BufferLineIndicatorSelected gui=none guibg=none]]
vim.cmd[[highlight NonText gui=none guibg=none]]
vim.cmd[[highlight EndOfBuffer guifg=#808080 guibg=none]]
vim.cmd[[highlight CursorLine guibg=#3B4252]]
vim.cmd[[highlight TabLine gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight TabLineFill gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight TabLineSel gui=none guifg=#808080 guibg=none]]
vim.cmd[[highlight StatusLineNC guibg=none guifg=none]]
vim.cmd[[highlight StatusLine gui=none guibg=none guifg=none cterm=none ctermfg=none ctermbg=none]]
vim.cmd[[highlight Comment guibg=none guifg=#4f856a gui=none cterm=none ctermfg=none ctermbg=none]]
vim.cmd[[highlight NvimTreeWindowPicker guibg=none]]
vim.cmd[[highlight VertSplit guibg=none guifg=Grey24 gui=none cterm=none ctermfg=none ctermbg=none]]
vim.cmd[[highlight NvimTreeVertSplit guibg=none guifg=Grey24 gui=none cterm=none ctermfg=none ctermbg=none]]
vim.cmd[[highlight NvimTreeRootFolder guifg=#569CD6]]
vim.cmd[[highlight NvimTreeGitDirty gui=none guibg=none]]
vim.cmd[[highlight NvimTreeGitNew  gui=none guibg=none]]
vim.cmd[[highlight NvimTreeImageFile  gui=none guibg=none]]
vim.cmd[[highlight NvimTreeEmptyFolderName  gui=none guibg=none]]
vim.cmd[[highlight NvimTreeFolderName  gui=none guibg=none]]
vim.cmd[[highlight NvimTreeSpecialFile gui=none guibg=none]]
vim.cmd[[highlight NvimTreeNormal gui=none guifg=none guibg=none]]
vim.cmd[[highlight NvimTreeCursorLine gui=none guibg=#3B4252]]
vim.cmd[[highlight NvimTreeEndOfBuffer gui=none guibg=none]]
vim.cmd[[highlight NvimTreeOpenedFolderName gui=none guibg=none]]
vim.api.nvim_command('highlight HopUnmatched guifg=none guibg=none')
vim.cmd[[highlight ColorColumn gui=none guibg=#3B4252]]
vim.cmd[[highlight LspReferenceText gui=none guibg=#264F78]]
vim.cmd[[highlight LspReferenceRead gui=none guibg=#264F78]]
vim.cmd[[highlight LspReferenceWrite gui=none guibg=#264F78]]
vim.cmd[[highlight DiffText gui=none guifg=none guibg=#8f3f71]]
vim.cmd[[highlight DiffChange gui=none guifg=none guibg=#264F78]]
-- vim.cmd[[highlight MatchParen gui=bold guibg=none guifg=#EBCB8B]]

vim.cmd[[highlight BufferLineModified guibg=none guifg=#D4D4D4]]
vim.cmd[[highlight BufferLineModifiedVisible guibg=none guifg=#D4D4D4]]
vim.cmd[[highlight BufferLineModifiedSelected guibg=none guifg=#D4D4D4]]
vim.cmd[[highlight BufferLineBuffer gui=none guibg=none guifg=#D4D4D4]]
vim.cmd[[highlight BufferLineBufferSelected gui=none guibg=none guifg=#D4D4D4]]
vim.cmd[[highlight BufferLineBufferVisible gui=none guibg=none guifg=#D4D4D4]]
