local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
lsp.ensure_installed({
	'lua_ls',
	'rust_analyzer',
})
-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint'})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')

cmp.setup({
		mapping = cmp.mapping.preset.insert({
				['<Tab>'] = cmp.mapping.confirm({select = true}),
				['<CR>'] = cmp.mapping.confirm({select = true}),
		})
})

