require('nvim-tree').setup({
    open_on_setup = true,
    view = {
        adaptive_size = true,
        side = 'right',
        width = 40,
    },
    filters = {
        dotfiles = true,
    },
})
