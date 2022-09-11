require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust" , "go", "python"},
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true
    }
}

require("nvim-treesitter.install").prefer_git = true
