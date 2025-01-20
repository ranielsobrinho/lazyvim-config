return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        theme = 'hyper',
        config = {
          header =
          [[
      ██████╗ ██╗  ██╗███████╗██╗     ███████╗██╗  ██╗
     ██╔════╝ ██║  ██║██╔════╝██║     ██╔════╝╚██╗██╔╝
     ██║  ███╗███████║█████╗  ██║     █████╗   ╚███╔╝
     ██║   ██║╚════██║██╔══╝  ██║     ██╔══╝   ██╔██╗
     ╚██████╔╝     ██║██║     ███████╗███████╗██╔╝ ██╗
      ╚═════╝      ╚═╝╚═╝     ╚══════╝╚══════╝╚═╝  ╚═╝
    ]]

        }
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } }
  },
}
