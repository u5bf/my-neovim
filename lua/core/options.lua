local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.cursorline = true -- 高亮当前行
opt.showmatch = true -- 当光标置于成对符号（例如括号）时，高亮匹配的符号对
opt.wrap = false -- 自动折行
opt.colorcolumn = "88"

-- tab
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.cindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.ignorecase = true
opt.smartcase = true

opt.list = true
opt.listchars = {
	tab = "▸ ",
	trail = "▫",
}

opt.encoding = "utf-8"
opt.autowrite = true -- 光标移出 terminal 自动保存
opt.autochdir = true
opt.scrolloff = 9
opt.clipboard = "unnamedplus" 

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 300 }
  end,
})

opt.spell = true
opt.spelllang = {"en", "cjk"}
opt.spelloptions = "camel"

opt.timeoutlen = 1000

-- set termguicolors to enable highlight groups
opt.termguicolors = true
opt.signcolumn = "yes"

