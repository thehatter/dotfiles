return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- mason-lspconfig v2 auto-enables every installed mason package that maps to
      -- an lspconfig server. stylua maps to one (StyLua has an --lsp mode), but the
      -- version mason-tool-installer pins predates that flag, so it crashes on start.
      -- It's only here as a formatter, so keep it out of the LSP set.
      automatic_enable = {
        exclude = { "stylua" },
      },
      -- list of servers for mason to install
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        -- "eslint",
      },
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    },
    dependencies = {
      "mason-org/mason.nvim",
    },
  },
}
