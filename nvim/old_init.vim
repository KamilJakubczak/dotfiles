syntax on
set encoding=utf-8
set belloff=all

" Plugs

call plug#begin()
Plug 'morhetz/gruvbox'

" Tags
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

Plug 'tmhedberg/SimpylFold'
Plug 'nvie/vim-flake8'
Plug 'andviro/flake8-vim'

Plug 'mbbill/undotree'

Plug 'Yggdroot/indentLine'

Plug 'junegunn/fzf'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

Plug 'vimwiki/vimwiki'

Plug 'dhruvasagar/vim-table-mode'
"JS
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

"set leader key
let mapleader=" "

" Set line numbers
set nu
set relativenumber

" Set not case sensitive search
set ic 

" Set tabs 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Set column
set colorcolumn=80

" Set no wrap
set nowrap

" Turn off highlighting on search
set nohlsearch

" Set system clipboard
set clipboard+=unnamedplus

" Set language spell check
set spelllang=en_gb
hi clear SpellBad
hi SpellBad ctermbg=red
set spell

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden


" Enable folding with the spacebr
nnoremap <space> za

inoremap AA <ESC>A
inoremap ;<cr> <ESC>A;<cr>
inoremap :<cr> <ESC>A:<cr>
inoremap >> <Right>

" Turn off higlighted search
nnoremap nh :noh<cr>
" Replace all is aliased to SS
nnoremap SS :%s//g<Left><Left>               

" Remove trailing white spaces                                                                    
nnoremap <space>dw :%s/\s\+$//e<cr>

" Split navigations  
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <M-j> :bp<cr>
nnoremap <M-k> :bn<cr>
nnoremap <M-d> :bd<cr> 

" Set colors
colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""
"" NERDCommernter settings ""
"""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NEDCompactSexyComs = 1

" :set listchars=space:-
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
nnoremap <leader>cc <C-o>:call NERDComment(0,"toggle")<C-m>
nnoremap <leader>nt :NERDTreeToggle <CR>

"""""""""""""""""""""""""
"" SimplyFold settings ""
"""""""""""""""""""""""""
"Show docstrings on folded area
let g:SimpylFold_docstring_preview=1


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'


"""""
"FZF"
"""""
nnoremap <leader>p :FZF<cr>
" Set transparent nvim
" hi Normal guibg=NONE ctermbg=NONE

nnoremap <leader>u :UndotreeToggle <CR>

let g:javascript_plugin_jsdoc = 1
hi clear SpellBad
hi SpellBad cterm=underline
" Set style for gVim
hi SpellBad gui=undercurl
let g:tex_comment_nospell=1

"""""""""
"Vimwiki"
"""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
packloadall
