syntax enable
set background=dark
colorscheme solarized

" Add full file path to your existing statusline
set statusline+=%F

set number
set ignorecase
set smartcase
set scrolloff=12 " space between cursor and bottom of screen before scroll

" Preserve undo/redo history
set undofile

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

filetype plugin indent on

" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
" autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
" autocmd Filetype scala setlocal expandtab ts=2 sw=2 sts=2

" character limit column
highlight ColorColumn ctermbg=0
set colorcolumn=80

" Easy split switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Copy to system clipboard by hitting leader first
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from system clipboard by hitting leader first
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Remap escape
imap jj <Esc>

" eslint
" let g:neomake_javascript_enabled_makers = ['eslint']
" autocmd! BufWritePost,BufEnter * Neomake

" disable folding
set nofoldenable

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" vim-plug
call plug#begin('~/.vim/plugged')

" call greppage on the current line
nnoremap <leader>kk :call grepg#RunGrepGCommand(getline('.'))<CR>

" use vim-jsx on .js files too
let g:jsx_ext_required = 0

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/hail2u/vim-css3-syntax.git'
Plug 'mxw/vim-jsx'
Plug 'evidanary/grepg.vim'
Plug 'https://github.com/yaymukund/vim-haxe.git'

call plug#end()

