" Use the Molokai theme (originally created for TExtMate by Wimer Hazenberg)
colorscheme molokai

" Make Vim more useful
set nocompatible
" Enhance command-line completion
"set wildmenu
" Allow cursor keys in insert mode
"set esckeys
" Allow backspace in insert mode
"set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
"set gdefault
" Use UTF-8 without BOM
"set encoding=utf-8 nobomb
" Change mapleader
"let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Respect modeline in files
"set modeline
"set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
"set exrc
"set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as four spaces
set tabstop=4
" Make indents be four spaces
set shiftwidth=4
" Number of columns for a tab
set softtabstop=4
" Expand tabs to spaces
set expandtab
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
"set incsearch
" Always show status line
"set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
"set nostartofline
" Show the cursor position
"set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
"set showmode
" Show the filename in the window titlebar
"set title
" Show the (partial) command as it’s being typed
"set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"	set relativenumber
"	au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
"noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
"if has("autocmd")
"	" Enable file type detection
"	filetype on
"	" Treat .json files as .js
"	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
"endif

" Make it easier to navigate between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" PLUGINS

filetype plugin on
set runtimepath^=~/.vim/bundle/editorconfig-vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim/
set runtimepath^=~/.vim/bundle/vim-vinegar/
set runtimepath^=~/.vim/bundle/vim-javascript/
set runtimepath^=~/.vim/bundle/vim-jsx/
set runtimepath^=~/.vim/bundle/grep.vim/

" netrw
" https://shapeshed.com/vim-netrw/
" Disable the banner in directory browsing mode (netrw)
let g:netrw_banner = 0
" Use tree list view
let g:netrw_liststyle = 3
" Open files reusing same window
let g:netrw_browse_split = 0
" Control left/right splitting
let g:netrw_altv = 1
let g:netrw_winsize = 25

" CtrlP
" Invoke using actual ctrl-p in Normal mode
let g:ctrlp_map = '<c-p>'
" Set default opening command
let g:ctrlp_cmd = 'CtrlP'
" Search by filename (1) instead of path (0)
let g:ctrlp_by_filename = 1
" Ignore searching in these places
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|node_modules|bower_components|venv3?|__pycache__)$',
    \ 'file': '\v\.(pyc)$'
    \ }
