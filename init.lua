local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.g.mapleader = " "
vim.wo.fillchars = "eob: "

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

require("settings")
require("lazy").setup("plugins")
require("mappings")
require("colors")
require("treesitter")
require("nvim-lsp")
require("nvimtree")
require("nvim-lualine")
