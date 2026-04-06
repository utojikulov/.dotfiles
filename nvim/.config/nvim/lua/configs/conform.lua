local options = {
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 2000,
  },
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
    markdown = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
  },
  formatters = {
    prettier = {
      prepend_args = {
        "--single-quote",
        "--trailing-comma", "all",
        "--tab-width", "3",
        "--use-tabs",
        "--no-semi",
        "--arrow-parens", "avoid",
      },
    },
  },
}

require("conform").setup(options)
