" OS
set tags+=~/linux-3.10-artik/tags
cs add ~/linux-3.10-artik/cscope.out

set nocompatible
filetype plugin indent on

" vim-plug
try | call plug#begin(exists('s:plug') ? s:plug : '~/.vim/plugged')
    Plug 'editorconfig/editorconfig-vim'        " 협업시 인덴트 조정
    Plug 'godlygeek/tabular'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'                   " better surround
    Plug 'Yggdroot/indentLine'                  " shows vertical indent line
    Plug 'sheerun/vim-polyglot'                 " syntax highlighting pack
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end() | catch /^Vim\%((\a\+)\)\=:E117/ | echo 'No vim-plug' | endtry

" Disable automatic folding and concealing of plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0


" indent
set autoindent
set smartindent

set shiftwidth=4
set softtabstop=4
set expandtab

let g:indentLine_char = '›'
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
