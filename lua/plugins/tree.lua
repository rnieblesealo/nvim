return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		-- Tell Vim netrw has loaded already even if it hasn't; this allows loading our own filetree
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local api = require("nvim-tree.api")

		local opts = {
			noremap = true,
			silent = true,
			nowait = true,
		}

		-- Open with leader = N
		vim.keymap.set("n", "<leader>n", api.tree.open, opts)

		require("nvim-tree").setup()
	end,
}
