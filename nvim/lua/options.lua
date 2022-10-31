local opt = vim.opt

vim.cmd "filetype indent plugin on"

opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.cursorline = true
opt.expandtab = true
opt.ignorecase = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.shiftround = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes:1"
opt.smartcase = true
-- opt.smartindent = true
opt.swapfile = false
opt.termguicolors = true
opt.cc = "100"
opt.wrap = false
opt.mouse = "a"
opt.laststatus = 3

vim.g._has_set_default_indent_settings = 1

-- vim.g.material_style = "darker"
-- vim.g.material_style = "deep ocean"
-- require('onedark').setup {
--     style = 'darker'
-- }
-- require('onedark').load()

-- require('onedarkpro').setup {
--     dark_theme = "onedark_dark"
-- }
-- require('onedarkpro').load()

vim.g.tokyonight_style = 'night'
vim.cmd[[colorscheme tokyonight]]

-- vim.cmd[[colorscheme dracula]]

