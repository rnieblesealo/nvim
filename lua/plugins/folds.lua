return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		-- Hide the fold column
		vim.o.foldcolumn = "0"

		-- Ensure folds are all open when first interacting with file
		vim.o.foldenable = true
		vim.o.foldlevel = 99 -- Any fold below this will be closed
		vim.o.foldlevelstart = 99 -- Same as above but when new buffer is loaded

		-- Get table of native Neovim client capabilities
		-- Comes with defaults/things that have already been set
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		-- Modify the folding capability to whole lines only
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false, -- Don't dynamically register this later
			lineFoldingOnly = true, -- Can only fold whole lines and not ranges within line
		}

		-- Announce the modified folding capability to each language server
		for server_name, _ in pairs(vim.lsp.config._configs) do
			vim.lsp.config(server_name, {
				capabilities = capabilities,
			})
		end

		require("ufo").setup()
	end,
}
