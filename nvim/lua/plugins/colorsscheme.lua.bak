return {
	"gbprod/nord.nvim",

	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		require("nord").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			transparent = false, -- Enable this to disable setting the background color
			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
			diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
			borders = true, -- Enable the border between verticaly split windows visible
			errors = { mode = "bg" }, -- Display mode for errors and diagnostics
			-- values : [bg|fg|none]
			search = { theme = "vim" }, -- theme for highlighting search results
			-- values : [vim|vscode]
			styles = {
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = true },
				keywords = {},
				functions = {},
				variables = {},

				-- To customize lualine/bufferline
				bufferline = {
					current = {},
					modified = { italic = true },
				},
			},

			-- colorblind mode
			-- see https://github.com/EdenEast/nightfox.nvim#colorblind
			-- simulation mode has not been implemented yet.
			colorblind = {
				enable = false,
				preserve_background = false,
				severity = {
					protan = 0.0,
					deutan = 0.0,
					tritan = 0.0,
				},
			},

			-- Override the default colors
			---@param colors Nord.Palette
			on_colors = function(colors)
				--colors.polar_night.origin = "#2E4034"
				--colors.polar_night.bright = "#3B5242"
				--colors.polar_night.brighter = "#435E4C"
				--colors.polar_night.brightest = "#4C6A56"
				--colors.polar_night.light = "#61886E"

				--colors.snow_storm.origin = "#D8E9DE"
				--colors.snow_storm.brighter = "#E5F0E9"
				--colors.snow_storm.brightest = "#ECF4EF"

				--colors.frost.polar_water = "#8FBBBC"
				--colors.frost.ice = "#88D0C0"
				--colors.frost.artic_water = "#81C1A1"
				--colors.frost.artic_ocean = "#5EAC81"
				-- colors.polar_night.origin = "#30352a"
				-- colors.polar_night.bright = "#3C5343"
				-- colors.polar_night.brighter = "#445F4D"
				-- colors.polar_night.brightest = "#4D6A56"
				-- colors.polar_night.light = "#96BFA5"
				-- colors.snow_storm.origin = "#D8E9DC"
				-- colors.snow_storm.brighter = "#E5F0E7"
				-- colors.snow_storm.brightest = "#ECF4ED"
				colors.frost.polar_water = "#9CBC8F"
				colors.frost.ice = "#8ACF87"
				colors.frost.artic_water = "#81C190"
				colors.frost.artic_ocean = "#5DAC74"
				colors.aurora.green = "#89BFEB"
				-- colors.aurora.purple = "#9697c0"
				-- colors.aurora.red = "#BE6068"
				-- colors.aurora.yellow = "#EBD689"
				-- colors.aurora.orange = "#D19771"
			end,

			--- You can override specific highlights to use other groups or a hex color
			--- function will be called with all highlights and the colorScheme table
			---@param colors Nord.Palette
			on_highlights = function(highlights, colors)
				--highlights.String.fg = colors.aurora.yellow
				-- highlights.LineNr.fg = colors.polar_night.light
			end,
		})
		-- Load the colorscheme here.
		-- Like many other themes, this one has different styles, and you could load
		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
		vim.cmd.colorscheme("nord")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
