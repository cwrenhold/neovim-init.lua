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
    },
    g = {
        s = { "Git status" },
        l = { "Git log" },
    },
    v = {
        c = {
            a = { "Code action" },
        },
        d = {
            a = { "Open floating message" },
        },
        r = {
            r = { "References" },
            n = { "Rename" },
        },
        w = {
            s = { "Workspace symbol" },
        }
    },
    t = {
        t = { "Open terminal in split" },
    }
}, { prefix = "<leader>"})
