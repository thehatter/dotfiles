return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-rspec")({
          filter_dirs = { "event_notifications", "profiling" }
        })
        -- require("neotest-plenary").setup({
        --     -- this is my standard location for minimal vim rc
        --     -- in all my projects
        --     min_init = "./scripts/tests/minimal.vim",
        -- }),
      }
    })

    -- run all tests
    vim.keymap.set("n", "<leader>ta", function()
      neotest.run.run(vim.fn.getcwd())
    end)

    -- run nearest test
    vim.keymap.set("n", "<leader>tc", function()
      neotest.run.run()
    end)

    -- run current file tests
    vim.keymap.set("n", "<leader>tf", function()
      neotest.run.run(vim.fn.expand("%"))
    end)
  end,
}
