set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'derekwyatt/vim-scala'

filetype plugin indent on     " required!

let g:ctrlp_map = '<c-p>'
let g:neocomplcache_enable_at_startup = 1
let mapleader=","
