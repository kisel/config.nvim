-- NVIM config
--
-- open with :Config or <space>sn

-- Set <space> as the <leader> key
-- must be before loading lazy. default <leader> is \
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- require 'custom.options'
-- require 'custom.keymaps'

vim.g.mapleader = " "

require 'custom.lazy'

