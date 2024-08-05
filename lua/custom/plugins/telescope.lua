-- Fuzzy Finder (files, lsp, etc)
-- https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",

      -- condition used to determine whether this plugin should be
      cond = function()
        return vim.fn.executable "make" == 1
      end,
    },
    -- sets vim.ui.select to telescope. That means for example that neovim core stuff can fill the telescope picker.
    -- Example would be lua vim.lsp.buf.code_action().
    { "nvim-telescope/telescope-ui-select.nvim" },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  },
  config = function()
      -- load my telescope config
      require 'custom.telescope'
  end,
}
