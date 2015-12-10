" vundles
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'		" managing plugins
    Plugin 'tpope/vim-surround'	        	" better surround
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

    set shiftwidth=4
    set softtabstop=4
    set expandtab
	
    let g:indentLine_char = '︙'
    let g:indentLine_color_term = 239

" interface
    set number
    set cursorline
    hi CursorLine cterm=NONE ctermbg=black guibg=black

    set mouse=a
if has("autocmd")
    if v:version > 701
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|???\)')
        autocmd Syntax * call matchadd('Search', '\W\zs\(FIXME\|TODO\|XXX\)')
        autocmd Syntax * call matchadd('ErrorMsg', '\W\zs\(ERROR\|FATAL\)')
    endif
endif

" searching
    set hlsearch

" encoding
    set enc=utf-8
