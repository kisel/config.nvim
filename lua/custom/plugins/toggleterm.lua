-- https://github.com/akinsho/toggleterm.nvim
--
local function get_shell()
  if vim.fn.has("win32") == 1 then
    return "pwsh -nologo"
  else
    return vim.o.shell
  end
end

return {
  'akinsho/toggleterm.nvim',
  version = "*",

  opts = {
    open_mapping = [[<c-\>]],
    shell = get_shell(),

    -- hide_numbers = true, -- hide the number column in toggleterm buffers
    -- shade_terminals = true,

  }
}
