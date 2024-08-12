-- https://neovide.dev/configuration.html
if vim.g.neovide then
  -- https://www.nerdfonts.com/font-downloads
  -- guifont wants existing font.
  if vim.fn.has('windows') then
    vim.o.guifont = "Hack Nerd Font Mono,Consolas:h12"
  else
    vim.o.guifont = "Hack Nerd Font Mono,Ubuntu:h12"
  end

  vim.g.neovide_position_animation_length = 0.15
  vim.g.neovide_scroll_animation_length = 0.1
end
