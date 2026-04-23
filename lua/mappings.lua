require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>fo", function()
  require("telescope.builtin").oldfiles {
    include_current_session = true,
  }
end, { desc = "telescope find oldfiles" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
