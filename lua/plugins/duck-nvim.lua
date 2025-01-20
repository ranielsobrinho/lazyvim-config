return {
  'tamton-aquib/duck.nvim',
  config = function()
    vim.keymap.set('n', '<leader>rd', function() require("duck").hatch() end, { desc = "Create a new duck" })
    vim.keymap.set('n', '<leader>rk', function() require("duck").cook() end, { desc = "Kill a duck" })
    vim.keymap.set('n', '<leader>ra', function() require("duck").cook_all() end, { desc = "Kill all ducks" })
  end
}
