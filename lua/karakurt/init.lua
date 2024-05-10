local theme = require("karakurt.theme")

local M = {}

function M.setup()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "karakurt"

	local theme = theme.setup()

	for group, color in pairs(theme.highlights) do
		vim.api.nvim_set_hl(0, group, color)
	end
end

return M
