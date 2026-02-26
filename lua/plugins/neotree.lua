return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
        },
        never_show = {},
      },
      follow_current_file = {
        enabled = true, -- <- Mostra o arquivo atual na árvore
        leave_dirs_open = false,
      },
    },
    window = {
      position = "right",
    },
    auto_focus = false,
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    -- Set folder colors to green
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#A3BE8C" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#A3BE8C" })
  end,
}
