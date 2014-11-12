" ---------------------------------------
" Pathogen
" ---------------------------------------

execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

" ---------------------------------------
" Config - general
" ---------------------------------------

" highlight search results
set hlsearch

" Incremental search
set incsearch

" Set iskeyword
set iskeyword=@,48-57,_,-,192-255

" No spelling
set nospell

" Dont want .swp files
set noswapfile

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" try and make terminal vim more responsive
set lazyredraw
set ttyfast
" ---------------------------------------
" Config - formatting
" ---------------------------------------

" Make backspace work like you'd expect
set backspace=2

" Auto indentation
set ai
set ruler

" set shiftwidth=2 for a good reason
set shiftwidth=2

" Spaces for tabs and 2 spaces for tab
set expandtab
set tabstop=2

" Don't wrap lines
set nowrap

" ---------------------------------------
" Config - display
" ---------------------------------------

" Colour scheme
color molokai

" Change cursor shape in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Display line numbers
set number

" Display non-visible chars
set list

" ---------------------------------------
" Config - key mapping
" ---------------------------------------

" Remap escape for insert mode
imap jj <Esc>

" CSS bracket indentation
map! <C-b> {}<left><CR><CR><up><tab>

" Remap Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" Clear search
map <,><space> :noh<cr>

" Remove trailing white spaces
map <F5> :%s/\s\+$//<cr><leader><space>


" Snipmate
imap <C-j> <esc>a<Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger

" Global search word under cursor
map <F4> :execute " Ggrep " . expand("<cword>") . " " <bar> cwindow<CR>

"let g:UltiSnipsExpandTrigger="<c-j>"

" Easy window navigation
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" Commenting
" map <D-/> ,c<space>
