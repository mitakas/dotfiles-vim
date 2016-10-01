" move pathogen from it's default location
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Use Vim settings instead of Vi settings
" set nocompatible " Vim start with nocompatible on if there is a .vimrc
set backspace=indent,eol,start

" Set utf-8 as default encoding
set encoding=utf-8

" Enable the mouse if there is any
"if has('mouse')
"  set mouse=a
"endif

" Load pathogen from the bindle
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Number the lines
set number

" Set colorscheme, also zenburn is a nice theme
colorscheme wombat256mod

" Down, right, line and column
set ruler

" Highlight the searched terms
set hlsearch

" While typing a search command, show where the pattern matches
set incsearch

" Copy indent from current line when startung a new line
set autoindent
set smartindent

" Show the current line
set cursorline
" Show the current command in the lower right corner
set showcmd
" Show the autocomplete options when pressing tab
set wildmenu

filetype plugin indent on

" Color lines longer than 80 chars
" :match ErrorMsg '\%>80v.\+'

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>

" Use the same symblos as TextMate for tabstops and EOLs
set listchars=tab:•\ ,eol:¬,extends:>,precedes:<,nbsp:+

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set smarttab

" exception for Makefiles
au FileType make setlocal noexpandtab

" Save buffers when switching, also no hidden buffers
set hidden

" Show tab bar, set to 0 to turn off
" set showtabline=2

" Turn the blinking of matching parens while typing
set sm

" Automatically re-read the file if it isn't been changed inside vim
set autoread
" Automatically save the file before doing a make
set autowrite

" When searching, ignore case, unless the pattern has a capital
set ignorecase
set smartcase

" Jump to matches when entering regexp
set showmatch

" Set the search to wrap lines
set wrapscan

" Always put a status line
set laststatus=2

" Set the status line in a cool way
set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" Toggle the NERDTree on and off with F6
nmap <F6> :NERDTreeToggle<CR>

" Close the NERDTree with Shift-F6
nmap <S-F6> :NERDTreeClose<CR>

" Toggle Tagbar with F8
nmap <F8> :TagbarToggle<CR>

" Close Tagbar with Shift-F8
nmap <S-F8> :TagbarClose<CR>

" emacs follow: scroll bind two windows one screenful apart
nmap <silent> <leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>

" Remember more than 20 commands
set history=100

" Hightlight extra whitespace at the end of lines
highlight ExtraWhitespace ctermbg=red guibg=#AF0000
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Unite
" File searching like ctrlp.vim
nnoremap <C-p> :Unite file_rec/async<cr>

" Content searching like ack.vim
nnoremap <space>/ :Unite grep:.<cr>

" vim-dispatch, run make
nmap <F7> :Make!<CR>

" vim-dispatch, open quickfix window
nmap <S-F7> :Copen<CR>

" Search for tags up until $HOME
set tags=./tags;$HOME

" associate *.zcml with xml filetype
au BufRead,BufNewFile *.zcml setfiletype xml
au BufRead,BufNewFile *.zcml setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" smaller tab size for html
au BufRead,BufNewFile *.html setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.yml setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" sort python imports
command! -range=% Isort :<line1>,<line2>! isort -

" more highlighting in python
let python_highlight_all = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }
