set nocompatible
filetype plugin indent on

" vim-plug
try | call plug#begin(exists('s:plug') ? s:plug : '~/.vim/plugged')
    Plug 'vim-airline/vim-airline'              " shows current status
    Plug 'vim-airline/vim-airline-themes'       " airline theme
    Plug 'airblade/vim-gitgutter'               " shows git-diff
    Plug 'tpope/vim-fugitive'                   " use git commands in vim & shows git status
    Plug 'editorconfig/editorconfig-vim'        " configuration for cooperation
    Plug 'tpope/vim-git'                        " git syntax highlighter
    Plug 'godlygeek/tabular'
    Plug 'Yggdroot/indentLine'                  " shows vertical indent line
    Plug 'sheerun/vim-polyglot'                 " syntax highlighting pack
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    if v:version >= 702
        Plug 'justinmk/vim-dirvish'             " path nevigator
    endif
call plug#end() | catch /^Vim\%((\a\+)\)\=:E117/ | echo 'No vim-plug' | endtry

" Disable automatic folding and concealing of plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" vim airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'

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

set fillchars+=vert:│
hi VertSplit cterm=NONE


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
