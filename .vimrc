" ----- Vundle -----
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pbondoer/vim-42header'
Plugin 'brookhong/cscope.vim'
Plugin 'sheerun/vim-polyglot'

call vundle#end()            " required
filetype plugin indent on    " required

" ----- Remapping -----

map <C-n> :NERDTreeToggle<CR>

" Cscope
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

" ----- RECHERCHE -----

set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie

" Set list set nolist nice caracteres
set listchars=space:.,tab:▸\ ,eol:¬
set list

" ----- Divers -----
syntax on
set nu
set relativenumber
set nocompatible              " be iMproved, required
set shiftwidth=4
set tabstop=4
set hlsearch
set title			" Met à jour le titre du terminal
set laststatus=2	" Affiche la bar de status
set wildmenu		" Show autocompletion possibles
set background=dark	" Utilise des couleurs adaptees pour fond noir
set showcmd			" Affiche les commandes incompletes
set cc=80			" Change la couleur de fond a 80 colonnes
