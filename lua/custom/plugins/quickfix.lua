return {
  {
    "kevinhwang91/nvim-bqf",
    ft = 'qf',
    enabled = false,
    config = function()
      require("bqf").setup()
    end,
  },
  {
    "stevearc/qf_helper.nvim",
    opts = {},
  },
}
