-- https://github.com/iamcco/markdown-preview.nvim
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },

  build = "cd app && npm install",
  -- build = function()
  --   vim.fn["mkdp#util#install"]()
  -- end,
}
