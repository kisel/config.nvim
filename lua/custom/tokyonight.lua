-- https://github.com/folke/tokyonight.nvim
--- @diagnostic disable: missing-fields
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- transparent = true, -- do not set background. keep it black
  -- disable italic for functions
  -- styles = {
  --   functions = {}
  -- },
  -- https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua
  -- https://raw.githubusercontent.com/folke/tokyonight.nvim/main/extras/lua/tokyonight_night.lua
  -- make the theme a bit darker than night
  on_colors = function(colors)
    -- colors.hint = colors.orange
    -- colors.error = "#ff0000"
    -- colors.bg = "#1a1b26"
    --- @diagnostic disable-next-line: inject-field
    colors.bg = "#0a0b06"

    -- DiffAdd        xxx guibg=#20303b
    -- DiffChange     xxx guibg=#1f2231
    -- DiffDelete     xxx guibg=#37222c
    -- DiffText       xxx guibg=#394b70
    -- DiffviewPrimary xxx guifg=#7aa2f7
    colors.diff.add = "#10203b"
    colors.diff.change = "#0f1221"
    colors.diff.delete = "#37222c"
    colors.diff.text = "#394b70"
  end,

  -- on_highlights = function(hl, c)
  -- end,
})

vim.cmd.colorscheme 'tokyonight-night'
