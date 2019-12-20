call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'sickill/vim-monokai'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-t> :NERDTreeToggle<CR>

syntax enable
set noshowmode
color monokai
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set rnu nu
set hlsearch
set ruler
