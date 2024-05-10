local M = {}

function M.setup(colors, themeConfig)
	local c = colors

	return {
		Comment = { fg = c.base05, bold = true },

		Constant = { fg = c.base10 },
		String = { fg = c.red500 },
		Character = { fg = c.yellow500 },
		Number = { fg = c.red500, bold = true },
		Boolean = { fg = c.red500, bold = true },
		Float = { fg = c.red500, bold = true },

		Identifier = { fg = c.red100 }, -- a4paper
		Function = { fg = c.base10, bold = true, italic = true, underline = true },

		Statement = { fg = c.base10, bold = true },
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		Operator = { fg = c.yellow500, bold = true }, --   "sizeof", "+", "*", etc.
		Keyword = { fg = c.base10, bold = true, italic = true }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		PreProc = { fg = c.base10, bold = true, italic = true },
		-- Include        { },
		Define = { fg = c.red100 },
		-- Macro          { },
		-- PreCondit      { },

		Type = { fg = c.base10, bold = true },
		StorageClass = { fg = c.red100, bold = true },
		-- Structure      { },
		-- Typedef        { },

		-- Special        { },
		-- SpecialChar    { },
		-- Tag            { },
		-- Delimiter      { },
		-- SpecialComment { },
		-- Debug          { },

		-- Underlined     { gui = "underline" },
		-- Ignore         { },
		-- Error          { },
		-- Todo           { },
	}
end

return M
