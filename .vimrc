" VIM Config: Aug. 30 2017
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'fremff/vim-css-syntax'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'christoomey/vim-titlecase'
Plugin 'mbbill/undotree'
Plugin 'ARM9/arm-syntax-vim'
"
call vundle#end()
"
"set background=light
set background=dark
colorscheme badwolf
"
:set guifont=Consolas:h11:cANSI
"
let g:NERDTreeWinSize = 20
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
au BufNewFile,BufRead *.s,*.S set filetype=arm ts=8 sw=8 sts=-1 noexpandtab" arm = armv6/7
"
syntax enable
filetype on
filetype plugin on
filetype indent on
"
set number
set rnu
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set cindent
set ruler
set showmatch
set completeopt-=preview
set is
set path+=**
"
inoremap jk <esc>
"au BufNewFile,BufRead *.html set filetype=php
"au BufReadPost *.hbs set syntax=mustache
au BufReadPost *.hbs set syntax=html
"
let python_highlight_all = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:html_indent_inctags = 'html,body,head,tbodyr'
let g:mustache_abbreviations = 1
"
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
"
