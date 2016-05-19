" general
set mouse=a

" eclim
set nocompatible
filetype plugin indent on

" vim-plug
call plug#begin('~/.vim/plugged')

    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'	        	" better surround
    Plug 'Yggdroot/indentLine'		        " shows vertical indent line
    Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'  }
    Plug 'junegunn/vim-xmark', { 'do': 'make' }
    Plug 'sudar/vim-arduino-syntax'             " arduino syntax files
    Plug 'scrooloose/syntastic'                 " syntax checking
"	Plug 'taglist.vim'			" shows current working symbol

call plug#end()

" Disable automatic folding of plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1


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

" vimdiff
highlight DiffChange ctermbg=NONE
highlight DiffText   ctermbg=22
highlight DiffAdd    ctermbg=22
highlight DiffDelete ctermbg=NONE ctermfg=235

" listchars
set list
set listchars=tab:›\ ,extends:»,precedes:«

" Enable modelines
set modeline
set modelines=5
