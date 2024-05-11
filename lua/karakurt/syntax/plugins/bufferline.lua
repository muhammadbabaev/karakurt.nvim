local M = {}

function M.setup(colors)
	local c = colors

	return {
		BufferLineFill = { fg = c.base05 }, -- line-filler on the right side of the tabs
		BufferLineBackground = { fg = c.base05 }, -- other (unselected) buffers
		BufferLineBufferSelected = { fg = c.base10, bold = true, italic = true },
		BufferLineDevIconDefault = { link = "BufferLineBackground" }, -- icon
		BufferLineDevIconDefaultSelected = { link = "BufferLineBufferSelected" }, -- icon of selected tab
		-- BufferLineIndicatorSelected = { bg = c.base02 }, -- indicator on the left of file icon
		BufferLineCloseButton = { link = "BufferLineBackground" }, -- close button in unselected buffers
		-- BufferLineCloseButtonSelected = { bg = c.base02 },
		BufferLineCloseButtonInactive = { link = "BufferLineBufferSelected" },

		BufferLineErrorSelected = { fg = c.red500, bold = true, italic = true },
		BufferLineErrorDiagnosticSelected = { fg = c.red500 },

		BufferLineWarningSelected = { fg = c.yellow500, bold = true, italic = true },
		BufferLineWarningDiagnosticSelected = { fg = c.yellow500 },

		BufferLineModified = { fg = c.yellow500 },
		BufferLineModifiedSelected = { fg = c.yellow500 },
	}
end

return M
