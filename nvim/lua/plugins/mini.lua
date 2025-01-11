return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		--autopairs
		require("mini.pairs").setup()
		--around/inside text objects
		require("mini.ai").setup({ n_lines = 500 })
		--simple animations
		require("mini.animate").setup()
		-- add/delete/replace surrounding (brackets,quotes,etc)
		require("min.surround").setup()
		requre("mini.cursorword").setup()
		require("mini.icons").setup()
		require("mini.indentscope").setup()
		--statusline
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		require("mini.bracketed").setup()
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
