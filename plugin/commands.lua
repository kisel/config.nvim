-- resolve :Te to netrw and avoid collision with :Telescope
-- vim.cmd.command("Te", ":Texplore")
--vim.api.nvim_create_user_command("Te", ":Texplore", {bang = true})

-- vim.api.nvim_create_user_command("Te", ":Texplore", {desc = ":Texplore collision fixup"})
vim.api.nvim_create_user_command("NG", ":Neogit", {desc = ":Neogit alias"})

-- open nvim config init.lua with :config
-- use <space>fn instead
-- vim.cmd.command("Config", ":e ~/.config/nvim/init.lua")


