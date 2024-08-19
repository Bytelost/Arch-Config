-- Set Option Config
vim.opt.smarttab = true				-- Smart tabbing
vim.opt.number = true				-- Show line numbers
vim.opt.autoindent = true			-- Auto indentation
vim.opt.tabstop = 4					-- Tab width
vim.opt.shiftwidth = 4				-- Indentation width
vim.opt.softtabstop = 4				-- Tab width while editing
vim.opt.termguicolors = true		-- Enable true color support
vim.g.loaded_netrw = 1				-- Disable netrw
vim.g.loaded_netrwPlugin = 1		-- Disable netrw
vim.opt.fillchars = { eob = " " }	-- Change empty lines symbol
vim.bo.modifiable = true			-- Make buffer modfiable for mason


-- Highlight line number
vim.wo.cursorline = true

-- Plug Config
local vim = vim
local Plug = vim.fn['plug#']

-- Plugins
vim.call('plug#begin')
    Plug('nvim-lualine/lualine.nvim')
    Plug('nvim-tree/nvim-web-devicons')
    Plug('nvim-tree/nvim-tree.lua')
    Plug('nvim-lua/plenary.nvim')
    Plug('nvim-telescope/telescope.nvim')
    Plug('catppuccin/nvim')
	Plug('williamboman/mason.nvim')
	Plug('williamboman/mason-lspconfig.nvim')
	Plug('neovim/nvim-lspconfig')
	Plug('hrsh7th/cmp-nvim-lsp')
	Plug('hrsh7th/nvim-cmp')
	Plug('nvim-treesitter/nvim-treesitter')
vim.call('plug#end')

-- Lualine Config
require('lualine').setup()

-- Nvim Tree Config
require("nvim-tree").setup()

-- Set collorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- LSP Configurations
require("plugins.lsp_config")

-- Completions Configurations
require("plugins.completions")

-- Sintax Highlight Configurations
require("plugins.treesitter")
