# Customizations

This repo starts from the NvChad starter layout and keeps local overrides small and explicit.

## Theme

- `lua/chadrc.lua`: sets the Base46 theme to `gruvchad`.

## Editor Options

- `lua/options.lua`: keeps absolute and relative line numbers enabled.

## Keymaps

- `lua/mappings.lua`: remaps `;` to command mode, maps `jk` to leave insert mode, and adds `<leader>fo` for Telescope oldfiles in the current session.

## Markdown

- `lua/autocmds.lua`: enables wrapping, line breaking, and break indentation for Markdown buffers.
- `lua/autocmds.lua`: appends `r`, `o`, and `n` to `formatoptions` so list-aware line handling works correctly.
- `lua/plugins/init.lua`: adds `gaoDean/autolist.nvim` for Markdown list continuation and ordered-list recalculation.
- `lua/autocmds.lua`: binds Markdown-local list helpers so `<CR>`, `o`, and `O` continue lists, and `dd`, `>>`, `<<`, and visual `d` recalculate numbering after edits.

## Formatting

- `lua/configs/conform.lua`: enables `stylua` for Lua formatting through `conform.nvim`.

## LSP

- `lua/configs/lspconfig.lua`: keeps NvChad defaults and enables the `html` and `cssls` language servers.

## Treesitter

- `lua/plugins/treesitter.lua`: configures Treesitter to install parsers under Neovim's local data directory and install any parsers declared by plugin opts.
