require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pylsp" }
})

local lsp_config = require("lspconfig")

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_config.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.pylsp.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.clangd.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.html.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.tailwindcss.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config.bashls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
lsp_config["dartls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lsp_config["intelephense"].setup({
    root_dir = function (fname)
        return vim.fn.getcwd()
    end,
	on_attach = on_attach,
	capabilities = capabilities,
})
lsp_config["jdtls"].setup({
    root_dir = function (fname)
        return vim.fn.getcwd()
    end,
	on_attach = on_attach,
	capabilities = capabilities,
})
