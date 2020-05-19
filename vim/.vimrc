filetype plugin indent on " enable plugins

" go
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>

" research
set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undodir

" Set nice characters
"set listchars=space:.,tab:▸\ ,eol:¬
"set list

" misc
syntax on
set nu
set relativenumber
set ruler
set nocompatible              " be iMproved, required
set backspace=indent,eol,start
"set shiftwidth=4
"set tabstop=4
set hlsearch
set title			" Met à jour le titre du terminal
set laststatus=2	" Affiche la bar de status
set wildmenu		" Show autocompletion possibles
set background=dark	" Utilise des couleurs adaptees pour fond noir
set showcmd			" Affiche les commandes incompletes
set cc=80			" Change la couleur de fond a 80 colonnes
