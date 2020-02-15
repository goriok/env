" Based on https://dougblack.io/words/a-good-vimrc.html

set autochdir

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

nmap <C-]> :cnext<CR>

" Nerdtree:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <C-n> :NERDTreeToggle<CR>

"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

" call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
" call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
" call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
" call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" CtrlP
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" FZF 
nmap <C-p> :FZF<CR>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()
