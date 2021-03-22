syntax on
set number
set ruler
set colorcolumn=80
set autoindent

set smartindent
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

set list
set listchars=tab:\|_

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\zs\t\+/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
