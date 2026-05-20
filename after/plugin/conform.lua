require("conform").setup({
	formatters_by_ft = {
		-- JavaScript/TypeScript: Run ESLint THEN Prettier
		javascript = { "eslint_d", "prettierd", "prettier", stop_after_first = true },
		typescript = { "eslint_d", "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "eslint_d", "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "eslint_d", "prettierd", "prettier", stop_after_first = true },

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
		-- Exclude node_modules
		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:match("/node_modules/") then
			return
		end

		return {
			timeout_ms = 5000, -- Comfortable margin for sequential eslint_d + prettierd
			lsp_fallback = false, -- We have dedicated formatters
		}
	end,
})
