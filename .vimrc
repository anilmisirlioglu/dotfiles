call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdtree'
Plug 't9md/vim-choosewin'
Plug 'bling/vim-airline'

call plug#end()

"=====================================================
"=================== CONFIGURATIONS ==================
syntax on

set number
set ruler
set autoindent
set smartindent

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

set encoding=UTF-8

set ttyfast
set mouse=a

set list
set listchars=tab:\|_

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

set splitright
set splitbelow

set colorcolumn=80
highlight ExtraWhitespace ctermbg=0 guibg=lightgrey

" ==================== gruvbox ====================
colorscheme gruvbox
set background=dark

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
let g:gruvbox_contrast_dark = "hard"

" ==================== NERDTree ====================
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeIgnore = ['^node_modules$']

" ==================== Markdown ====================
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['go=go', 'viml=vim', 'bash=sh']
let g:vim_markdown_conceal = 0
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1

" ==================== Misc ====================
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\zs\t\+/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
