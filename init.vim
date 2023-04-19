lua require("init")

augroup relative_numbser
autocmd!
autocmd Insertenter * :set norelativenumber
autocmd Insertleave * :set relativenumber
augroup END

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has('gui_running')
    exec 'cd' . fnameescape('D:/VS_Code')
endif
set guioptions+=b
