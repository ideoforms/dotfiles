" syntax highlighting
syntax on
filetype indent plugin on

set bs=2
set nocompatible
set nohlsearch
set showcmd
set ruler
set showmode
set noerrorbells
set viminfo='50
set shiftwidth=4
set tabstop=4
set cindent
set expandtab

" fold based on file type, but don't fold by default
set foldmethod=syntax
set nofoldenable

" don't indent namespaces in c++
set cino=N-s
