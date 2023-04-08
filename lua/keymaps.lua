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
vim.keymap.set("n", "sk", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
vim.keymap.set("n", "sj", ":set splitbelow<CR>:split<CR>", opts)
vim.keymap.set("n", "sh", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
vim.keymap.set("n", "sl", ":set splitright<CR>:vsplit<CR>", opts)
-- cursor jumper between screen
vim.keymap.set("n", "<leader>l", "<c-w>l", opts)
vim.keymap.set("n", "<leader>k", "<c-w>k", opts)
vim.keymap.set("n", "<leader>h", "<c-w>h", opts)
vim.keymap.set("n", "<leader>j", "<c-w>j", opts)
vim.keymap.set("n", "sc", "<c-w>o", opts)

-- rotate screen
vim.keymap.set("n", "srh", "<C-w>b<C-w>K", opts)
vim.keymap.set("n", "srv", "<C-w>b<C-w>H", opts)

-- adjust window size
vim.keymap.set("n", "<up>", ":res +5<cr>", opts)
vim.keymap.set("n", "<down>", ":res -5<cr>", opts)
vim.keymap.set("n", "<left>", ":vertical resize+5<cr>", opts)
vim.keymap.set("n", "<right>", ":vertical resize-5<cr>", opts)