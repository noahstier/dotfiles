set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'haya14busa/incsearch.vim'

call vundle#end()
filetype plugin indent on

syntax on
set re=1
set rnu "relative line numbering
set number "show absolute line number for current line only
set showmode "show -- INSERT --
set expandtab "tab key inserts spaces
set tabstop=2 "tab width
set shiftwidth=2 "indent width
set hlsearch
set cursorline
set scrolloff=5
set scroll=2
set incsearch
set ignorecase
set wildmenu
set backspace=indent,eol,start
set clipboard=unnamed "vim shares system clipboard
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap//
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
set viminfo='100,n$HOME/.vim/files/info/viminfo

au BufNewFile,BufRead *.json.jbuilder set ft=ruby

let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1

highlight Search cterm=bold ctermbg=59
highlight ColorColumn ctermbg=0
set colorcolumn=81

let mapleader = " "
map <leader>/ :noh<cr>
map <leader>q @q
map <leader>w :w<cr>:noh<cr>
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
nnoremap ; :
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" navigate to last cursor position more easily
nnoremap ' `
map <S-H> :bprev<CR>
map <S-L> :bnext<CR>
map <S-W> :bdelete<CR>
map <C-P> :FZF<CR>
map <C-T> :Ag <C-R><C-W><CR>
" dont delete the trailing space for :Ag
map <C-F> :Ag 
inoremap df <Esc>
inoremap fd <Esc>
inoremap <Esc> <NOP>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
