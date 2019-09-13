set nocompatible " required by Vundle
filetype off " required by Vundle

" initialize Vundle
set runtimepath+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" all plugins must be added before the following line
call vundle#end() " required by Vundle
filetype plugin indent on

set number
set incsearch
set hlsearch

syntax on

