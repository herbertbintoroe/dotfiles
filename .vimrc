set nocompatible              " be iMproved, required
filetype off                  " required

" Let Vundle manage Vundle, required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'rking/ag.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-commentary'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Activates syntax highlighting among other things
syntax on

" Highlight current cursor line
set cursorline 

" Highlight search results
set hlsearch

" Set end of line mark
set list

" Change the mapleader from \ to ,
let mapleader=","

" NERDTree shortcuts
nnoremap <leader>n :NERDTree
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

" CtrlP shortuts
nnoremap <leader>p :CtrlPCurWD<CR>

" Tagbar shortcut
nnoremap <leader>t :Tagbar<CR>

" Leader f for CtrlSf
nnoremap <leader>f :CtrlSF -i 
nnoremap <leader>ipd oimport ipdb; ipdb.set_trace()

" CtrlSF Config
let g:ctrlsf_auto_close = 0

" Leader v for vertical splits
nnoremap <leader>v <C-w>v

" Ruler and other stuffs
set laststatus=2    " always shows status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set expandtab       " tabs are converted to spac
set incsearch       " do incremental searching
set colorcolumn=80  " set 80 column linemarker

" Clear Signcolumn for gitgutter
highlight clear SignColumn
highlight SignColumn guibg=black
highlight ColorColumn ctermbg=DarkGray

" Easier windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" So that clipboard from vim can be shared with Mac Wide clipboard
set clipboard=unnamed

" Map enter and enter to add new line without entering insert mode
nmap <CR> o<Esc>

" Speed up ctrlP in git repo
let g:in_git = system('git rev-parse --show-toplevel 2>/dev/null')
if g:in_git != ''
    cd `=g:in_git`
    let g:ctrlp_user_command = 'cd %s && git ls-files . -co --exclude-standard'
endif

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Folding goodness
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldenable
set foldlevel=1         "this is just what i use

" Set default font for macvim
set guifont=Monaco:h10

" Set relative line numbering
set rnu
set number

" Color scheme
set t_Co=256
colorscheme hybrid
