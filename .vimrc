" ---------------------- USABILITY CONFIGURATION ----------------------
" don't make vim compatible with vi 
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" start plugin defintion
Plugin 'JamshedVesuna/vim-markdown-preview'
" -- Web Development
Plugin 'ap/vim-css-color'      
Plugin 'hail2u/vim-css3-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" turn on syntax highlighting
syntax on

" make vim try to detect file types and load plugins for them
filetype off
filetype plugin on
filetype indent on

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" by default, in insert mode backspace won't delete over line breaks, or 
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" set unix line endings
set fileformat=unix

set viminfo='10,\"100,:20,%,n~/.viminfo

" ---------------------- CUSTOMIZATION ----------------------
"set color pattern
colo desert

" search settings
set incsearch        " find the next match as we type the search
set hlsearch         " highlight searches by default

set laststatus=2

" indentation
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=2    " when reading, tabs are 2 spaces
set softtabstop=2   " in insert mode, tabs are 2 spaces
set tabstop=2
set smarttab
