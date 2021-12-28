local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

-- Cancel Highlight search
map("n", "<leader><leader>", ":nohlsearch<Bar>:echo<CR>", { silent = true })

-- Save and Quit/Close
map("n", "<leader>fs", "<cmd>w<CR>", { silent = true })
map("n", "<leader>fq", "<cmd>q<CR>", { silent = true })

-- Telescope Mappings
map("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<cr>')
map("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
map("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>')
map("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>')

-- Nvim Tree
map("n", "<leader>ft", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>fu", ":NvimTreeFindFile<CR>", { silent = true })

-- Easier split navigation
map("n", "<C-J>", "<C-W><C-J>", { silent = true })
map("n", "<C-K>", "<C-W><C-K>", { silent = true })
map("n", "<C-L>", "<C-W><C-L>", { silent = true })
map("n", "<C-H>", "<C-W><C-H>", { silent = true })

-- Open nvimrc file
map("n", "<leader>fv", "<cmd>e $MYVIMRC<CR>")
-- Source nvimrc
map("n", "<leader>sv", ":luafile %<CR>")

-- Quick new file
map("n", "<leader>fn", "<cmd>enew<CR>")

-- Resizing panes
map("n", "<Left>", ":vertical resize +1<CR>", {noremap = true, silent = true})
map("n", "<Right>", ":vertical resize -1<CR>", {noremap = true, silent = true})
map("n", "<Up>", ":resize -1<CR>", {noremap = true, silent = true})
map("n", "<Down>", ":resize +1<CR>", {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", {noremap = true, silent = true})
map("x", "J", ":move '>+1<CR>gv-gv", {noremap = true, silent = true})

