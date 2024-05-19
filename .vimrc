" README.md
" ╔╗╔┌─┐┬─┐┌┬┐┬┌─┐   ╔═╗
" ║║║├─┤├┬┘││││└─┐───║╣
" ╝╚╝┴ ┴┴└─┴ ┴┴└─┘   ╚═╝
" Narmis-e Dotfiles for sway-minimal: https://github.com/narmis-e/sway-minimal

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'fehawen/sc.vim'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

syntax on
filetype on
filetype plugin on
filetype indent on

set t_md=
set t_Co=16

scriptencoding utf-8
set encoding=utf-8

set autochdir
set mouse=a
set title
set noshowmode
set autoread
set ruler
set showmatch
set mat=2
set magic
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set nonumber
set lazyredraw
set ffs=unix,dos,mac
set wrap
set pumheight=10
set nobackup
set nowritebackup
set noswapfile
set maxmempattern=20000
set completeopt-=preview
set omnifunc=syntaxcomplete#Complete

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**

set list
set listchars=
set listchars+=tab:│\ ,
set listchars+=trail:•,
set fillchars+=vert:\ ,

inoremap { {}<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

colorscheme sc
let g:airline_theme='term'
let g:airline_powerline_fonts = 1

let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = "•"
let g:NERDTreeDirArrowCollapsible = "•"
let g:NERDTreeWinSize = 31

let g:sc_background_light = 1
let g:sc_highlight_comments_only = 0

map <C-n> :NERDTreeToggle<CR>
map <C-f> :find<Space>
map <C-s> :vert ter<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-h> :ALEHover<CR>
nmap <silent> <C-d> :ALEGoToDefinition<CR>
map <Tab> :noh<CR>
tnoremap <Esc> <C-\><C-n>
map § <Esc>
map! § <C-c>
nnoremap py :!python3 %<CR>

nnoremap   <silent>   <F7>    :FloatermNew cd %:p:h<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
