# NvChad Config

This repo is a personal NvChad config layered on top of the base `NvChad/NvChad` distribution.

## How It Works

- The main NvChad repo is loaded as a plugin by this repo.
- Local behavior lives in the Lua files here, such as `options`, `mappings`, `autocmds`, and plugin specs.
- You can keep this repo as-is, fork it, or copy it into your own `NVIM_APPNAME` setup.

## Documentation

- [`docs/`](./docs): notes for the local overrides added on top of base NvChad.
- [`docs/customizations.md`](./docs/customizations.md): the current source of truth for config tweaks and plugin-level behavior changes.
- [`AGENTS.md`](./AGENTS.md): maintenance rule that documentation should be updated whenever the config changes.

## Current Highlights

- `gruvchad` theme via Base46.
- Relative line numbers enabled.
- Markdown list continuation and ordered-list recalculation with `autolist.nvim`.
- `stylua` formatting for Lua.
- `html` and `cssls` LSP servers enabled.

## Credits

1. LazyVim starter: https://github.com/LazyVim/starter
2. NvChad starter ideas were clearly influenced by that layout, which makes this config easier to extend.
