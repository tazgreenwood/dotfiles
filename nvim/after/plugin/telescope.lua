local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind in [F]iles' })

vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'File Search in Git Repo' })

vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = '[F]ind [S]tring in files' })

-- vim.keymap.set('n', '<leader>/', function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false
--   })
-- end, { desc = '[/] Fuzzily search in current buffer]' })
vim.keymap.set('n', '<leader>/', require('telescope.builtin').current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })

vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[F]ind in [B]uffers' })

