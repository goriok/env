" Based on https://dougblack.io/words/a-good-vimrc.html

call plug#begin('~/.vim/plugged')

"Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'skywind3000/asyncrun.vim' 

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"Plug 'mattia72/vim-ripgrep' 

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
set shiftwidth=2
" UI:
set ruler
set noswapfile
set wrap!
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

" Nerdtree:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <C-n> :NERDTreeToggle<CR>

" FZF 
nmap <C-Space> :FZF<CR>

" GitGutter
set updatetime=250

hi FloatermNF guibg=black
hi FloatermBorderNF guibg=gray guifg=blue
autocmd User Startified setlocal buflisted

" vimgrep
set wildignore=*/node_modules/*,*/target/*,*/tmp/*,*/coverage/*,*/**.log

let g:gutentags_cache_dir = expand('~/.cache/tags')

