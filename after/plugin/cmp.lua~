-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }
})
