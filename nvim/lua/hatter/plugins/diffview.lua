return {
  "sindrets/diffview.nvim",

  config = function ()
    local diffview = require("diffview")
    diffview.setup {
      diff_binaries = false, -- Show diffs for binaries
    }
  end
}
