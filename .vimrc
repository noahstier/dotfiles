set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'haya14busa/incsearch.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'scrooloose/nerdtree'
Plugin 'ap/vim-buftabline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'airblade/vim-gitgutter'
Plugin 'hdima/python-syntax'

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
set cursorline
set scrolloff=5
set scroll=2
set ignorecase
set backspace=indent,eol,start
set clipboard=unnamedplus
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
"set t_ti= t_te=
" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap/
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
set viminfo='100,n$HOME/.vim/files/info/viminfo

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

colorscheme default

highlight CursorLine ctermbg=238 cterm=None
highlight ColorColumn ctermbg=0
highlight YcmErrorSection ctermbg=88
set colorcolumn=89

"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

let mapleader = " "
map <leader>/ :noh<cr>
map <leader>q @q
map <leader>w :w<cr>:noh<cr>
nnoremap ; :
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" navigate to last cursor position more easily
nnoremap ' `
map <S-H> :bprev<CR>
map <S-L> :bnext<CR>
map <S-W> :bp<bar>sp<bar>bn<bar>bd<CR>
map <S-Q> :close<CR>
map <C-P> :FZF<CR>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <leader>vsp :vsp<CR>
nnoremap <leader>sp :sp<CR>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

nmap <leader>; :VimuxRunCommand(@")<CR>
map <leader>: :VimuxPromptCommand<CR>
map <leader>l :VimuxRunLastCommand<CR>

map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

map <C-n> *Ncgn


