return {
  "f-person/git-blame.nvim",
  -- load the plugin at startup
  event = "VeryLazy",
  -- Because of the keys part, you will be lazy loading this plugin.
  -- The plugin wil only load once one of the keys is used.
  -- If you want to load the plugin at startup, add something like event = "VeryLazy",
  -- or lazy = false. One of both options will work.

-- kurrently opts are not used at all
  opts = {
    -- your configuration comes here
    -- for example
    enabled = false,  -- if you want to enable the plugin
    message_template = "<summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
    date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
    virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
  },

  config = function()
    local keymap = vim.keymap
    -- the main reason why I use git-blame is to open the commit in the browser
    keymap.set("n", "<leader>gc", "<cmd>GitBlameOpenCommitURL<CR>", { desc = "Open Commit in Browser" })

    require('gitblame').setup {
      --Note how the `gitblame_` prefix is omitted in `setup`
      enabled = false,
    }
  end,
}
