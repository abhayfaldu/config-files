function ColorMyPencils(color)
	color = color or "nightfly" -- onedark, nightfly, catppuccin 
	if color == "onedark" then
		require("onedark").setup({
			style = "cool",
		})
		require("onedark").load()
	else
		vim.cmd.colorscheme(color)
	end

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
