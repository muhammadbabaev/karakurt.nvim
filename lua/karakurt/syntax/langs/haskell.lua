M = {}

function M.setup(colors)
	local c = colors

	return {
		hsStructure = { fg = c.red500, italic = true },
		varId = { fg = c.red100 },
		hsVarSym = { fg = c.yellow500, bold = true },
		hsImport = { fg = c.red500, italic = true },
		hsImportModuleName = { fg = c.base10, bold = true },
		hsImportList = { link = "hsVarSym" },
		ConId = { fg = c.base10, bold = true },
		hsString = { fg = c.green500 },
		hsCharacter = { link = "hsString" },
		-- ----------------
		-- TreeSitter's hl:
		-- ----------------
		["@function.haskell"] = { fg = c.base10, bold = true },
		["@function.builtin.haskell"] = { fg = c.base10, bold = true, italic = true, underline = true },
		["@function.macro.haskell"] = { fg = c.base10, bold = true, italic = true, underline = true },
		["@function.call.haskell"] = { fg = c.base10, bold = true },

		["@keyword.haskell"] = { fg = c.base10, italic = true },
		["@keyword.import.haskell"] = { link = "@keyword.haskell" },
		["@module.haskell"] = { fg = c.orange500, bold = true, underline = true },

		["@include.haskell"] = { fg = c.base10, bold = true, italic = true },

		["@constructor.haskell"] = { fg = c.red300, bold = true },
		["@type.haskell"] = { fg = c.yellow500, bold = true },

		["@punctuation.bracket.haskell"] = { fg = c.base10 },
		["@punctuation.delimiter.haskell"] = { fg = c.base10 },

		-- ["@operator.haskell"] = { fg = c.yellow300 },
		["@operator.haskell"] = { fg = c.yellow100, bold = true },
	}
end

return M
