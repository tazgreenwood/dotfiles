require("monokai").setup{
    palette = {
        name = 'monokai_custom',
        base1 = '#211F22',
        base2 = '#222222',
        base3 = '#2d2c2d',
        base4 = '#2d2c2d',
        base5 = '#4d5154',
        base6 = '#4d5154',
        base7 = '#B1B1B1',
        border = '#fce566',
        brown = '#bdbdbd',
        white = '#f7f1ff',
        grey = '#69676c',
        black = '#222222',
        pink = '#fc618d',
        green = '#7bd88f',
        aqua = '#5ad4e6',
        yellow = '#fce566',
        orange = '#fd9353',
        purple = '#948ae3',
        red = '#fc618d',
    },
    custom_hlgroups = {
        GitSignsAdd = {
            fg = '#7bd88f',
            bg = '#222222'
        },
        GitSignsDelete = {
            fg = '#fc618d',
            bg = '#222222'
        },
        GitSignsChange = {
            fg = '#fd9353',
            bg = '#222222'
        },
        ColorColumn = {
            bg = '#948ae3'
        },
        DiffAdd = {
            fg = '#7bd88f',
            bg = '#222222'
        },
        DiffChange = {
            bg = '#2d2c2d'
        },
        DiffDelete = {
            fg = '#fc618d',
            bg = '#222222'
        },
        DiffText = {
            fg = '#fd9353',
            bg = '#2d2c2d'
        }
    }
}
