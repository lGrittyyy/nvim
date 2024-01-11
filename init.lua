--setting leaderkey
vim.g.mapleader = ' '


--lazy must be at the end of the file
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

--requiring lazy plugins from /lua/plugins/*.lua
require("lazy").setup("plugins")
--requireing options form /lua/options.lua
require("options")

vim.cmd("colorscheme catppuccin-frappe")
