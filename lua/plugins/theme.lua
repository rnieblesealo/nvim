return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.termguicolors = true -- Allow more colors?
		vim.o.background = "dark" -- What should Vim assume BG color to be?

		-- default config
		require("solarized").setup({
			transparent = {
				enabled = false,
				pmenu = true,
				normal = true,
				normalfloat = true,
				neotree = true,
				nvimtree = true,
				whichkey = true,
				telescope = true,
				lazy = true,
			},
			on_highlights = nil,
			on_colors = nil,
			palette = "solarized", -- "solarized" (default) | "selenized"
			variant = "winter", -- "spring" | "summer" | "autumn" | "winter" (default)
			error_lens = {
				text = false,
				symbol = false,
			},
			styles = {
				enabled = true,
				types = {},
				functions = {},
				parameters = {},
				comments = {},
				strings = {},
				keywords = {},
				variables = {},
				constants = {},
			},
			plugins = {
				treesitter = true,
				lspconfig = true,
				navic = true,
				cmp = true,
				indentblankline = true,
				neotree = true,
				nvimtree = true,
				whichkey = true,
				dashboard = true,
				gitsigns = true,
				telescope = true,
				noice = true,
				hop = true,
				ministatusline = true,
				minitabline = true,
				ministarter = true,
				minicursorword = true,
				notify = true,
				rainbowdelimiters = true,
				bufferline = true,
				lazy = true,
				rendermarkdown = true,
				ale = true,
				coc = true,
				leap = true,
				alpha = true,
				yanky = true,
				gitgutter = true,
				mason = true,
				flash = true,
			},
		})

		vim.cmd.colorscheme("solarized")
	end,
}
