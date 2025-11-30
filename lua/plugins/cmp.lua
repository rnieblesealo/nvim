return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	-- Completion source for LuaSnip
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	-- Completion engine
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load() -- Get LuaSnip snippets

			-- COMPLETION ENGINE SETUP
			local cmp = require("cmp")
			cmp.setup({
				-- SNIPPETS
				snippet = {
					-- expand() called when user selects snippet from menu
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},

				-- KEY BINDINGS
				mapping = cmp.mapping.preset.insert({
					["<C-u>"] = cmp.mapping.scroll_docs(-4),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),

				-- COMPLETION SOURCES
				sources = cmp.config.sources({
					{ name = "luasnip" },
					{ name = "nvim_lsp" },
					{ name = "buffer" },
				}),

				-- WINDOW STYLE
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
			})
		end,
	},
}
