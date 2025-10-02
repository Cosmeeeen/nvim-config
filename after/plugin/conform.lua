require("conform").setup({
  formatters_by_ft = {
    -- JavaScript/TypeScript (use Prettier for project configs)
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },

    -- Web formats
    json = { "prettierd", "prettier", stop_after_first = true },
    html = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
    markdown = { "prettierd", "prettier", stop_after_first = true },
    yaml = { "prettierd", "prettier", stop_after_first = true },

    -- Lua
    lua = { "stylua" },

    -- Python
    python = { "isort", "black" },

    -- Shell
    sh = { "shfmt" },
    bash = { "shfmt" },

    -- Go
    go = { "goimports", "gofmt" },

    -- Rust (handled by LSP rustfmt)
    -- rust = {},
  },
  format_on_save = function(bufnr)
    -- Disable autoformat for files without a formatter configured
    if not require("conform").get_formatter_info(bufnr).available then
      return
    end

    return {
      timeout_ms = 500,
      lsp_fallback = true,
    }
  end,
})
