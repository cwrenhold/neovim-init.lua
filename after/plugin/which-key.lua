vim.o.timeout = true
vim.o.timeoutlen = 500

local wk = require("which-key")
wk.setup({
    window = {
        border = "double"
    }
})

wk.register({
    p = {
        f = { "Find file" },
        v = { "Netrw" }
    }
}, { prefix = "<leader>"})