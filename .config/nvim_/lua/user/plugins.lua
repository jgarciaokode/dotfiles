local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- Colorschemes
  use { 'Mofiqul/vscode.nvim', config = "require'vscode-config'" }
  -- use { 'ellisonleao/gruvbox.nvim', config = "require'gruvbox-config'" }
  -- use { 'rmehri01/onenord.nvim', config = "require'onenord-config'" }

  -- Utils
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nelstrom/vim-visual-star-search' }
  use { 'tpope/vim-surround' }
  use { 'ThePrimeagen/harpoon' }
  use { 'tpope/vim-repeat' }
  use { 'norcalli/nvim-colorizer.lua', config = "require'colorizer-config'", event = 'BufRead' }
  use { 'mogelbrod/vim-jsonpath', config = "require'jsonpath-config'" }
  use { 'windwp/nvim-autopairs', after = "nvim-cmp", config = "require'autopairs-config'" }
  use { 'lewis6991/impatient.nvim', config = "require'impatient-config'" }
  use { 'lukas-reineke/indent-blankline.nvim', config = "require'indentline-config'", event = 'BufRead' }
  use { 'christoomey/vim-tmux-navigator', config = "require'tmuxnavigator-config'" }
  use { 'terryma/vim-multiple-cursors', config ="require'multicursors-config'" }
  use { 'NTBBloodbath/rest.nvim', config = "require'rest-config'" }
  use { 'romainl/vim-qf', config = "require'vimqf-config'" }
	use { 'folke/trouble.nvim', config = "require'trouble-config'" }
  use { 'p00f/nvim-ts-rainbow', event = 'BufRead', after = 'nvim-treesitter' }
  use { 'metakirby5/codi.vim' }

  -- NvimTree
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua', config = "require'nvimtree-config'" }
  use { 'onsails/lspkind.nvim' }

  -- Statusline and Bufferline
  use { 'akinsho/bufferline.nvim', event ='BufRead' , config = "require'bufferline-config'" }
  use { 'nvim-lualine/lualine.nvim', event = 'BufRead', config = "require'lualine-config'" }
  use { 'pirey/toggle-line.vim' }

  -- Cmp plugins
  use { 'hrsh7th/nvim-cmp', config = "require'cmp-config'", event = 'InsertEnter'}
  use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }

  -- Snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'rafamadriz/friendly-snippets' --snippet engine
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions

  -- LSP
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'b0o/SchemaStore.nvim', after = 'nvim-lsp-installer' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'mfussenegger/nvim-jdtls' }
  use { 'ray-x/lsp_signature.nvim', config = "require'signature-config'" }
  use { 'jose-elias-alvarez/typescript.nvim', config = "require'ts-config'" }
  use { 'mikelue/vim-maven-plugin' }
  use { 'filipdutescu/renamer.nvim', branch = 'master', config = "require'renamer-config'" }

  -- DAP
  use { 'mfussenegger/nvim-dap', event = 'VimEnter', config = "require'dap-config'" }
  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
  use { 'theHamsta/nvim-dap-virtual-text', config = "require'dapvirtualtext-config'" }


  -- Hop
  use { 'phaazon/hop.nvim',
  branch = 'v1', -- optional but strongly recommended
  config = function()
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
  }

  -- Illuminate
  use "RRethy/vim-illuminate"

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', config = "require'telescope-config'",
    requires = { { 'nvim-telescope/telescope-live-grep-raw.nvim' } }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-ui-select.nvim' }
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use { 'ahmedkhalf/project.nvim', requires = {"neovim/nvim-lspconfig"}, config = "require'project-config'" }
  use { 'dhruvmanila/telescope-bookmarks.nvim' }
  use { 'tom-anders/telescope-vim-bookmarks.nvim' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    config = "require'treesitter-config'",
    event = 'BufWinEnter' }
  use { 'nvim-treesitter/nvim-treesitter-textobjects',
    config = "require'textobjects-config'", after = 'nvim-treesitter' }
  use { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter', config = "require'treerefactor-config'"}
  use { 'nvim-treesitter/nvim-treesitter-angular' }
  use { 'windwp/nvim-ts-autotag' }

  -- Vim paste
  use { 'sickill/vim-pasta' }

  -- Vim bookmarks
  use { 'MattesGroeger/vim-bookmarks', event = 'VimEnter', config = "require'bookmarks-config'" }

  -- Comment
  use { 'numToStr/Comment.nvim', config = "require'comment-config'" }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }

  -- Git
  use { 'lewis6991/gitsigns.nvim', event = 'BufRead', config = "require'gitsigns-config'" }
  use { 'tpope/vim-fugitive' }
  use { 'f-person/git-blame.nvim', config ="require'gitblame-config'" }
  use { 'sindrets/diffview.nvim', config = "require'diffview-config'" }
  use { 'rhysd/conflict-marker.vim', event = 'VimEnter', config = "require'conflict-config'" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
