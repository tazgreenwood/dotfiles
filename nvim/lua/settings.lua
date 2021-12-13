local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local wo = vim.wo
local bo = vim.bo
local fn = vim.fn

cmd 'syntax enable'
cmd 'filetype plugin indent on'
opt.completeopt = 'menu,menuone,noselect'
opt.swapfile = false
opt.smartcase = true
opt.scrolloff = 8
opt.mouse = 'a'
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.smartindent = true
opt.hidden = true
opt.signcolumn = 'yes'
opt.number = true
opt.relativenumber = true
opt.clipboard = 'unnamed,unnamedplus'
opt.termguicolors = true

-- set colorscheme
cmd 'colorscheme monokai_pro'

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
