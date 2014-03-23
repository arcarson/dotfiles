" Enable pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

" Remap mapleader
let mapleader = ','

" Set autocomplete
set ofu=syntaxcomplete#Complete

" Colour scheme
color molokai

" Set font
set guifont=Inconsolata:h18

" Set iskeyword
set iskeyword=@,48-57,_,-,192-255

" Don't wrap lines
set nowrap

" Spell checker
setlocal spell spelllang=en_us

" Display line numbers
set relativenumber

" Make backspace work like you'd expect
set backspace=2

" Auto indentation
set ai
set ruler

" Display line numbers
set relativenumber

" set shiftwidth=2 for a good reason
set shiftwidth=2

" Spaces for tabs and 2 spaces for tab
set expandtab
set tabstop=2

" Dont want .swp files
set noswapfile

" highlight search results
set hlsearch

" Display non-visible chars
set list

" CSS bracket indentation
map! <C-b> {}<left><CR><CR><up><tab>

" Remap Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" Disable arrow keys
map <up> <C-b>
map <down> <C-f>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Indent text
map <D-]> >
map <D-[> <

" Commenting
map <D-/> ,c<space>

" Add empty line from normal mode
nmap <S-Enter> o<Esc>

" Incremental search
set incsearch

" Clear search
map <leader><space> :noh<cr>

" Remap escape for insert mode
imap jj <Esc>

" Remove trailing white spaces
map <F5> :%s/\s\+$//<cr><leader><space>

" Buffer navigation
nnoremap <F2> :buffers<CR>:buffer<Space>

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

imap <C-j> <esc>a<Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger

"let g:UltiSnipsExpandTrigger="<c-j>"
