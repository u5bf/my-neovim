lua require("init")

" 关闭vi兼容模式
set nocompatible
" 启用文件类型检测插件
filetype plugin on

set showmatch           " 当光标置于成对符号（例如括号）时，高亮匹配的符号对
set hlsearch            " 搜索结果高亮

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
