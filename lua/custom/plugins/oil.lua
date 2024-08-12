-- https://github.com/stevearc/oil.nvim
return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        columns = { "icon" },
        keymaps = {
          ["<C-h>"] = false,
          ["<C-l>"] = false,
          ["<C-k>"] = false,
          ["<C-j>"] = false,
          ["<M-h>"] = "actions.select_split",
        },
        view_options = {
          show_hidden = true,
        },
        -- https://github.com/stevearc/oil.nvim/issues/155
        -- This disables netrw, but I can live without it
        default_file_explorer = true,
        --
        -- don't ask if no deletes, few copy/move
        -- skip_confirm_for_simple_edits = true,
      }
      -- Open parent directory in current window
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Toggle Oil float" })
    end,
  },
}
