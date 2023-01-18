vim.keymap.set("i", "<S-Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set("n", "<leader>vco", "<cmd>Copilot<CR>", { silent = true })

