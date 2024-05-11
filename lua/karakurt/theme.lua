local M = {}

function M.setup()
	local theme = {
		colors = require("karakurt.colors").setup(),
		config = require("karakurt.config").options,
		highlights = {},
	}

	-- local c = theme.colors
	local baseEditor = require("karakurt.syntax.base-editor").setup(theme.colors, theme.config)
	local baseCode = require("karakurt.syntax.base-code").setup(theme.colors, theme.config)
	local haskell = require("karakurt.syntax.langs.haskell").setup(theme.colors)
	local rust = require("karakurt.syntax.langs.rust").setup(theme.colors)
	local html = require("karakurt.syntax.langs.html").setup(theme.colors)
	local css = require("karakurt.syntax.langs.css").setup(theme.colors)
	local javascript = require("karakurt.syntax.langs.javascript").setup(theme.colors)
	local typescript = require("karakurt.syntax.langs.typescript").setup(theme.colors)
	local svelteJS = require("karakurt.syntax.langs.svelte-js").setup(theme.colors)

	theme.highlights = vim.tbl_deep_extend(
		"error",
		theme.highlights,
		baseEditor,
		baseCode,
		haskell,
		rust,
		html,
		css,
		javascript,
		typescript,
		svelteJS
	)

	-- print("hello world")
	-- local count = 0
	-- for _ in pairs(theme.highlights) do
	-- 	count = count + 1
	-- end
	-- print(count)

	return theme
end

return M
