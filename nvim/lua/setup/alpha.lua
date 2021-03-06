local dashboard = require("alpha.themes.dashboard")
math.randomseed(os.time())

local function button(sc, txt, keybind, keybind_opts)
    local b = dashboard.button(sc, txt, keybind, keybind_opts)
    b.opts.hl = "Function"
    b.opts.hl_shortcut = "Type"
    return b
end

local function pick_color()
    local colors = {"String", "Identifier", "Keyword", "Number"}
    return colors[math.random(#colors)]
end

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date("%d-%m-%Y  %H:%M:%S")
    return total_plugins .. " plugins  " .. datetime
end

dashboard.section.header.val = {
    [[]],
    [[]],
    [[]],
    [[██╗░░░░░███████╗████████╗██╗░██████╗  ██████╗░░█████╗░  ████████╗██╗░░██╗██╗░██████╗██╗]],
    [[██║░░░░░██╔════╝╚══██╔══╝╚█║██╔════╝  ██╔══██╗██╔══██╗  ╚══██╔══╝██║░░██║██║██╔════╝██║]],
    [[██║░░░░░█████╗░░░░░██║░░░░╚╝╚█████╗░  ██║░░██║██║░░██║  ░░░██║░░░███████║██║╚█████╗░██║]],
    [[██║░░░░░██╔══╝░░░░░██║░░░░░░░╚═══██╗  ██║░░██║██║░░██║  ░░░██║░░░██╔══██║██║░╚═══██╗╚═╝]],
    [[███████╗███████╗░░░██║░░░░░░██████╔╝  ██████╔╝╚█████╔╝  ░░░██║░░░██║░░██║██║██████╔╝██╗]],
    [[╚══════╝╚══════╝░░░╚═╝░░░░░░╚═════╝░  ╚═════╝░░╚════╝░  ░░░╚═╝░░░╚═╝░░╚═╝╚═╝╚═════╝░╚═╝]],
    [[]],
    [[]],
}

dashboard.section.header.opts.hl = pick_color()

dashboard.section.buttons.val = {
    button("SPC f f", "  Find file"),
    button("SPC f g", "  Find word"),
    button("SPC f b", "  Find buffer"),
    button("SPC f n", "  New file"),
    button("q", "  Quit", "<Cmd>qa<CR>")
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

require("alpha").setup(dashboard.opts)

