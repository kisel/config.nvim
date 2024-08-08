-- resolve :Te to netrw and avoid collision with :Telescope
vim.cmd.command("Te", ":Texplore")

-- open nvim config init.lua with :config
vim.cmd.command("Config", ":e ~/.config/nvim/init.lua")


