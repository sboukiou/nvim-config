return {
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "clangd", "pyright", "lua-language-serve" } },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ast_grep.setup({})
			lspconfig.clangd.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.prettier.setup({})
			lspconfig.pyright.setup({})
		end,
	},
}
