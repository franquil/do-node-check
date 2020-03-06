" https://github.com/junegunn/vim-plug/wiki/tutorial

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ekalinin/dockerfile.vim'
Plug 'stephpy/vim-yaml'
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/molokai'
Plug 'mattn/vim-goimports'
" Plug 'romainl/vim-qf'
" Plug 'blueyed/vim-qf_resize'
call plug#end()

" Settings
" set tab/space
set tabstop=2 shiftwidth=2 expandtab

" automatically save files
set autowrite

" set line number
set number

" add golang syntax support
filetype plugin indent on
syntax on


" set directory for vim-compiler-go
" https://github.com/rjohnsondev/vim-compiler-go
" let g:golang_goroot = '/home/frank/go'

" start NERDTree automatically
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" quit NERDTree if it's the only remain
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" show NERDDTree hidden files and bookmarks
let NERDTreeShowHidden=1

" quickfix wrap
augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

" auto reloading vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" gitgutter settings
let g:gitgutter_highlight_linenrs = 1

" vim-go settings
" use quickfix for go files 
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
" let g:rehash256 = 1
" let g:molokai_original = 1
" colorscheme molokai
