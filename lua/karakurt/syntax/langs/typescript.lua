local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@constructor.typescript"] = { fg = c.red300 },
		-- ["@variable.builtin.typescript"] = { fg = c.orange500, italic = true },
		-- ["@keyword.modifier.typescript"] = { fg = c.orange500, bold = true, italic = true },
	}
end

return M
