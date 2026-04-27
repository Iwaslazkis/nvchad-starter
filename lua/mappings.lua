require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<A-Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map({ "v", "x" }, "<C-S-c>", [["+y]], { desc = "Copy selection to system clipboard" })

map("n", "<leader>fo", function()
  require("telescope.builtin").oldfiles {
    include_current_session = true,
  }
end, { desc = "telescope find oldfiles" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
