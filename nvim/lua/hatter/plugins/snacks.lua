return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    --
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
    zen = {
      -- your zen configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    terminal = {
      win = {
        keys = {
          q = { "<C-q>", function() Snacks.terminal.toggle() end, desc = "Togglq terminal", expr = true, mode = "t" },
          -- related config example https://github.com/jellydn/my-nvim-ide/blob/main/lua/plugins/extras/snacks.lua
        },
      }
    }
  },
  keys = {
    { "<leader>z",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
    { "<leader>Z",  function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },
    { "<leader>T",  function() Snacks.terminal.toggle() end, desc = "Toggle Terminal!" },
  }
}
