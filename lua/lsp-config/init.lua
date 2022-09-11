local cmp_nvim_lsp = require('cmp_nvim_lsp')
local nvim_lsp = require('lspconfig')

local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    vim.api.nvim_buf_set_option(bufnr, 'tagfunc', 'v:lua.vim.lsp.tagfunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'go', vim.lsp.buf.document_symbol, opts)
    vim.keymap.set('n', 'gR', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gm', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.formatting, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>ee', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
end

local capabilities = cmp_nvim_lsp.update_capabilities(
    vim.lsp.protocol.make_client_capabilities())

local servers = {'clangd', 'gopls', 'pylsp', 'sumneko_lua'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup{
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
            Lua = {
                diagnostics = {
                    globals = {'vim', 'use'},
                },
            },
        },
    }
end
