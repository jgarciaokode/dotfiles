-- Default values
-- vim.g.conflict_marker_begin = "^<<<<<<< \\@="
-- vim.g.conflict_marker_common_ancestors = "^||||||| .*$"
-- vim.g.conflict_marker_separator = "^=======$"
-- vim.g.conflict_marker_end = "^>>>>>>> \\@="
vim.g.conflict_marker_enable_highlight = 1
-- https://github.com/rhysd/conflict-marker.vim finish this up at some point

-- " disable the default highlight group
vim.g.conflict_marker_highlight_group = ''
vim.g.conflict_marker_enable_matchit = 0

-- " Include text after begin and end markers
vim.g.conflict_marker_begin = '^<<<<<<< .*$'
vim.g.conflict_marker_end   = '^>>>>>>> .*$'

vim.cmd[[highlight ConflictMarkerBegin guibg=#2f7366]]
vim.cmd[[highlight ConflictMarkerOurs guibg=#2e5049]]
vim.cmd[[highlight ConflictMarkerTheirs guibg=#344f69]]
vim.cmd[[highlight ConflictMarkerEnd guibg=#2f628e]]
vim.cmd[[highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81]]
