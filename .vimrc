syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
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
Plug 'tomtom/tcomment_vim'
Plug 'vim-utils/vim-man'
Plug 'dkprice/vim-easygrep'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drzel/vim-scroll-off-fraction'

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

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmpd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <leader>gr :Grep<SPACE>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader>d :bdelete<CR>

let g:scrolloff_fraction = 0.15

" this setting unables auto commenting new line but can does someting else? if
" any bug appears check this option 

set formatoptions-=cro

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
