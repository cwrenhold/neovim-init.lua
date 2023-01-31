vim.keymap.set("i", "<S-Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set("n", "<leader>vco", "<cmd>Copilot<CR>", { silent = true })

