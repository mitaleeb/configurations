"leader set
let mapleader = ","
"ArrowKeys bug
set nocompatible
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'luochen1990/rainbow'
Plugin 'joonty/vim-do'
Plugin 'wkentaro/conque.vim'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required
filetype plugin indent on    " required


set backspace=indent,eol,start

" Line Numbers
set number

" 256-color terminal
set t_Co=256
colorscheme desert
syntax on
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
set hlsearch!
nnoremap <silent> <F3> :set hlsearch!<CR>
"Tabbing
set tabstop=4
set autoindent
set shiftwidth=4
set smartindent
set softtabstop=4
set expandtab
"show airline
set noshowmode
set laststatus=2
"GUI menu
set wildmenu

"Matching encapsulation
set showmatch

"Increased/highlighted search
set incsearch
set hlsearch
" mousemode
set mouse=a
"open vim for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
iabbrev adn and
iabbrev waht what
iabbrev Stirng String
iabbrev itn int
vnoremap <leader>" <esc>`<i"<esc>`>a"


"For parenthesis highlight
let g:rainbow_active = 1
"open the file to previous line number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
endif
