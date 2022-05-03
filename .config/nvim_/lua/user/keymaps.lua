local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
local telescope = require("telescope");

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -5<CR>", opts)
keymap("n", "<C-Down>", ":resize +5<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -5<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +5<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Folding
keymap("n", "<C-p>", "za", opts)

-- Paste
-- keymap("v", "p", '"_dP', opts)
keymap("n", "d", "\"_d", opts)
keymap("n", "D", "\"_D", opts)
keymap("n", "dd", "\"_dd", opts)
keymap("n", "<leader>pu", "<cmd>pu<cr>", opts)

-- Cmd modifiers
vim.cmd[[map <M-g> gcc]]
keymap("n", "<M-p>", "<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<M-e>", "<cmd>NvimTreeToggle<cr>", opts)

-- Ctrls + shit modifiers
keymap("n", "<M-j>", "<cmd>cnext<cr>", opts)
keymap("n", "<M-k>", "<cmd>cprev<cr>", opts)
keymap("n", "<M-l>", "<cmd>lnext<cr>", opts)
keymap("n", "<M-h>", "<cmd>lprev<cr>", opts)

-- Utilities
keymap("n", "<Leader>q", "<cmd>q!<CR>", opts)
keymap("n", "<Leader>n", "<cmd>nohlsearch<CR>", opts)
keymap("n", "<Leader>d", "<cmd>NvimTreeFindFile<cr>", opts)
keymap("n", "<Leader>fi", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<Leader>ps", "<cmd>lua require('telescope.builtin').grep_string()<CR>", opts);
keymap("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "tr", "<cmd>Telescope resume<cr>", opts)
-- keymap("n", "<Leader>ps", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>", opts);
vim.keymap.set({ "n", "v" }, "<Leader>fr", function()
  telescope.extensions.live_grep_raw.live_grep_raw({ vimgrep_arguments = {
  "rg",
  "--color=never",
  "--no-heading",
  "--with-filename",
  "--line-number",
  "--column",
  -- "--ignore-case",
  -- "--smart-case",
  -- "--word-regexp"
} })
end)
keymap("n", "<Leader>fs", "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
keymap("n", "<Leader>ss", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
keymap("n", "gv", "<cmd>vsp | lua vim.lsp.buf.definition()<cr>", opts)
keymap("n", '<Leader>pp', "<cmd>Telescope projects<CR>", opts)
vim.api.nvim_set_keymap( "n", "<Leader>fb", ":Telescope file_browser<CR>", { noremap = true })

-- Telescope
keymap("n", "<Leader>gg", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<Leader>ga", "<cmd>Telescope git_stash<cr>", opts)
keymap("n", "<Leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<cr>", opts)
keymap("n", "<Leader>.", "<cmd>lua require('telescope-config/custom').search_dotfiles()<cr>", opts)
keymap("n", "<Leader>go", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<Leader>pc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<Leader>ht", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<Leader>mp", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<Leader>of", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<Leader>rg", "<cmd>Telescope registers<cr>", opts)
keymap("n", "<Leader>ke", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<Leader>cm", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<Leader>td", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<Leader>dl", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", opts)
keymap("n", "<Leader>gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<Leader>gk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
keymap("n", "<Leader>bo", "<cmd>Telescope bookmarks<cr>", opts)
keymap("n", "<Leader>ma", "<cmd>Telescope vim_bookmarks<cr>", opts)
keymap("n", "<Leader>sy", "<cmd>Telescope lsp_document_symbols<cr>", opts)


-- Diffview
keymap("n", "<Leader>gd", "<cmd>DiffviewOpen<cr>", opts)
keymap("n", "<Leader>cc", "<cmd>DiffviewClose<cr>", opts)

-- Navigate buffers
keymap("n", "<Leader>k", ":bnext<CR>", opts)
keymap("n", "<Leader>j", ":bprevious<CR>", opts)

-- Harpoon
keymap("n", "<Leader>ha", "<cmd>Telescope harpoon marks<cr>", opts)
keymap("n", "<Leader>mm", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<Leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<Leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<Leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<Leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<Leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)

-- Git blame
keymap("n", "<Leader>bl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", opts)
keymap("n", "<Leader>bt", "<cmd>GitBlameToggle<cr>", opts)
keymap("n", "<Leader>bu", "<cmd>GitBlameOpenCommitUrl<cr>", opts)

-- TS
keymap("n", "<Leader>ia", "<cmd>lua require('typescript').addMissingImports()<cr>", opts)


-- Replace
vim.cmd[[nnoremap <Leader>rr :%s///g<Left><Left>]]
vim.cmd[[xnoremap <Leader>rr :s///g<Left><Left>]]
vim.cmd[[nnoremap <Leader>rq :cfdo %s///g \| update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>]]

-- Vim Fugitive
keymap("n", "<Leader>gu", ":diffget<cr>", opts)
keymap("n", "<Leader>gs", ":diffput<cr>", opts)
keymap("n", "<Leader>gv", ":Gvdiffsplit! HEAD~", {noremap = true});

-- Trouble lsp
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xr", "<cmd>Trouble lsp_references<cr>", opts)

-- ToggleLine
vim.api.nvim_set_keymap("n", "<Leader>tl", "<cmd>ToggleLine<cr>", opts)

-- Hop
vim.api.nvim_set_keymap('n', '<Leader>w', "<cmd>lua require'hop'.hint_words()<cr>", opts)

-- DAP
vim.keymap.set('n', '<leader>ee', function() require"dap".toggle_breakpoint() end)
vim.keymap.set('n', '<leader>en', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set('n', '<Leader>hh', function() require"dap".step_out() end)
vim.keymap.set('n', "<Leader>kk", function() require"dap".step_into() end)
vim.keymap.set('n', '<Leader>jj', function() require"dap".step_over() end)
vim.keymap.set('n', '<Leader>ll', function() require"dap".continue() end)
vim.keymap.set('n', '<leader>ec', function() require"dap".run_to_cursor() end)
vim.keymap.set('n', '<leader>et', function() require"dap".terminate() end)
vim.keymap.set('n', '<leader>eC', function() require"dap".clear_breakpoints() end)
vim.keymap.set('n', '<leader>ea', function() require"debughelper-config".attach() end)
vim.keymap.set('n', '<leader>eE', function() require"debughelper-config".attachToRemote() end)
vim.keymap.set('n', '<leader>eJ', function() require"debughelper-config".attachToPort8080() end)
vim.keymap.set('n', '<leader>eh', function() require"dap.ui.widgets".hover() end)
vim.keymap.set('n', '<leader>es', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end)
vim.keymap.set('n', '<leader>ek', ':lua require"dap".up()<CR>zz')
vim.keymap.set('n', '<leader>ej', ':lua require"dap".down()<CR>zz')
vim.keymap.set('n', '<leader>er', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
-- vim.keymap.set('n', '<leader>ee', function() require"dap".set_exception_breakpoints({"all"}) end)

-- Conflict markers
keymap("n", "<Leader>cj", "<cmd>ConflictMarkerNextHunk<cr>", opts)
keymap("n", "<Leader>ck", "<cmd>ConflictMarkerPrevHunk<cr>", opts)

-- Renamer
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
