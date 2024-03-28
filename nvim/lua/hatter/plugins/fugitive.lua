return {
  "tpope/vim-fugitive",
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "gs", "<cmd>Git<CR>", { desc = "Call for Fugitive ui" }) -- restore last workspace session for current directory
  end,
}
