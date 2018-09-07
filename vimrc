syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set statusline+=%F
set laststatus=2

set mouse=a

set number
set ignorecase
set smartcase
set scrolloff=12 " space between cursor and bottom of screen before scroll

" Preserve undo/redo history
set undofile

" 4 space indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

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

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" disable folding
set nofoldenable

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

" Initialize plugin system
call plug#end()
