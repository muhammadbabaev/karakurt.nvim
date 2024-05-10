local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@tag.html"] = { fg = c.base10, bold = true },
		["@tag.attribute.html"] = { fg = c.base10, italic = true },
		["@string.special.url.html"] = { fg = c.green500 },
	}
end

return M
