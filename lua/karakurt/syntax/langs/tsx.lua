local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@tag.tsx"] = { fg = c.base10, bold = true },
		["@tag.attribute.tsx"] = { fg = c.base10, italic = true },
	}
end

return M
