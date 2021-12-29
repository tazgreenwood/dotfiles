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

-- Dap debugging Mappings
map("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", {noremap = true, silent = true})
map("n", "<A-j>", ":lua require('dap').step_over()<CR>", {noremap = true, silent = true})
map("n", "<A-k>", ":lua require('dap').step_into()<CR>", {noremap = true, silent = true})
map("n", "<A-l>", ":lua require('dap').step_out()<CR>", {noremap = true, silent = true})
map("n", "<leader>dn", ":lua require('dap').continue()<CR>", {noremap = true, silent = true})
map("n", "<leader>d_", ":lua require('dap').run_last()<CR>", {noremap = true, silent = true})
map("n", "<leader>dr", ":lua require('dap').repl.open()<CR>", {noremap = true, silent = true})
map("n", "<leader>di", ":lua require('dap.ui.widgets').hover()<CR>", {noremap = true, silent = true})
map("n", "<leader>d?", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", {noremap = true, silent = true})
map("n", "<leader>de", ":lua require('dap').set_exception_breakpoints({'all'})<CR>", {noremap = true, silent = true})

-- Dap UI toggle
map("n", "<leader>du", ":lua require('dapui').toggle()<CR>")

