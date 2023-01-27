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
        g = { "Find text in files" },
        a = { "Find text in all files (ignores .gitignore)" },
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
        d = { "Open floating message" },
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
    },
    s = { "Substitute all instances of current word" },
    o = { "Open symbols outline" },
}, { prefix = "<leader>"})

wk.register({
    g = {
        d = { "Go to definition" },
        D = { "Go to declaration" },
        i = { "Go to implementation" },
    }
})
