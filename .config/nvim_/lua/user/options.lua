local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  numberwidth = 2,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  -- guifont = "monospace:h17",               -- the font used in graphical neovim applications
  incsearch = true
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"
vim.cmd[[syntax enable]]
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]

-- Git
vim.cmd[[set diffopt+=iwhiteall,iblank]]
vim.cmd[[set diffopt+=internal,algorithm:patience]]


-- Format

vim.cmd [[set formatoptions-=c]]
vim.cmd [[set formatoptions-=r]]
vim.cmd [[set formatoptions-=o]]

-- Wrapping
vim.cmd[[autocmd OptionSet * if &diff | execute 'set wrap' | endif]]
vim.cmd[[au FileType LuaTree setlocal nowrap]]
vim.cmd[[au FileType NvimTreeNormal setlocal nowrap]]
vim.cmd[[autocmd User TelescopePreviewerLoaded setlocal wrap]]
vim.cmd[[set breakindent]]


-- ListChars
vim.cmd[[set showbreak=↪\]]


-- Folding
vim.cmd[[set foldmethod=indent]]
vim.cmd[[set foldnestmax=10]]
vim.cmd[[set nofoldenable]]
-- vim.cmd[[set foldlevel=2]]
vim.cmd[[set foldlevelstart=20]]


