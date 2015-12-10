" vundles
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'		" managing plugins
	Plugin 'tpope/vim-surround'		" better surround
	Plugin 'Yggdroot/indentLine'		" shows vertical indent line
	Plugin 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'  }

call vundle#end()
filetype plugin indent on


" vim-plug
call plug#begin('~/.vim/plugged')

   	Plug 'jiangmiao/auto-pairs'
"	Plug 'taglist.vim'			" shows current working symbol

call plug#end()


" indent
	set autoindent
	set smartindent

" interface
	set number
	set cursorline
	set mouse=a

" searching
	set hlsearch

" encoding
	set enc=utf-8
