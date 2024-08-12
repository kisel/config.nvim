-- https://github.com/sindrets/diffview.nvim
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen' },
  config = function()
    require("diffview").setup({})
    -- aliases
    vim.api.nvim_create_user_command('Diff', 'DiffviewOpen', {})
    vim.api.nvim_create_user_command('DiffC', 'DiffviewClose', {})
  end,
}

