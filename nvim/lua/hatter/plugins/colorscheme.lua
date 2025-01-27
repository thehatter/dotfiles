-- return { "shaunsingh/nord.nvim",
--   name = "nord",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- load colorscheme
--     vim.cmd ([[colorscheme nord]])
--   end
-- }
-- return {
--   'projekt0n/caret.nvim',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require('caret').setup({
--       -- ...
--     })
--
--     vim.cmd('colorscheme caret')
--   end,
-- }
-- return {
--   {
--     "bluz71/vim-nightfly-guicolors",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       -- load the colorscheme here
--       vim.cmd([[colorscheme nightfly]])
--     end,
--   },
-- }
return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
        background = "hard",
        colours_override = function (palette)
          palette.bg0 = "#1c2021"
          palette.bg_dim = "#181b1c"
          -- palette.bg0 = "#23272A"
        end
      })
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
