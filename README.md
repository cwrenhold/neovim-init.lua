# Neovim Getting Started

This is a getting started setup based on the configuration provided by ThePrimeagan [here](https://github.com/ThePrimeagen/init.lua).

## Start up

When first starting this setup, it will error as plugins will attempt to start before they have actually been installed. The first step will be to run `:PackerSync` to install all of the specified plugins.

## Refreshing the theme

If you change any thing in the configuration and then use `:so` to source the script, it will usually result in the colour scheme being incorrect, you can fix this by running the command `:lua ColorMyPencils()` which will re-run the function in [colours.lua](./after/plugin/colours.lua).

## GitHub Copilot

This requires its own initialisation as it needs a key to hook into your GitHub account. You can do this by running the command `:Copilot`.

## Keymaps

I've tweaked a few of the standard keymaps, for example control + left/down/up/right will jump between windows which are currently open. All keymaps which are on the base nvim setup will be in [remap.lua](./lua/cwrenhold/remap.lua). Keymaps which are specific to a given plugin will be stored in that plugin's configuration file.

## Plugin scripts

In the [after](./after/plugin/) folder, you can find the configuration for specific plugins. In theory, these are logically grouped if they are related (e.g. for [lsp](./after/plugin/lsp.lua).
