return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim", -- Vereist voor de interface picker
    "nvim-lua/plenary.nvim",
  },
  ft = "python", -- Laad de plugin alleen bij Python-bestanden
  keys = {
    -- Sneltoets om de venv-kiezer te openen
    { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Selecteer Virtuele Omgeving" },
  },
  opts = {
    -- Zoekt automatisch naar .venv mappen in je project
    name = { ".venv", "venv" },
    auto_refresh = false,
  },
  config = function(_, opts)
    require("venv-selector").setup(opts)
  end,
}
