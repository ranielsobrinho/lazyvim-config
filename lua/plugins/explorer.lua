return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Mescla suas configurações com as padrões do LazyVim
      opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
        enabled = false,
        position = "right",
        width = 30,
        backdrop = false,
        win = {
          style = "minimal",
          border = "none",
          wo = {
            winblend = 100, -- Reduzi de 100 para 20 (100 = invisível)
          },
        },
      })

      opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
        enabled = true,
        sources = {
          grep = {
            cmd = "rg",
            args = {
              "--color=never",
              "--no-heading",
              "--with-filename",
              "--line-number",
              "--column",
              "--smart-case",
              "--hidden",
              "--glob=!.git/",
              "--glob=!node_modules/",
              "--glob=!package-lock.json",
              "--glob=!yarn.lock",
              "--glob=!pnpm-lock.yaml",
              "--glob=!*.min.js",
              "--glob=!dist/",
              "--glob=!build/",
            },
          },
          files = {
            cmd = "rg",
            args = {
              "--files",
              "--color=never",
              "--hidden",
              "--glob=!.git/",
              "--glob=!node_modules/",
              "--glob=!package-lock.json",
              "--glob=!yarn.lock",
              "--glob=!pnpm-lock.yaml",
              "--glob=!*.min.js",
              "--glob=!dist/",
              "--glob=!build/",
            },
          },
        },
      })

      return opts
    end,
    keys = {
      --- Fuzzy Finder
      {
        "<leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
      {
        "<leader>fg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Live Grep",
      },
      {
        "<leader>fb",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Find Buffers",
      },
      {
        "<leader>fh",
        function()
          Snacks.picker.help()
        end,
        desc = "Find Help",
      },
      {
        "<leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent Files",
      },
      {
        "<leader>fw",
        function()
          Snacks.picker.grep_word()
        end,
        desc = "Grep Word Under Cursor",
      },
    },
  },
}
