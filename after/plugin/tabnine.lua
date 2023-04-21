-- import tabnine plugin safely
local setup, tabnine = pcall(require, "tabnine")
if not setup then
	return
end

require("tabnine").setup({
	disable_auto_comment = true,
	accept_keymap = "<C-f>",
	dismiss_keymap = "<C-c>",
	debounce_ms = 800,
	suggestion_color = { gui = "#808080", cterm = 244 },
	exclude_filetypes = { "TelescopePrompt" },
	log_file_path = nil, -- absolute path to Tabnine log file
})