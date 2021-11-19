" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif



autocmd FileType vim inoremap if<Tab> if<Enter>endif<Esc>k$a<Space>
autocmd FileType c,h inoremap if<Tab> if () {<Enter>}<Esc>kwa
autocmd FileType c,h inoremap #ifndef<Tab> #ifndef<Enter>#endif<Esc>k$a<Space>
inoremap (; ()<Esc>i
inoremap <; <><Esc>i
inoremap '; ''<Esc>i
inoremap "; ""<Esc>i

