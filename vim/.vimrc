filetype plugin indent on " enable plugins

" go
"let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" javascript
" Fix files with prettier, and then ESLint.
let g:ale_fixers = ['prettier', 'eslint']
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" As-you-type autocomplete
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

" rust
"let g:ale_linters = {'rust': ['analyzer']}
"let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:rustfmt_autosave = 1

"let g:ale_fixers = { 'typescript': ['prettier', 'eslint'], 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>

" research
set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie

" Maintain undo history between sessions
if !isdirectory($HOME."/.vim/undodir")
	call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undodir=~/.vim/undodir
set undofile 

" Set nice characters
"set listchars=space:.,tab:▸\ ,eol:¬
"set list

" misc
colorscheme desert
syntax on
set nu
"set relativenumber
set ruler
set nocompatible              " be iMproved, required
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
set hlsearch
set title			" Met à jour le titre du terminal
set laststatus=2	" Affiche la bar de status
set wildmenu		" Show autocompletion possibles
"set background=dark	" Utilise des couleurs adaptees pour fond noir
set showcmd			" Affiche les commandes incompletes
"set cc=80			" Change la couleur de fond a 80 colonnes
let g:airline_powerline_fonts = 1

packloadall
silent! helptags ALL
