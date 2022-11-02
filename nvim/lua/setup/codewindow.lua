require('codewindow').setup({
    auto_enable = true,
    exclude_filetypes = {
        "NvimTree",
        "Trouble",
    }
})

require('codewindow').apply_default_keybinds()
