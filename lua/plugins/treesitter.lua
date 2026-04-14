return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "python",
          "javascript",
          "typescript",
          "tsx",
          "html",
          "css",
          "scss",
          "json",
          "yaml",
          "toml",
          "bash",
          "regex",
          "query",
          "markdown",
          "markdown_inline",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
