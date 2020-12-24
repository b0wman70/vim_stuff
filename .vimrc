" basics
set nocompatible              " be iMproved
syntax on
set tabstop=2                 " set tab=2 spaces
set expandtab                 " convert tab to spaces
set number relativenumber
set noswapfile

set incsearch

" when yank a visual block put the cursor at the and of visual block
:vnoremap y y'>

set autoindent
set smartindent
set shiftwidth=2

" add closing brakets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O

" easy splitted windows navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open new split panes to right and bottom
set splitbelow
set splitright

" if not installed install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -kfLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" The first time, to install plugins, launch :PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'morhetz/gruvbox'
" Plug 'https://github.com/ycm-core/YouCompleteMe.git'

" fzf plugin (it must be installed fzf)
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'slarwise/vim-tmux-send'

call plug#end()

nnoremap <silent> <C-f> :Files<CR>

colorscheme gruvbox
set background=dark

nnoremap Q :SendLine<CR>

