vim.g.mapleader = " "

-- open file tree
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

-- open neogit
vim.keymap.set("n", "<leader>ng", vim.cmd.Neogit)

-- move select lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- key cursor in the same spot when using J
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle of the page when using C-d and C-u and search
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- format page
vim.keymap.set("n", "<leader>fp", function()
	vim.lsp.buf.format()
end)

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

