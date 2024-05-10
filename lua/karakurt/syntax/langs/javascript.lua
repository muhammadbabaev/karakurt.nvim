local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@constructor.javascript"] = { fg = c.red300 },
	}
end

return M
