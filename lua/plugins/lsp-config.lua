return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- LSP KEYBINDS
			vim.keymap.set("n", "<leader>x", vim.lsp.buf.hover, {}) -- Hover info
			vim.keymap.set("n", "<leader>z", vim.lsp.buf.definition, {}) -- Go to definition
			vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action, {}) -- Code actions
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true }) -- Error view
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {}) -- Rename variable

			-- LSP DIAGNOSTIC WINDOW
			vim.diagnostic.config({
				severity_sort = true,
				signs = false,
				underline = true,
				update_in_insert = false,
				virtual_text = true,
			})

			-- LSP CONFIGURATION
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			vim.lsp.config("pylsp", {
				capabilities = capabilities,
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								maxLineLength = 120,
							},
						},
					},
				},
			})
		end,
	},
}
