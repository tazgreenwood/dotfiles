vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end
vim.api.nvim_command("packadd packer.nvim")
-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
	return string.format('require("setup/%s")', name)
end

return require("packer").startup({
	function(use)

		use("wbthomason/packer.nvim")

		use({ "kyazdani42/nvim-web-devicons" })

        use({ "tanvirtin/monokai.nvim", config = get_setup("monokai") })

        use("p00f/nvim-ts-rainbow")
        use({
            "nvim-treesitter/nvim-treesitter",
            config = get_setup("treesitter"),
            run = ":TSUpdate",
        })

		use({
			"nvim-telescope/telescope.nvim",
			requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
			config = get_setup("telescope")
		})

		use ({
			"nvim-lualine/lualine.nvim",
			config = get_setup("lualine"),
			event = "VimEnter",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})

        use({
            'kyazdani42/nvim-tree.lua',
            requires = {
              'kyazdani42/nvim-web-devicons', -- optional, for file icon
            },
            config = get_setup("nvim-tree")
        })

        use({ "windwp/nvim-autopairs", config = get_setup("autopairs") })

        use({
            "norcalli/nvim-colorizer.lua",
            event = "BufReadPre",
            config = get_setup("colorizer")
        })

        use({ "terrortylor/nvim-comment", config = get_setup("nvim-comment")})

        -- requirement for Neogit
        use({
            "sindrets/diffview.nvim",
            cmd = {
                "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles",
                "DiffviewFocusFiles"
            },
            config = get_setup("diffview")
        })

        use({
            "TimUntersberger/neogit",
            requires = {"nvim-lua/plenary.nvim"},
            cmd = "Neogit",
            config = get_setup("neogit")
        })

        use({"f-person/git-blame.nvim", config = get_setup("git-blame")})

        use({
            "lewis6991/gitsigns.nvim",
            requires = {"nvim-lua/plenary.nvim"},
            event = "BufReadPre",
            config = get_setup("gitsigns")
        })

        use ({
            "lukas-reineke/indent-blankline.nvim",
            event = "BufReadPre",
            config = get_setup("indent-blankline")
        })

        use({
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            cmd = {"TroubleToggle", "Trouble"},
            config = get_setup("trouble")
        })

        use({
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            cmd = {"TodoTrouble", "TodoTelescope"},
            event = "BufReadPost",
            config = get_setup("todo")
        })

        use({
            "karb94/neoscroll.nvim",
            keys = {"<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-e>", "zt", "zz", "zb"},
            config = get_setup("neoscroll")
        })

        use({
            'goolord/alpha-nvim',
            requires = { 'kyazdani42/nvim-web-devicons' },
            config = get_setup("alpha")
        })

        -- Debug setup
        use({
            "mfussenegger/nvim-dap",
            config = get_setup("nvim-dap")
        })
        -- nvim-dap-virtual-text
        -- nvim-dap-ui
        use({ 
            "rcarriga/nvim-dap-ui",
            requires = {"mfussenegger/nvim-dap"},
            config = get_setup("dap-ui")
        })

        -- Autocompletion with LSP
        use({
            "hrsh7th/nvim-cmp",
            requires = {
                { "hrsh7th/cmp-nvim-lsp" },
                { "hrsh7th/cmp-nvim-lua" },
                { "hrsh7th/cmp-buffer" },
                { "hrsh7th/cmp-path" },
                { "hrsh7th/cmp-cmdline" },
                { "hrsh7th/cmp-vsnip" },
                { "hrsh7th/vim-vsnip-integ" },
                { "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "hrsh7th/cmp-emoji" } },
            },
            config = get_setup("cmp"),
        })

        use({ "neovim/nvim-lspconfig", config = get_setup("lsp") })

		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = require("packer.util").float,
		},
	},
})
