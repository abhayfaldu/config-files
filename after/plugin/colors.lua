function ColorMyPencils(color)
	color = color or "onedark"
	if color == "onedark" then
		require("onedark").setup({
			style = "cool",
		})
		require("onedark").load()
	else
		vim.cmd.colorscheme(color)
	end
end

ColorMyPencils()
