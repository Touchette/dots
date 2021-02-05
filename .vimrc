"              o8o                                       
"              `"'                                       
" oooo    ooo oooo  ooo. .oo.  .oo.   oooo d8b  .ooooo.  
"  `88.  .8'  `888  `888P"Y88bP"Y88b  `888""8P d88' `"Y8 
"   `88..8'    888   888   888   888   888     888       
"    `888'     888   888   888   888   888     888   .o8 
"     `8'     o888o o888o o888o o888o d888b    `Y8bod8P' 

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
call vundle#end() 

filetype plugin indent on   " required

"  .-.-.  .-.-.  .-.-.  .-.-.  .-.-.  .-.-.  .-.-.  .-.-.  .-.-.
" =`. .'==`. .'==`. .'==`. .'==`. .'==`. .'==`. .'==`. .'==`. .'=
"    '      '      '      '      '      '      '      '      '

" Plugin settings
let g:indentLine_char='|'
let g:airline_theme='solarized'

" Guide to keep line length low
set colorcolumn=80
highlight ColorColumn ctermbg=7

" Tabs better be spaces 'round here
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8

" Syntax highlighting is very important
syntax on

