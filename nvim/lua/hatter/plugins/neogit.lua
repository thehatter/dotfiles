return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    local neogit = require("neogit")
    neogit.setup({
      -- add custom configurations here
    })
    local keymap = vim.keymap
    keymap.set("n", "<leader>gg", "<cmd>Neogit<CR>", { desc = "Neogit" })
  end,
}
