set encoding=utf-8
set pastetoggle=<F3>
set hls
set clipboard=unnamed
set splitright
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set breakindent
set synmaxcol=250
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" highlight current line
set cursorline
set timeoutlen=500
" set relativenumber
set splitright
" show current file path
set statusline+=%F
" spell checking on text mode
set spell spelllang=en_us
" enable mouse
set mouse=ia

" colorscheme
set background=dark
colorscheme snow

set colorcolumn=100

" custom cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" search hit color
highlight Search ctermfg=black ctermbg=lightyellow

" remove hls on insert mode
autocmd InsertEnter * :let @/=""
command! -bang WQ wq<bang>

" delete trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" retired
"
" use old regex engine, improves ruby syntax highlighting performance
" set re=1
"
" show current line number
" set number
