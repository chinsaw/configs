local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string( {search = vim.fm.input("Grep > ") });
end)
