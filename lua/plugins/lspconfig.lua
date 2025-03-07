return {
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "clangd", "lua-language-serve" } },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local hoverSetup = require("plugins.lsp-advanced.lsp-buf-hover")
			hoverSetup.setUpLspHover()
			-- local.
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})

		end,
	},
}
