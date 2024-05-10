local M = {}

function M.setup(colors)
	local c = colors

	return {
		["@module.rust"] = { fg = c.orange500, bold = true },

		["@keyword.rust"] = { fg = c.base10, bold = true, italic = true },
		["@keyword.modifier.rust"] = { fg = c.orange500, bold = true, italic = true }, -- mut, ...
		["@keyword.import.rust"] = { link = "@keyword.rust" }, -- use
		["@keyword.function.rust"] = { link = "@keyword.rust" }, -- fn
		["@function.rust"] = { fg = c.base10, bold = true },
		["@function.call.rust"] = { link = "@function.rust" },
		["@type.rust"] = { fg = c.yellow500, bold = true },
		["@type.builtin.rust"] = { link = "@type.rust" },

		["@operator.rust"] = { fg = c.yellow100, bold = true },

		["@punctuation.delimiter.rust"] = { fg = c.base10 },
	}
end

return M
