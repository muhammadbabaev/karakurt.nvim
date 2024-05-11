local M = {}

function M.setup(colors)
	local c = colors

	return {
		cssPseudoClass = { fg = c.yellow500, bold = true, italic = true },
		cssPseudoClassId = { link = "cssPseudoClass" },
	}
end

return M
