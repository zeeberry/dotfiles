" ---------------------- USABILITY CONFIGURATION ----------------------
" don't make vim compatible with vi 
set nocompatible

" turn on syntax highlighting
syntax on

" make vim try to detect file types and load plugins for them
filetype on
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

"function! ResCur()
"  if line("'\"") <= line("$")
"    normal! g`"
"        return 1
"	  endif
"  endfunction

"augroup resCur
"    autocmd!
"      autocmd BufWinEnter * call ResCur()
"augroup END

" ---------------------- PLUGIN CONFIGURATION ----------------------
"initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'      
Plugin 'Lokaltog/vim-easymotion'    
Plugin 'tpope/vim-surround'         
" -- Web Development
Plugin 'Shutnik/jshint2.vim'        
Plugin 'mattn/emmet-vim'            
"Plugin 'skammer/vim-css-color'      
Plugin 'hail2u/vim-css3-syntax'     
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
  
" end plugin definition
call vundle#end()            " required for vundle

map <C-n> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" use zencoding with <C-E>
let g:user_emmet_leader_key = '<c-e>'
  
" run JSHint when a file with .js extension is saved
" this requires the jsHint2 plugin
autocmd BufWritePost *.js silent :JSHint
"let jshint2_save = 1
