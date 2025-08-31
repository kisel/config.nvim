-- https://github.com/nvim-telescope/telescope.nvim
--
local data = assert(vim.fn.stdpath "data") --[[@as string]]

-- simple joinpath for nvim <= 0.9.x, with no vim.fn.joinpath
local function joinpath(a, b) 
    return a .. '/' .. b
end

require("telescope").setup {
  defaults = {
    layout_config = {
      horizontal = {
        width = 0.99,
        height = 0.99,
      },
    },
  },

  extensions = {
    wrap_results = true,

    fzf = {},
    history = {
      path = joinpath(data, "/telescope_history.sqlite3"),
      limit = 100,
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {},
    },
  },
}

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "smart_history")
pcall(require("telescope").load_extension, "ui-select")
pcall(require("telescope").load_extension, "zoxide")

-- See `:help telescope.builtin`
local builtin = require "telescope.builtin"

vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[F]ind [S]elect Telescope" })
vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[F]ind [R]esume" })
vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader>fz", require("telescope").extensions.zoxide.list, {desc = "Zoxide"})
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

vim.keymap.set("n", "<leader>.", function()
  builtin.find_files { cwd = vim.fn.expand "%:p:h" }
end, { desc = "Find files in the same directory" })

vim.keymap.set("n", "<leader>nf", function()
  builtin.find_files {
    cwd = os.getenv "NOTES",
    find_command = { "rg", "--files", "--color", "never", "--sortr=modified" },
  }
end, { desc = "[N]otes [F]ind by name" })

vim.keymap.set("n", "<leader>ng", function()
  builtin.live_grep { cwd = os.getenv "NOTES" }
end, { desc = "[N]otes [G]grep" })

-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = "[/] Fuzzily search in current buffer" })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set("n", "<leader>f/", function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = "Live Grep in Open Files",
  }
end, { desc = "[F]ind [/] in Open Files" })

vim.keymap.set("n", "<leader>fn", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "[F]ind [N]eovim Config" })

vim.keymap.set("n", "<leader>fp", function()
  ---@diagnostic disable-next-line: param-type-mismatch
  builtin.find_files { cwd = joinpath(vim.fn.stdpath "data", "lazy") }
end, { desc = "[F]ind Neovim [P]lugin" })

vim.keymap.set("n", "<c-p>", builtin.find_files, { desc = "Ctrl-P find files" })

vim.api.nvim_create_user_command("PluginsFind", function()
  ---@diagnostic disable-next-line: param-type-mismatch
  builtin.find_files { cwd = joinpath(vim.fn.stdpath "data", "lazy") }
end, {})
