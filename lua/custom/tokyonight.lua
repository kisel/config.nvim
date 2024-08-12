--- @diagnostic disable: missing-fields
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- transparent = true, -- do not set background. keep it black
  -- disable italic for functions
  -- styles = {
  --   functions = {}
  -- },
  -- make the theme a bit darker than night
  on_colors = function(colors)
    -- colors.hint = colors.orange
    -- colors.error = "#ff0000"
    -- colors.bg = "#1a1b26"
    --- @diagnostic disable-next-line: inject-field
    colors.bg = "#0a0b06"
  end,

  -- on_highlights = function(hl, c)
  -- end,
})

vim.cmd.colorscheme 'tokyonight-night'

