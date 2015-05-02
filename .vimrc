if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

"set ignorecase				" Set searches to ignorecase
set number					" Turn on line numbers
set nocompatible			" Use Vim defaults (much better!)
set nowrap					" Do not wrap text according to window size
set bs=2					" allow backspacing over everything in insert
mode
set ai						" always set autoindenting on
set tabstop=4				" set tabstop=4
set shiftwidth=4			" set shiftwidth=4;
"set backup					" keep a backup file
set viminfo='20,\"50		" read/write a .viminfo file, don't store more
							" than 50 lines of registers
set history=50000			" keep 50000 lines of command line history
set ruler					" show the cursor position all the time
set background=dark			" set backgroud=dark
set wildmenu				" When typing a command, hit 'tab' to see a menu of possible completions
set wildmode=longest,list	" Complete longest common string, then list alternatives
set scrolloff=5				" cursor always at least x rows from top or bottom
set incsearch				" incremental search

"folding settings
set foldmethod=indent		" fold based on indent
set foldnestmax=10			" deepest fold is 10 levels
set nofoldenable			" dont fold by default
set foldlevel=1				" this is just what i use
"set cursorline

syntax enable				" vim r-plugin requests this. Not sure why
filetype plugin on
filetype indent on

set runtimepath+=$HOME/.vim/tabular " add tabularize to my path

"colorscheme marksDefault
colorscheme default
"colorscheme ir_black

" VIM-Shell
" Ctrl_W e opens up a vimshell in a horizontally split window
" Ctrl_W E opens up a vimshell in a vertically split window
" The shell window will be auto closed after termination
"nmap <C-W>e :new \| vimshell bash<CR>
"nmap <C-W>E :vnew \| vimshell bash<CR>


" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  filetype on
  au BufNewFile,BufRead *.R set filetype=r
  au BufNewFile,BufRead *.r set filetype=r
  set hlsearch
endif

if &term=="xterm"
     set t_Co=8
     set t_Sb=^[[4%dm
     set t_Sf=^[[3%dm
endif
