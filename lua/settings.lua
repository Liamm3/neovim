local set = vim.opt
set.termguicolors = true
set.showmatch = true
set.ignorecase = true
set.hlsearch = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.number = true
-- set.wildmode=longest,list
-- set.cc = '80'
set.cursorline = true
set.ttyfast = true
set.mouse = 'a'
set.showmode = false
set.timeoutlen = 150

-- Global
vim.g.mapleader = ' '
vim.notify = require("notify")
