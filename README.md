# Neovim Getting Started

This is a getting started setup based on the configuration provided by ThePrimeagan [here](https://github.com/ThePrimeagen/init.lua). This was then expanded to add my own customisations for my workflow.

## Start up

When first starting this setup, it will error as plugins will attempt to start before they have actually been installed. The first step will be to run `:PackerSync` to install all of the specified plugins.

## Font

This setup requires a font with nice icons to work out well, I personally recommend [Fira Code](https://github.com/tonsky/FiraCode) patched with [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts), which can be found pre-patched [here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode). You then need to configure your terminal to use this font by default.

## Refreshing the theme

If you change any thing in the configuration and then use `:so` to source the script, it will usually result in the colour scheme being incorrect, you can fix this by running the command `:lua ColorMyPencils()` which will re-run the function in [colours.lua](./after/plugin/colours.lua).

## GitHub Copilot

This requires its own initialisation as it needs a key to hook into your GitHub account. You can do this by running the command `:Copilot`.

## Keymaps

I've tweaked a few of the standard keymaps, for example control + left/down/up/right will jump between windows which are currently open. All keymaps which are on the base nvim setup will be in [remap.lua](./lua/cwrenhold/remap.lua). Keymaps which are specific to a given plugin will be stored in that plugin's configuration file.

I have attempted to leave as many of the standard keymaps in place so that it shouldn't be too alien when switching to this, or switching from this. Ideally, replacement keymaps should be an extension to the original as opposed to a replacement with entirely different functionality. 

## Plugin scripts

In the [after](./after/plugin/) folder, you can find the configuration for specific plugins. In theory, these are logically grouped if they are related (e.g. for [lsp](./after/plugin/lsp.lua).

### LSPs, Formatters, etc.

You can check which LSPs are installed and running with the `:Mason` command. From there, you can manually install any additional LSPs, or see which ones have been automatically installed fro you. This will also be where LSPs will need to be updated from. Other tools are also available via `:Mason`, for example formatters.

Some LSPs, for example omnisharp, will require you to have additional tools on your machine in order to install them. A common one is `unzip`, which is required by Omnisharp. You will need to install this outside of Neovim before you will be able to install an LSP which depends on this.

### Which-key

Which-key has been configured with an initial set up which should work as a nice tool to get used to where things are. Most of this is configured around `<leader>`, which is `<Space>` by default. If you'd like to change this, it can be found in [remap.lua](./lua/cwrenhold/remap.lua).

