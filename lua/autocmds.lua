require "nvchad.autocmds"

local markdown_lists = vim.api.nvim_create_augroup("MarkdownLists", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = markdown_lists,
  pattern = "markdown",
  callback = function(args)
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
    vim.opt_local.breakat:append "-"
    vim.opt_local.formatoptions:append "ron"

    local ok = pcall(require, "autolist")
    if not ok then
      return
    end

    local opts = { buffer = args.buf, silent = true }
    vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<CR>", opts)
    vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<CR>", opts)
    vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<CR>", opts)
    vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<CR>", opts)
    vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<CR>", opts)
    vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<CR>", opts)
    vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<CR>", opts)
  end,
})
