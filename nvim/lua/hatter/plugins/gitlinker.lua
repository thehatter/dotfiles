return {
  'ruifm/gitlinker.nvim',
  config = function()
    require("gitlinker").setup({
      mappings = "<leader>gy",
    })
  end,
}
