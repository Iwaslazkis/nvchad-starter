return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    cmd = {
      "TSInstall",
      "TSUpdate",
      "TSUninstall",
      "TSRegistryUpdate",
      "TSStatus",
      "TSLog",
      "TSInstallAll",
    },
    build = ":TSUpdate",
    config = function(_, opts)
      require("nvim-treesitter").setup {
        install_dir = vim.fn.stdpath("data") .. "/site",
      }

      if opts and opts.ensure_installed and #opts.ensure_installed > 0 then
        require("nvim-treesitter").install(opts.ensure_installed)
      end
    end,
  },
}
