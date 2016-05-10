source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on				" enable color
colorscheme desert
filetype plugin indent on
set number				" enable numbers

source ~/.vimrc.bepo

autocmd filetype javascript 
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

autocmd filetype python
    \ set tabstop=8 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set fileformat=unix |

let mapleader=","
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = '/usr/bin/python3.5'

nnoremap <space> za

set wildmenu				" autocompletion in menus
set showcmd
set cmdheight=2
set laststatus=2
set foldmethod=indent
set nofoldenable
set lazyredraw				" don't redraw while excuting macro
set encoding=utf8
set nobackup
set nowb
set noswapfile
set ai                      " autoindent
set si                      " smartindent
set wrap                    " break line when longer than screen width

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ 

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components'

" colorise les nbsp
highlight NbSp ctermbg=lightgray guibg=lightred
match NbSp /\%xa0/

"
" MOVEMENTS
"
set so=7				" set minimum lines under cursor while scrolling file

"
" OTHER REMAPS
"
noremap <F12> :set paste!<CR>		" toggle paste

"
" TABS
"
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

"
" SEARCH
"
set hlsearch				" highlight searched pattern
set smartcase				" 
set incsearch				" highlight while typing pattern
nnoremap <leader>n :noh<Cr>	" remove highlight

"
" FUNCTIONS
"
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
