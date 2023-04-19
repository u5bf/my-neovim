-- terminal
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("t", "<esc><esc>", "<c-\\><c-n>", opt)
vim.api.nvim_set_keymap("n", "<c-`>", ":set splitbelow<cr>:split | term<cr>", opt)
vim.api.nvim_set_keymap("t", "<c-`>", "<c-\\><c-n>:bdelete! %<cr>", opt)

-- vim.api.nvim_set_keymap("t", "<leader>h", "<C-\\><C-n><C-w>h", opt)
-- vim.api.nvim_set_keymap("t", "<leader>l", "<C-\\><C-n><C-w>l", opt)
-- vim.api.nvim_set_keymap("t", "<leader>j", "<C-\\><C-n><C-w>j", opt)
-- vim.api.nvim_set_keymap("t", "<leader>k", "<C-\\><C-n><C-w>k", opt)

-- 打开终端后自动进入插入模式
local term_mode = vim.api.nvim_create_augroup("TERM_MODE", {clear = true})
vim.api.nvim_create_autocmd({"TermOpen"}, {
    pattern = "*",
    group = term_mode,
    command = [[normal i]]
})

-- netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
