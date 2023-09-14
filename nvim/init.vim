"colorscheme desert
syntax on
set mouse=
set nu
set shiftwidth=4
set tabstop=4
set hlsearch
"
" research
set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie

" Maintain undo history between sessions
if !isdirectory($HOME."/.config/nvim/undodir")
	call mkdir($HOME."/.config/nvim/undodir", "", 0700)
endif
set undodir=~/.config/nvim/undodir
set undofile 

" store the plugins in plugged dir
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'AndrewRadev/diffurcate.vim'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

" #### NerdTree shortcut #####
"nnoremap <leader>n :NERDTreeFocus<CR>

" #### coc.nvim #####

" tab autocomplete
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" updating delay
set updatetime=300

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>g  <Plug>(coc-format-selected)
nmap <leader>g  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,go setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  " Fix on save
 autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
 autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.formatDocument')
" autocmd BufWritePost *.go :silent call CocActionAsync('format')
augroup end

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" colorscheme
lua require('tokyonight-init')
colorscheme tokyonight-night


nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>tc <cmd>NvimTreeCollapse<cr>
nnoremap <leader>tf <cmd>NvimTreeFindFile<cr>
lua require('nvim-tree-init')
lua require('telescope-init')
