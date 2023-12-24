"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               														  "
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗					  "
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝					  "
"               ██║   ██║██║██╔████╔██║██████╔╝██║     					  "
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     					  "
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗					  "
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝					  "
"              															  " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable line numbers
:set number

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn syntax highlighting on
syntax on

" Enable 256-color mode
set t_Co=256

" Highlight cursor col / line
" set cursorcolumn
" set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show the mode you are on the last line.
set showmode

" Show partial command you type in the last line of the screen.
set showcmd

" Set the commands to save in history - default number is 20.
set history=50

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Use highlighting when doing a search.
set nohlsearch

" Auto-indent
set autoindent

" Always show info along bottom
set ruler

" Use zo/zc to open/close the folds below

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

	Plug 'github/copilot.vim'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
