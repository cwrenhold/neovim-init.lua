require("nvim-tree").setup({
    hijack_netrw = false
})

vim.keymap.set('n', '<leader>ex', ':NvimTreeFindFileToggle<CR>')
