" ---------------------------------------
" Pathogen
" ---------------------------------------

" execute pathogen#infect()
" syntax on
filetype plugin indent on
filetype plugin on

" ---------------------------------------
" Vim plug
" ---------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'Valloric/MatchTagAlways'

Plug 'SirVer/ultisnips'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-surround'

Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript'

Plug 'tpope/vim-fugitive'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'scrooloose/syntastic', { 'do': 'npm install -g eslint babel-eslint eslint-plugin-react' }

Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'lambdatoast/elm.vim'

Plug 'junegunn/vim-easy-align'

Plug 'flowtype/vim-flow'

call plug#end()


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
"set nowrap

" html indenting on .js files also
let g:jsx_ext_required = 0

" ---------------------------------------
" Config - display
" ---------------------------------------

"gui font
set guifont=Monaco:h12

" Colour scheme
color oceandeep

" Change cursor shape in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Display line numbers
set number

" Display non-visible chars
set list

" associate *.slim with haml filetype because slim syntax highlighing sucks
au BufRead,BufNewFile *.slim setfiletype haml

" ---------------------------------------
" Config - key mapping
" ---------------------------------------

" Remap escape for insert mode
imap jj <Esc>

" CSS bracket indentation
map! <C-b> {}<left><CR><CR><up><tab>

" Remap Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" Remove trailing white spaces
map <F5> :%s/\s\+$//<cr><leader><space>

" Set file type to text
map <F2> :set ft=txt<cr>

" Snipmate trigger
"imap <C-j> <esc>a<Plug>snipMateNextOrTrigger
"smap <C-j> <Plug>snipMateNextOrTrigger

" Global search word under cursor
map <F4> :execute " Ggrep " . expand("<cword>") . " " <bar> cwindow<CR>

" Restart clojure repl (Sperero)
nmap <SPACE> :Eval (user/restart)<CR><CR>

" ---------------------------------------
" Config - Ultisnip
" ---------------------------------------

imap <C-t> st<C-j>

let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips/'
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ---------------------------------------
" Config - ctrlP
" ---------------------------------------

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" ---------------------------------------
" Config - matchTagAlways
" ---------------------------------------

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx' : 1,
    \}

" ---------------------------------------
" Config - syntastic
" ---------------------------------------

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ---------------------------------------
" Config - vim-easy-align
" ---------------------------------------

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ---------------------------------------
" Config - auto-pairs
" ---------------------------------------

let g:AutoPairsShortcutFastWrap = '<C-l>'
