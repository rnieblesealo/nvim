return {
	-- Telescope fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", builtin.buffers, {})
			vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
		end,
	},
	--[[
  -- Telescope UI select extension
  -- Allows code actions and related to fill telescope picker 
  --]]
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					-- "ui-select" is still a key; when a string key has hyphens we may still use it if wrapped in []'s
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
