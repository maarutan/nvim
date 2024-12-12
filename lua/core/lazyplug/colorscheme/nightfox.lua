require("nightfox").setup({
	options = {
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled",
		transparent = false,
		terminal_colors = true,
		dim_inactive = false,
		module_default = true,
		colorblind = {
			enable = false,
			simulate_only = false,
			severity = {
				protan = 0,
				deutan = 0,
				tritan = 0,
			},
		},
		styles = {
			comments = "italic",
			conditionals = "bold",
			constants = "bold",
			functions = "italic,bold",
			keywords = "bold",
			numbers = "NONE",
			operators = "NONE",
			strings = "italic",
			types = "bold",
			variables = "NONE",
		},
		inverse = {
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = {},
	},
	palettes = {},
	specs = {},
	groups = {},
})

require("circadian").setup({
	lat = 55.7558, -- Широта Москвы
	lon = 37.6173, -- Долгота Москвы
	day = { background = "light", colorscheme = "dayfox" },
	night = { background = "dark", colorscheme = "nightfox" },
})
