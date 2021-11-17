syntax on
filetype plugin indent on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=1.vtm/undodir
set undofile
set incsearch 
set colorcolumn=80 
set splitbelow splitright
highlight ColorColumn ctermbg=0 guibg=lightgrey 
let mapleader = " "

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'valloric/youcompleteme'
Plug 'mbbill/undotree' 
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'



call plug#end()

"Theming
colorscheme gruvbox
set background=dark

"Automatic toggling between line numbers
:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Remap splits navigation to just CTRL + hjkl
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"Make adjusing split sizes a bit more friendly
noremap <silent> <leader>0 :vertical resize +3<CR>
noremap <silent> <leader>9 :vertical resize -3<CR>
noremap <silent> <leader>= :resize +3<CR>
noremap <silent> <leader>- :resize -3<CR>

"Open terminal in Vim
map <leader>vt :vnew term://zsh<CR>
map <leader>tt :new term://zsh<CR>