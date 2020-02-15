" Based on https://dougblack.io/words/a-good-vimrc.html

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

call plug#end()

" set autochdir

" AUTO-REFRESH:
" autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

" CLIPBOARD: 
set clipboard=unnamed

" COLORS: 
syntax enable
" colorscheme badwolf

" TABS:
set tabstop=2
set softtabstop=2
set expandtab     	 

" UI:
:set ruler
:set noswapfile
:set wrap!
set relativenumber
"set number 
set showcmd   
set cursorline
filetype indent on
set wildmenu 
" set lazyredraw
" set showmatch

" Searching:
set incsearch
" set hlsearch    

" Folding:
set foldenable
set foldlevelstart=10 
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Movement: 
nnoremap gV `[v`]

" DEVFONTS:
set encoding=utf8

" VIMGREP
nmap <C-]> :cnext<CR>
nmap <C-[> :cprevious<CR>

" Nerdtree:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <C-n> :NERDTreeToggle<CR>

" FZF 
nmap <C-p> :FZF<CR>

" GitGutter
set updatetime=250

