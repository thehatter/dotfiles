return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "MeanderingProgrammer/render-markdown.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "main_vault",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/andrei_main_obsidian_vault",
      },
    },
    templates = {
      folder = "Templates",
      -- date_format = "%Y-%m-%d-%a",
      -- time_format = "%H:%M",
    },
  },

  config = function()
    local obsidian = require("obsidian")
    obsidian.setup({
      workspaces = {
        {
          name = "main_vault",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/andrei_main_obsidian_vault",
        },
      },
      templates = {
        folder = "Templates",
        -- date_format = "%Y-%m-%d-%a",
        -- time_format = "%H:%M",
      },

    })

    require('render-markdown').setup({
      bullet = {
        -- turn on / off list bullet rendering
        enabled = true,
        -- replaces '-'|'+'|'*' of 'list_item'
        -- how deeply nested the list is determines the 'level'
        -- the 'level' is used to index into the list using a cycle
        -- if the item is a 'checkbox' a conceal is used to hide the bullet instead
        icons = { '●', '○', '◆', '◇' },
        -- padding to add to the left of bullet point
        left_pad = 0,
        -- padding to add to the right of bullet point
        right_pad = 1,
        -- highlight for the bullet icon
        highlight = 'rendermarkdownbullet',
      },
    })
  end,
  -- require("obsidian").setup({
  --   workspaces = {
  --     {
  --       name = "main_vault",
  --       path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/andrei_main_obsidian_vault",
  --     },
  --   },
  --   templates = {
  --     folder = "Templates",
  --     -- date_format = "%Y-%m-%d-%a",
  --     -- time_format = "%H:%M",
  --   },
  -- }),

  --
  -- require('render-markdown').setup({
  --   bullet = {
  --     -- turn on / off list bullet rendering
  --     enabled = false,
  --     -- replaces '-'|'+'|'*' of 'list_item'
  --     -- how deeply nested the list is determines the 'level'
  --     -- the 'level' is used to index into the list using a cycle
  --     -- if the item is a 'checkbox' a conceal is used to hide the bullet instead
  --     icons = { '●', '○', '◆', '◇' },
  --     -- padding to add to the left of bullet point
  --     left_pad = 0,
  --     -- padding to add to the right of bullet point
  --     right_pad = 2,
  --     -- highlight for the bullet icon
  --     highlight = 'rendermarkdownbullet',
  --   },
  -- })

}
