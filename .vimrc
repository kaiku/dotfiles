" Use pathogen.vim to manage plugins
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on

" `filetype indent on` causes problems with vim-jsx indentation,
" specifically it repeatedly indents the line when adding tags.
" using `set autoindent` instead seems to address the problem
set autoindent

" Enable syntax highlighting
if !exists("g:syntax_on")
    syntax enable
endif

" Set color scheme
set background=dark
colorscheme molokai
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
"set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Don't redraw screen while executing macros, registers, non-typed commands
set lazyredraw
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
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
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
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
set lcs=tab:▸\ ,trail:·,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
"set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Force status line to display
set laststatus=2
" Force tab line to display
set showtabline=2
" Disable GUI tab line in favor of plain text one
set guioptions-=e

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

" Make it easier to create new tabs
" Disabled since conflicts with Command-T
"map <leader>t <Esc>:tabnew<CR>

" netrw
" https://shapeshed.com/vim-netrw/
" Disable the banner in directory browsing mode (netrw)
let g:netrw_banner = 0
" Make vertical splitting the default for previewing files
let g:netrw_preview = 1
" Use tree list view
"let g:netrw_liststyle = 3
" Use long view
let g:netrw_liststyle = 1
" Open files reusing same window
let g:netrw_browse_split = 0
" Control left/right splitting
let g:netrw_altv = 1
let g:netrw_winsize = 30

" Command-T
let g:CommandTWildIgnore=&wildignore . ",*/node_modules,*/venv,*/venv3,*.pyc,*.min.js"

