local M = {}

function M.setup(colors)
	local c = colors

	return {
		RainbowDelimiterRed = { fg = c.red500 },
		RainbowDelimiterOrange = { fg = c.orange500 },
		RainbowDelimiterYellow = { fg = c.yellow500 },
		RainbowDelimiterGreen = { fg = c.green500 },
		RainbowDelimiterBlue = { fg = c.red100 },
		RainbowDelimiterViolet = { fg = c.orange100 },
		RainbowDelimiterCyan = { fg = c.yellow100 },
	}
end

return M
