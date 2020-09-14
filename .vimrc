syntax on
set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set cindent

set nu rnu
au InsertEnter * :set nu nornu
au InsertLeave * :set nu rnu

set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tomtom/tcomment_vim'
Plug 'dkprice/vim-easygrep'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
Plug 'valloric/youcompleteme'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drzel/vim-scroll-off-fraction'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_drive_root='true'
endif

let g_ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --executable-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

let g:scrolloff_fraction = 0.15


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 1

function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-s-k> :call <SID>swap_up()<CR>
noremap <silent> <c-s-j> :call <SID>swap_down()<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader>d :bdelete<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>gr :Grep<SPACE>

nmap <F6> :NERDTreeToggle<CR>

" any bug appears check this option 
" this setting unables auto commenting new line but can does someting else? if
set formatoptions-=cro

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
