local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


local opts = {}

-- Calling setup functions for plugins (found in lua/plugins.lua)
-- vim-opts in vim-opts.lua
require("vim-opts")
require("lazy").setup("plugins", opts)


-- Set relative line numbering
vim.wo.relativenumber = true;
