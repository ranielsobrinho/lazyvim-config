return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    opts = { transparent_mode = true, contrast = "soft" }
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
      }
    },
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require('nightfox').setup({
        options = {
          transparent = true
        }
      })
    end
  },
  {
    "projekt0n/github-nvim-theme",
    config = function()
      require('github-theme').setup({
        options = {
          transparent = true, -- Disable setting background
        },
      })
    end
  },
  {
    "olimorris/onedarkpro.nvim",
    config = function()
      require('onedarkpro').setup({
        options = {
          transparency = true
        }
      })
    end
  },
  {
    "Mofiqul/dracula.nvim",
    config = function()
      require('dracula').setup({
        transparent_bg = true,
        italic_comment = true,
        show_end_of_buffer = false,
        colors = {},
        overrides = {}
      })
    end
  }
}
