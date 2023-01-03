require('rose-pine').setup({
    --disable_background = true
})

function ColorMyPencils(color) 
	color = color or "night-owl"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- Disable italicised text
    toDisableItalicisation = {
        "Comment",
        "jsComment",
        "jsImport",
        "jsFrom",
        "jsModuleAs",
        "jsExtendsKeyword",
        "javaScriptLineComment",
        "cssClassName",
        "cssPseudoClassId",
        "cssIdentifier",
        "shComment",
        "NERDTreeHelp"
    }
    for k,v in pairs(toDisableItalicisation) do
        vim.cmd(string.format([[highlight %s gui=NONE cterm=NONE]], v))
    end
end

ColorMyPencils()
