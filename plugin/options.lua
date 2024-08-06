vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal

-- netrw tree mode by default. can be changed by 'i'
--vim.g.netrw_liststyle = 3

-- vim.cmd.colorscheme 'torte'
-- vim.cmd.colorscheme 'tokyonight-night'

-- [[ Setting options ]]
-- `:help vim.opt`
-- `:help option-list`

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a" -- Enable mouse & touchpad

vim.opt.showmode = true -- show current mode in the status bar. i.e -- INSERT --

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

vim.opt.breakindent = true -- Enable break indent

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250 -- Decrease update time

vim.opt.timeoutlen = 300 -- Displays which-key popup sooner

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split" -- Preview substitutions live, as you type!

vim.opt.cursorline = true -- Show which line your cursor is on

vim.opt.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor.

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.swapfile = false -- do not use a swap file for the buffer
vim.opt.backup = false -- do not keep a backup file
vim.opt.undodir = os.getenv "HOME" .. "/.vim/undodir" -- set directory where undo files are stored
vim.opt.undofile = true -- save undo history to a file

-- wrap & break lines(:h lbr) at spaces instead of mid-word
vim.opt.wrap = true
vim.opt.linebreak = true

-- reserve 1 char for signcolumn(:h scl)
vim.opt.signcolumn = "yes"

-- more reasonable shada options. not important
vim.opt.shada = { "'10", "<0", "s10", "h" }

-- Don't have `o` add a comment
vim.opt.formatoptions:remove "o"
