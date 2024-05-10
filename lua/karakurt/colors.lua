local hslutil = require("karakurt.hsl")
local hsl = hslutil.hslToHex

local M = {}

M.default = {
	none = "NONE",

	base01 = hsl(0, 0, 3), -- black
	base02 = hsl(0, 0, 8),
	base03 = hsl(0, 0, 15),
	base04 = hsl(0, 0, 27), -- dark grey
	base05 = hsl(0, 0, 44), -- gray
	base10 = hsl(0, 0, 85), -- white

	red = hsl(6, 96, 59),
	red100 = hsl(6, 96, 75),
	red300 = hsl(6, 96, 67),
	red500 = hsl(6, 96, 59),
	red700 = hsl(6, 96, 42),
	red900 = hsl(6, 96, 25),

	orange = hsl(20, 96, 59),
	orange100 = hsl(20, 96, 75),
	orange300 = hsl(20, 96, 67),
	orange500 = hsl(20, 96, 59),
	orange700 = hsl(20, 96, 42),
	orange900 = hsl(20, 96, 25),

	yellow = hsl(35, 96, 59),
	yellow100 = hsl(35, 96, 75),
	yellow300 = hsl(35, 96, 67),
	yellow500 = hsl(35, 96, 59),
	yellow700 = hsl(35, 96, 42),
	yellow900 = hsl(35, 96, 25),

	green = hsl(148, 96, 59),
	green100 = hsl(148, 96, 75),
	green300 = hsl(148, 96, 67),
	green500 = hsl(148, 96, 59),
	green700 = hsl(148, 96, 42),
	green900 = hsl(148, 96, 25),

	-- white = hsl(0, 0, 85),

	-- red = "#FB4934", -- HSB(6, 79, 98)
	-- orange = "#FA8A34", -- HSB(26, 79, 98)
	-- yellow = "#FACC34", -- HSB(46, 79, 98)
	-- green = "#34FA91", -- HSB(148, 79, 98)
	-- white = "#DADADA", -- HSB(0, 0, 85)
}

function M.setup()
	local colors = M.default
	return colors
end

return M
