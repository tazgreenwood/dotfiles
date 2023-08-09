function ColorMyPencils(color)
	-- color = color or "github_dark"
	-- color = color or "monokai-pro-spectrum"
	-- color = color or "dracula"
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
