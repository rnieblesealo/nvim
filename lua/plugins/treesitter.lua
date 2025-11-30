return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local ts_config = require("nvim-treesitter.configs")

		ts_config.setup({
			auto_install = true, -- Automatically install new parsers
			highlight = { enable = true }, -- Syntax highlighting?
			indent = { enable = true }, -- Auto-indenting?
		})
	end,
}
