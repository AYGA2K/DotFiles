-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = vim.opt
opt.cursorline = false
opt.autowrite = false
opt.number = true
opt.relativenumber = true
opt.wrap = true
-- Set the desired text width
opt.textwidth = 70

-- Enable breaking lines at word boundaries
opt.linebreak = true
