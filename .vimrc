filetype plugin indent on
set bg=dark
set number
syntax enable
syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set showmatch
set cindent
set smartindent
set smarttab
set wrap
set incsearch

colo torte

set hlsearch
set ruler

set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}
call vundle#end()            " required
filetype plugin indent on    " required

Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_collect_identifiers_from_tags_files = 1



execute pathogen#infect()
syntax on
filetype plugin indent on


"Shortcut keys for compling and running

map<F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc






