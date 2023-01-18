local tsBuiltin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', tsBuiltin.find_files, {})
vim.keymap.set('n', '<C-p>', tsBuiltin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	tsBuiltin.grep_string({ search = vim.fn.input("Grep > ") })
end)
