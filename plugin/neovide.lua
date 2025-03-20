-- https://neovide.dev/configuration.html
if vim.g.neovide then
  -- https://www.nerdfonts.com/font-downloads
  -- guifont wants existing font.
  if vim.fn.has('windows') then
    vim.o.guifont = "Hack Nerd Font Mono,Consolas:h12"
  else
    vim.o.guifont = "Hack Nerd Font Mono,Ubuntu:h12"
  end

  -- disable animations except smooth scrolling
  -- https://neovide.dev/faq.html?highlight=animations#how-to-turn-off-all-animations
  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0.05

  vim.g.neovide_cursor_animation_length = 0.00
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_far_lines = 0
end

