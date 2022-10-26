local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Python
require('lspconfig').pyright.setup{}
-- Rust
require('lspconfig').rust_analyzer.setup{}
-- Lua
require('lspconfig').sumneko_lua.setup{
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	}
}
-- Svelte
require('lspconfig').svelte.setup{}
-- TypeScript/JS
require('lspconfig').tsserver.setup{}
-- HTML
require('lspconfig').html.setup{}
-- CSS
require('lspconfig').cssls.setup{
	capabilities = capabilities
}
-- Docker
require('lspconfig').dockerls.setup{}
