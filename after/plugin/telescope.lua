local tsBuiltin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', tsBuiltin.find_files, {})
vim.keymap.set('n', '<C-p>', tsBuiltin.git_files, {})
vim.keymap.set('n', '<leader>pg', tsBuiltin.live_grep, {})
vim.keymap.set('n', '<leader>pa', function()
	tsBuiltin.grep_string({ search = vim.fn.input("Grep for text : ") })
end)
