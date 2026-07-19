" set vim behaviour, not vi
set nocompatible



" PLUG PLUGIN MANAGER

" https://github.com/junegunn/vim-plug
call plug#begin("~/.vim/plugged")

" https://github.com/ntpeters/vim-better-whitespace
Plug 'ntpeters/vim-better-whitespace'

" https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://github.com/yaegassy/coc-intelephense
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}

" https://github.com/leafgarland/typescript-vim
Plug 'leafgarland/typescript-vim'

" pangloss/vim-javascript
Plug 'pangloss/vim-javascript'

" HerringtonDarkholme/yats.vim
Plug 'HerringtonDarkholme/yats.vim'

" https://github.com/fatih/vim-go
Plug 'fatih/vim-go'
call plug#end()




" CUSTOM KEY CONFIG

" leader key = space key. Space + <key> is custom vim command
let mapleader=" "

" characters used when 'list' is enabled: space: ·, tab: →, trailing spaces: ·
set listchars=space:·,tab:→\ ,trail:·,eol:$

" space + l: Toggle display of invisible characters (spaces, tabs, eol)
nnoremap <leader>l :set list!<CR>

" space + s: ctrl + p behaviour
nnoremap <leader>s :CtrlP<CR>

"space + E: coc errors
nnoremap <silent> <leader>E :CocDiagnostics<CR>


" CTRLP CONFIG

let g:ctrlp_map = ''          " disable default Ctrl+P mapping

let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }



" TAB NAVIGATION

" tab navigation ctrl+n fort next, ctrl+p for previous
nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprev<CR>

" (Optional) allow tab navigation from insert mode
inoremap <silent> <C-n> <Esc><C-n>
inoremap <silent> <C-p> <Esc><C-p>




" COC

" next/previous
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
" enter to confirm
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" Toujours afficher la colonne des signes (évite le décalage du texte)
set signcolumn=yes





"DISPLAY CONFIG

" syntax highlighting
syntax on

" dark background
set background=dark


" Désactive automatiquement la syntaxe sur les fichiers trop gros (évite les freezes)
augroup BigFile
  autocmd!
  autocmd BufReadPre * let g:bigfile = (getfsize(expand("%")) > 1024 * 1024)
  autocmd BufReadPost * if exists("g:bigfile") && g:bigfile | syntax off | setlocal noswapfile | setlocal noundofile | endif
augroup END





" MENU CONFIG

" visual autocomplete for command menu, when typing :<cmd>
set wildmenu

" map W to w to avoid error when mistakenly typing :W instead of :w
" command! W w

" :tn for tabnew
ca tn tabnew

" :v for vsplit
ca v vsplit

" Case insensitive search
set ignorecase

" search is case sensitive only if you put a CAPITAL
set smartcase

" enable mouse
set mouse=a
set ttymouse=sgr



" REALODING VIMRC AUTOMATICALLY WITHOUT CONFLICT

augroup my_autocmds
  autocmd!
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END




" utf8 ftw
set encoding=utf-8

" disable auto commenting new comments line
au filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" use tab as esc
inoremap <Tab> <Esc>
" use maj+tab as tab
inoremap <S-Tab> <Tab>
vnoremap <Tab> <Esc>
vnoremap <S-Tab> <Tab>

" load filetype-specific indent files
filetype plugin indent on

" fix the backspace problem
set backspace=indent,eol,start
set history=50 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4
set expandtab " tabs are spaces



" Create html tags when typing ,tag
map! ,h1 <h1></h1><esc>2ba
map! ,h2 <h2></h2><esc>2ba
map! ,h3 <h3></h3><esc>2ba
map! ,h4 <h4></h4><esc>2ba
map! ,div <div></div><esc>2ba
map! ,span <span></span><esc>2ba
map! ,p <p></p><esc>2ba
map! ,a <a href=''></a><esc>2bra
