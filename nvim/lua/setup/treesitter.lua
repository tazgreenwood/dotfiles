require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
    autotag = {
        enable = true,
    },
    -- incremental_selection = {
    --     enable = true,
    --     keymaps = {
    --         init_selection = "<CR>",
    --         scope_incremental = "<CR>",
    --         node_incremental = "<CR>",
    --         node_decremental = "<BS>",
    --     },
    -- },
    indent = {
        enable = true
    },
}

