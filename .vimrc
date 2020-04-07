nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <M-x> <C-w>c
nnoremap <M-v> <C-w>v

nnoremap <silent> <M-c> :noh<CR>
nnoremap <silent> <M-e> :NERDTreeFind<CR>
nnoremap <silent> <M-f> :CtrlPTag<CR>

nnoremap 0 ^
nnoremap <M-z> :wqa<CR>
nnoremap <M-q> :qa!<CR>
nnoremap <M-s> :wa<CR>
nnoremap <M-g> :!ctags -R<CR>
nnoremap <M-i> :PlugInstall<CR>

set colorcolumn=81
set noshowmode
set hidden
set autoread
set background=dark
set linebreak
set hlsearch incsearch
set clipboard=unnamedplus
set number relativenumber
set splitbelow splitright
set shiftwidth=2 tabstop=2 expandtab
set autoindent smartindent
set timeoutlen=1000
set timeout ttimeoutlen=50
set fillchars+=vert:\│

call plug#begin()

Plug 'reedes/vim-lexical'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'djoshea/vim-autoread'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'svermeulen/vim-easyclip'
Plug 'vim-scripts/loremipsum'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:EasyClipAutoFormat = 1
let g:indentLine_char = '│'
let g:lexical#spell = 1

colorscheme gruvbox

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.linenr = ''

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd,textile,text call lexical#init()
augroup END
