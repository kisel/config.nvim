-- NVIM config
--
-- open with :Config or <space>sn

-- Set <space> as the <leader> key
-- must be before loading lazy. default <leader> is \
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- require 'custom.options'
-- require 'custom.keymaps'

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

-- see also
-- :h load-plugins
-- nvim will load .config/nvim/plugin/**/*.{lua,vim}

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  spec = {
    -- import your plugins
    { import = "custom/plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = false },

  change_detection = {
    notify = false,
  },
}
