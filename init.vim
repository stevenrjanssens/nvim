let mapleader=" "
let maplocalleader=" " 

" Plugins
call plug#begin()

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

Plug 'NLKNguyen/papercolor-theme'

Plug 'mbbill/undotree'

Plug 'tpope/vim-fugitive'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Editor settings
set mouse=
set mousescroll=ver:2,hor:1

set guicursor= " Disable cursor styling

set termguicolors " Needed for PaperColor to work
set background=light
silent! colorscheme PaperColor

set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set number
set relativenumber
set signcolumn=yes

set conceallevel=2

set incsearch
"set nohlsearch

set noswapfile
set nobackup
if has('persistent_undo')
  set undodir=$HOME/.vim/undodir
  set undofile
endif

"set colorcolumn=80

set scrolloff=6

"status bar
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

if has("autocmd")
    filetype plugin indent on
    " gofmt indent with tabs, align with spaces
    autocmd FileType go setlocal noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4
endif

" Key bindings
nnoremap <Esc> <cmd>nohlsearch<cr>

" Quickfix navigation
nnoremap <C-K> <cmd>cnext<cr>zz
nnoremap <C-J> <cmd>cprev<cr>zz
nnoremap <leader>k <cmd>lnext<cr>zz
nnoremap <leader>j <cmd>lprev<cr>zz

" Highlight yanked text
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})
augroup END

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Find files using Telescope command-line sugar.
nnoremap <leader>sf <cmd>Telescope find_files<cr>
nnoremap <leader>sg <cmd>Telescope live_grep<cr>
nnoremap <leader>sh <cmd>Telescope help_tags<cr>
nnoremap <leader>sr <cmd>Telescope resume<cr>
nnoremap <C-P> <cmd>Telescope git_files<cr>
nnoremap <leader><leader> <cmd>Telescope buffers<cr>
nnoremap <leader>/ <cmd>Telescope current_buffer_fuzzy_find<cr>

" Toggle the undo-tree panel
nnoremap <leader>u :UndotreeToggle<CR>

" Fugitive
nnoremap <leader>gs :Git<CR>
