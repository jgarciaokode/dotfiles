vim.cmd[[highlight BookmarkSign ctermbg=NONE ctermfg=160]]
vim.cmd[[highlight BookmarkLine ctermbg=194 ctermfg=NONE]]
vim.g.bookmark_sign = '🎌'
vim.g.bookmark_highlight_lines = 1
vim.g.bookmark_center = 1
-- vim.g.bookmark_save_per_working_dir = 1
-- vim.g.auto_save = 1

-- vim.cmd[[let g:bookmark_save_per_working_dir = 1]]
-- vim.cmd[[let g:bookmark_auto_save = 1]]

-- vim.api.nvim_exec([[
-- " Finds the Git super-project directory.
-- function! g:BMWorkDirFileLocation()
--     let filename = 'bookmarks'
--     let location = ''
--     if isdirectory('.git')
--         " Current work dir is git's work tree
--         let location = getcwd().'/.git'
--     else
--         " Look upwards (at parents) for a directory named '.git'
--         let location = finddir('.git', '.;')
--     endif
--     if len(location) > 0
--         return location.'/'.filename
--     else
--         return getcwd().'/.'.filename
--     endif
-- endfunction
-- ]], false)

