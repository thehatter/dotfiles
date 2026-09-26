return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  branch = "main",
  build = ":TSUpdate",
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter")

    treesitter.install({
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "svelte",
      "graphql",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "ruby",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        -- Enable treesitter highlighting and disable regex syntax
        pcall(vim.treesitter.start)
        -- Enable treesitter-based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    -- configure treesitter
    -- treesitter.setup({ -- enable syntax highlighting
    --   highlight = {
    --     enable = true,
    --   },
    --   -- enable indentation
    --   indent = { enable = true },
    --   -- ensure these language parsers are installed
    --   installed = {
    --   },
    --   incremental_selection = {
    --     enable = true,
    --     keymaps = {
    --       init_selection = "<C-space>",
    --       node_incremental = "<C-space>",
    --       scope_incremental = false,
    --       node_decremental = "<bs>",
    --     },
    --   },
    -- })

    -- use bash parser for zsh files
    vim.treesitter.language.register("bash", "zsh")
  end,
}
