return {
  {
    { "Shatur/neovim-ayu" },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
        flavour = "macchiato",
      },
    },

    {
      "folke/tokyonight.nvim",
      lazy = true,
      opts = { style = "moon" },
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "ayu-mirage",
      },
    },
  },
}
