vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmatch = true -- 当光标置于成对符号（例如括号）时，高亮匹配的符号对

-- tab
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.list = true
vim.opt.listchars = {
	tab = "▸ ",
	trail = "▫",
}

vim.opt.encoding = "utf-8"
vim.opt.autowrite = true
vim.opt.scrolloff = 9
vim.opt.clipboard = "unnamedplus" 

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 300 }
  end,
})

vim.opt.spell = true
vim.opt.spelllang = {"en", "cjk"}
vim.opt.spelloptions = "camel"

vim.opt.timeoutlen = 1000

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
