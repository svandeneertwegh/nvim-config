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
          "html",
          "css",
          "json",
          "yaml",
          "bash",
          "markdown",
          "markdown_inline",
          "htmldjango",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
