set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

let mapleader = " "
set showmode "show -- INSERT --
set expandtab "tab key inserts spaces
set tabstop=2 "tab width
set shiftwidth=2 "indent width
set rnu "relative line numbering
set number "show absolute line number for current line only
set hlsearch
set scrolloff=5
map <leader>o :noh<cr>
nnoremap ; :
autocmd BufWritePre * %s/\s\+$//e
set clipboard=unnamed "vim shares system clipboard

highlight ColorColumn ctermbg=8
" set colorcolumn=81

let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1

map <S-H> :bprev<CR>
map <S-L> :bnext<CR>
map <S-W> :bdelete<CR>

map <C-T> :below 20sp term://$SHELL<CR>i
map <C-P> :FZF<CR>

map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>
map <C-H> <C-W><C-H>

if has("nvim")
  tmap <C-J> <Esc><C-J>
  tmap <C-K> <Esc><C-K>
  tmap <C-L> <Esc><C-L>
  tmap <C-H> <Esc><C-H>

  tnoremap <Esc> <C-\><C-N>
endif
