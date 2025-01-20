-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
return {
  "<Leader>cs",
  function()
    vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
    require("telescope.builtin").colorscheme()
  end,
  noremap = true,
}
