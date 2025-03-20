-- https://github.com/epwalsh/obsidian.nvim
return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",

  cmd = {
    -- cmds from init.lua
    "ObsidianCheck",
    "ObsidianToggleCheckbox",
    "ObsidianToday",
    "ObsidianYesterday",
    "ObsidianTomorrow",
    "ObsidianDailies",
    "ObsidianNew",
    "ObsidianOpen",
    "ObsidianBacklinks",
    "ObsidianSearch",
    "ObsidianTags",
    "ObsidianTemplate",
    "ObsidianNewFromTemplate",
    "ObsidianQuickSwitch",
    "ObsidianLinkNew",
    "ObsidianLink",
    "ObsidianLinks",
    "ObsidianFollowLink",
    "ObsidianWorkspace",
    "ObsidianRename",
    "ObsidianPasteImg",
    "ObsidianExtractNote",
    "ObsidianDebug",
    "ObsidianTOC",
  },

  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "my",
        path = "$NOTES",
      },
      {
        name = "work",
        path = "$NOTES/../work",
      },
    },

  },
}
