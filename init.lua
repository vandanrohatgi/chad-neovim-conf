vim.opt.ignorecase = true -- ignore commands case
vim.g.mapleader = " "

-- install lazy.nvim and configure
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { import = 'plugins' },
}, {})

-- colors!
vim.cmd [[colorscheme tokyonight-storm]]

-- explorer
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

--line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- set clipboard to a common between system and vim
vim.opt.clipboard = "unnamedplus"

-- spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.textwidth = 80
--formatoptions+=tca

vim.opt.wrap = false

-- very annoying. IF ever using undo-tree just set undofile = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- highlight as we write regex
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
