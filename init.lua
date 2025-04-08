require("config/options")
require("config/mappings")
require("config/autocmds")

-- install lazy.nvim, do last so <leader> and other settings all set
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

-- load plugins
require("lazy").setup({
    spec = "plugins"
})

-- auto-enable LSPs, configured in lua/config/lsp
vim.lsp.enable("gopls")
