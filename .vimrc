" vimrc

" 1 important
" 2 moving around, searching and patterns
" 3 tags
" 4 displaying text
" 5 syntax, highlighting and spelling
" 6 multiple windows
" 7 multiple tab pages
" 8 terminal
" 9 using the mouse
"10 GUI
"11 printing
"12 messages and info
"13 selecting text
"14 editing text
"15 tabs and indenting
"16 folding
"17 diff mode
"18 mapping
"19 reading and writing files
"20 the swap file
"21 command line editing
"22 executing external commands
"23 running make and jumping to errors
"24 language specific
"25 multi-byte characters
"26 various
"27 netrw

"1 important
set nocompatible "behave very Vi compatible (not advisable)
"set nopaste "insert typed text literally
"set pastetoggle= "sequence to toggle paste mode
"set runtimepath=/home/gwalters/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/gwalters/.vim/after
"set packpath=/home/gwalters/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/home/gwalters/.vim/after
"set helpfile= "

"2 moving around, searching and patterns
set path+=** "fuzzy path search
set autochdir
set ignorecase

"3 tags
set tagbsearch "use binary searching in tags files
"set taglength "number of significant characters in a tag name or zero
set tag=./tags,./TAGS,tags,TAGS
"set tagcase=followic

"4 displaying text
"set scroll=13
set nowrap
set number
set window=55 "number of lines to scroll for CTRL-F and CTRL-B

"5 syntax, highlighting and spelling
set background=dark
filetype plugin on
syntax enable
set hlsearch "hight all matches for the last used search pattern
set nocursorline "highlight screen line of the cursor
set colorcolumn=90
"set spell "highlight spelling mistakes
"colorscheme delek
"colorscheme industry
colorscheme murphy

"6 multiple windows
set laststatus=2 "0, 1, 2; when to use status line for the last window
"set statusline= "alternate format for status line
"set equalalways "windows the same size on add/remove
"set eadirection=both "direction equal always works in
set hidden "don't unload a buffer when no longer shown in a window
"set switchbuf "[useopen] and/or [split]; which window to use when jumping
set splitbelow "splits window beneath current one
"set splitright "splits window to the right of the current one
set noscrollbind
"set termsize=
"set termkey=

"7 multiple tab pages
set showtabline=1 "0, 1 or 2; when to use tab pages line
set tabpagemax=10 "maximum number of tab pages to open for -p and [tab all]

"8 terminal
"set term=builtin_gui "name of the used terminal
"set ttytype=builtin_gui "alias for term
set ttybuiltin "check built-in termcaps first
"set nottyfast "terminal connection is fast
"set noweirdinvert "terminal that requires extra redrawing
set esckeys "recognize keys that start with <Esc> in Insert mode
set scrolljump=1 "minimal number of lines to scroll at a time
set ttyscroll=999 "max number of lines to use scrolling instead of redrawing
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
"set title "show info in the window title
"set titlelen=85 "percentage of 'columns' used for the window title
"set titlestring= "when not empty, string to be used for the window title
"set titleold=Thanks\ for\ flying\ Vim "string to restor the title when
"exiting vim
"set icon "set the text of the icon for this window
"set iconstring= "when not empty, text for the icon of this window

"9 using the mouse
set mouse=a "use mouse in vim
set nomousefocus "the window with the mouse becomes the current one
set nomousehide "hide the mouse pointer while typing
set mousemodel=extend "[extend], [popup], or [popup_setpos]; what the right mouse
"button is used for
set mousetime=500 "max time in msec to recognize a double-click
set ttymouse=xterm2 "[xterm], [xterm2], [dec], or [netterm]; type of mouse; this will allow sizing window with mouse while in tmux
set mouseshape=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lrsizing,m:no,ml:up-arrow,v:rightup-arrow

"10 GUI

"11 printing

"12 messages and info
set noterse "don't show search message
set noshowcmd "show command keys in status line
set showmode "display current mode in the status line
set ruler "show cursor position below each window
set visualbell
set t_vb= "set visual bell to do nothing
"set rulerformat= "alternate format to be used for the ruler
set report=2 "threshold for reporting number of changed lines
set more "pause listings when the screen is full
set noconfirm "dialog when a command fails
"set noerrorbells
"set novisualbell
"set belloff

"13 selecting text
set selection=inclusive "[old], [inclusive], or [exclusive]; how selecting
"text behaves
"set selectmode= "[mouse], [key] and/or [cmd]; whe to start select mode
"set clipboard=autoselect,exclude:cons\\\|linux "always put selected text on
"clipboard
set clipboard=unnamedplus "use the system clipboard

"14 editing text
"set dictionary=
"set thesaurus=
set matchpairs=(:),{:},[:]

"15 tabs and indenting
set tabstop=3
set shiftwidth=3
set smarttab "tab indent inserts 'shiftwidth' spaces
set softtabstop=3
set expandtab
set autoindent
set smartindent

"16 folding

"17 diff mode
set nodiff "use diff mode for the current window

"18 mapping
"set maxmapdepth=1000 "maximum depth of mapping

"19 reading and writing files
set fileformat=unix "end-of-line format: [dos], [unix], [mac]
set fileformats=unix,dos "list of file formats to look for when editing a file
set notextmode "obsolete, use fileformat
set textauto "obsolete, use fileformat

"20 the swap file

"21 command line editing
set history=50 "how many command lines are remembered
set wildchar=9 "key that triggers command-line expansion
set wildcharm=0 "like wildchar but can also be used in a mapping
set wildmode=full "specifies how command line completion works
set wildmenu "command-line completion showas a list of matches

"22 executing external commands

"23 running make and jumping to errors
set makeprg=make "program used for the :make command
set grepprg=grep\ -n\ $*\ /dev/null "program used for the :grep command

"24 language specific

"25 multi-byte characters
set encoding=utf-8
"set emoji "emoji characters are full width

"26 various
"set loadplugins
"setbufhidden
"set debug=
"set pythondll=
"set pythonhome=
"set pythonthreedll=
"set pythonthreehome=

"27 netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3

"easy buffer navigation
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>
":nmap \<C-n> :bnext\<CR> "next buf with ctrl+n
":nmap \<C-p> :bprevious\<CR> "prev buf with ctrl+p


"easy split navigation 
:nnoremap <C-j> <C-W>j 
:nnoremap <C-k> <C-W>k 
:nnoremap <C-h> <C-W>h 
:nnoremap <C-l> <C-W>l 

" Powerline (if installed with pip)
"set rtp+=/usr/share/powerline/bindings/vim/
" Always show statusline
"set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256
