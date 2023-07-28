require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        -- Replace these with whatever servers you want to install
        'gopls',
        'lua_ls',
    }
})

local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local util = require "lspconfig/util"

lspconfig.gopls.setup{
    capabilities = lsp_capabilities,
    cmd = {"gopls"},
    filetypes={"go","gomod","gowork","gotmpl"},
    root_dir= util.root_pattern("go.work","go.mod",".git"),
    single_file_support = true,
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        },
    },
    init_options = {
        usePlaceholders = true,
    }
}

local cmp = require('cmp')
cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },

    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, 
    { name = 'luasnip' },
    {
        { name = 'buffer' },
    })
})
