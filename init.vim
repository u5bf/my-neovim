lua require("config.init")

" 关闭vi兼容模式
set nocompatible
" 高亮当前行
set cursorline
set colorcolumn=88
" 启用文件类型检测插件
filetype plugin on

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
