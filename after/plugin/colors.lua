function CustomColors(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Used for Tokyonight theme, not needed for bamboo as it's done through the config
-- CustomColors()

