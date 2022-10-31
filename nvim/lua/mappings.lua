-- Map leader to space
vim.g.mapleader = " "

-- Save and Quit/Close
vim.keymap.set("n", "<leader>fs", "<cmd>w<CR>", { silent = true })
vim.keymap.set("n", "<leader>fq", "<cmd>q<CR>", { silent = true })

-- Telescope Mappings
vim.keymap.set("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<cr>')
vim.keymap.set("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
vim.keymap.set("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>')
vim.keymap.set("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>')

-- Nvim Tree
vim.keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>fu", ":NvimTreeFindFile<CR>", { silent = true })

-- Easier split navigation
-- vim.keymap.set("n", "<C-J>", "<C-W><C-J>", { silent = true })
-- vim.keymap.set("n", "<C-K>", "<C-W><C-K>", { silent = true })
-- vim.keymap.set("n", "<C-L>", "<C-W><C-L>", { silent = true })
-- vim.keymap.set("n", "<C-H>", "<C-W><C-H>", { silent = true })

-- Open nvimrc file
vim.keymap.set("n", "<leader>fv", "<cmd>e $MYVIMRC<CR>")
-- Source nvimrc
vim.keymap.set("n", "<leader>sv", ":luafile %<CR>")

-- Quick new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<CR>")

-- Resizing panes
vim.keymap.set("n", "<Left>", ":vertical resize +1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", ":vertical resize -1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Up>", ":resize -1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", ":resize +1<CR>", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Git Mappings
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", {noremap = true, silent = true})

-- Trouble Mappings
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<CR>", {noremap = true, silent = true})
