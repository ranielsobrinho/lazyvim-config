-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 1
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment - Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "<C-n>", ":tabedit<Return>", opts)

-- Save file
keymap.set("n", "<leader>rs", ":w<Return>", { silent = true, desc = "Save file" })
keymap.set("n", "<leader>rS", ":wa<Return>", { silent = true, desc = "Save all files" })

-- Split winodw
keymap.set("n", "sh", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Neotree
keymap.set("n", "<C-f>", ":Neotree toggle<Return>", opts)

-- Easy quit
keymap.set("n", "<leader>rq", ":q!<Return>", { silent = true, desc = "Quit nvim" })
keymap.set("n", "<S-d>", ":bd<Return>", opts)

-- ToggleTerm
keymap.set("n", "<C-t>", ":ToggleTerm<Return>", opts)

-- Gitsigns Blame
keymap.set("n", "<leader>gl", ":Gitsigns blame_line<Return>", { silent = true, noremap = true, desc = "Blame line" })

-- Show dependency versions
keymap.set(
  "n",
  "<leader>ns",
  require("package-info").show,
  { silent = true, noremap = true, desc = "Show dependency versions" }
)

-- Hide dependency versions
keymap.set(
  "n",
  "<leader>nc",
  require("package-info").hide,
  { silent = true, noremap = true, desc = "Hide dependency versions" }
)

-- Toggle dependency versions
keymap.set(
  "n",
  "<leader>nt",
  require("package-info").toggle,
  { silent = true, noremap = true, desc = "Toggle dependency versions" }
)

-- Update dependency on the line
keymap.set(
  "n",
  "<leader>nu",
  require("package-info").update,
  { silent = true, noremap = true, desc = "Update dependency on the line" }
)

-- Delete dependency on the line
keymap.set(
  "n",
  "<leader>nd",
  require("package-info").delete,
  { silent = true, noremap = true, desc = "Delete dependency on the line" }
)

-- Install a new dependency
keymap.set(
  "n",
  "<leader>ni",
  require("package-info").install,
  { silent = true, noremap = true, desc = "Install a new dependency" }
)

-- Install a different dependency version
keymap.set(
  "n",
  "<leader>np",
  require("package-info").change_version,
  { silent = true, noremap = true, desc = "Install a different dependency version" }
)

-- Zenmode
keymap.set("n", "<leader>ct", ":ZenMode<Return>", opts)
