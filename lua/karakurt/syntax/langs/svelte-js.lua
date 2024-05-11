local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@tag.svelte"] = { fg = c.base10, bold = true },
		["@tag.attribute.svelte"] = { fg = c.base10, italic = true },
		["@string.special.url.svelte"] = { fg = c.green500 },
	}
end

return M
