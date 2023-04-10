local opts = { noremap = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>rc", ":e ~/AppData/Local/nvim/init.vim <cr>", opts)
vim.keymap.set("i", "jk", "<esc>", opts)
vim.keymap.set("n", "Q", ":q!<enter>", opts)

vim.keymap.set("n", "<A-down>", ":m .+1<CR>==",opts)
vim.keymap.set("n", "<A-up>", ":m .-2<CR>==",opts)
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv",opts)
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv",opts)

-- split screen
vim.keymap.set("n", ";k", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
vim.keymap.set("n", ";j", ":set splitbelow<CR>:split<CR>", opts)
vim.keymap.set("n", ";h", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
vim.keymap.set("n", ";l", ":set splitright<CR>:vsplit<CR>", opts)
-- cursor jumper between screen
vim.keymap.set("n", "gl", "<c-w>l", opts)
vim.keymap.set("n", "gk", "<c-w>k", opts)
vim.keymap.set("n", "gh", "<c-w>h", opts)
vim.keymap.set("n", "gj", "<c-w>j", opts)
vim.keymap.set("n", "sc", "<c-w>o", opts)

-- rotate screen
vim.keymap.set("n", "srh", "<C-w>b<C-w>K", opts)
vim.keymap.set("n", "srv", "<C-w>b<C-w>H", opts)

-- adjust window size
vim.keymap.set("n", "<up>", ":res +5<cr>", opts)
vim.keymap.set("n", "<down>", ":res -5<cr>", opts)
vim.keymap.set("n", "<left>", ":vertical resize+5<cr>", opts)
vim.keymap.set("n", "<right>", ":vertical resize-5<cr>", opts)
