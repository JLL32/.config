
"     /$$$$$ /$$       /$$ /$$
"    |__  $$| $$      | $$| $/
"       | $$| $$      | $$|_/     /$$$$$$$
"       | $$| $$      | $$       /$$_____/
"  /$$  | $$| $$      | $$      |  $$$$$$
" | $$  | $$| $$      | $$       \____  $$
" |  $$$$$$/| $$$$$$$$| $$$$$$$$ /$$$$$$$/
"  \______/ |________/|________/|_______/
"                       /$$
"                      |__/
"  /$$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$
" | $$__  $$|  $$  /$$/| $$| $$_  $$_  $$
" | $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$
" | $$  | $$  \  $$$/  | $$| $$ | $$ | $$
" | $$  | $$   \  $/   | $$| $$ | $$ | $$
" |__/  |__/    \_/    |__/|__/ |__/ |__/
"                                 /$$$$$$  /$$
"                                /$$__  $$|__/
"   /$$$$$$$  /$$$$$$  /$$$$$$$ | $$  \__/ /$$  /$$$$$$ 
"  /$$_____/ /$$__  $$| $$__  $$| $$$$    | $$ /$$__  $$
" | $$      | $$  \ $$| $$  \ $$| $$_/    | $$| $$  \ $$
" | $$      | $$  | $$| $$  | $$| $$      | $$| $$  | $$
" |  $$$$$$$|  $$$$$$/| $$  | $$| $$      | $$|  $$$$$$$
"  \_______/ \______/ |__/  |__/|__/      |__/ \____  $$
"                                              /$$  \ $$
"                                             |  $$$$$$/
"                                              \______/

" - - - - - - - - - - Plugins - - - - - - - - - -
call plug#begin('~/.vim/plugged')
" Tools
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'itchyny/lightline.vim'
    let g:lightline = {
        \ 'colorscheme': 'gruvbox_material',
        \ }

" Navigation
  Plug 'airblade/vim-rooter'
    let g:rooter_patterns = ['.git']
  Plug 'mhinz/vim-startify'
    let g:webdevicons_enable_startify = 1
  Plug 'unblevable/quick-scope'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Syntax
  Plug 'blackcauldron7/surround.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'RRethy/vim-illuminate'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Appearance
  Plug 'ryanoasis/vim-devicons'
  Plug 'chriskempson/base16-vim'
  Plug 'sainnhe/sonokai'
    let g:sonokai_style = 'maia'
    let g:sonokai_enable_italic = 1
    let g:sonokai_disable_italic_comment = 1
  Plug 'sainnhe/gruvbox-material'
call plug#end()

" - - - - - - - - - - General - - - - - - - - - -
" Essentials
  set shell=/bin/zsh
  set nocompatible
  set ttyfast
  set lazyredraw
  set encoding=UTF-8
  set clipboard+=unnamedplus " Use system clipboard
  filetype plugin indent on  "Enabling Plugin & Indent
  syntax on
  set autoread
  set wildmenu
  set wildmode=longest:full,full
  set spell spelllang=en_us
  set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 noexpandtab
  set splitbelow splitright
  set nobackup nowritebackup
  set noswapfile
  set number relativenumber
  set ignorecase      " Ignore case when searching...
  set smartcase       " ...except when search query contains a capital letter
  set autoread        " Auto load files if they change on disc

" Appearance
  colorscheme gruvbox-material
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_palette = 'mix'
  let g:gruvbox_material_enable_italic = 1
  set background=dark termguicolors
  set colorcolumn=82
  let g:netrw_banner = 0
  set listchars=tab:‣\ ,extends:›,precedes:‹,nbsp:·,trail:␣
  set list

" - - - - - - - - - - Mappings- - - - - - - - - -
" General
  let g:mapleader = " " " Set leader to spacebar
  inoremap jj <ESC>:w<CR>
  map <C-n> :noh<cr>
  map <Leader>w :w<CR>
  map <leader><leader>q :bdelete<CR>

" Splits
  map <C-j> <C-w>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
  nmap <leader>ee :CocCommand explorer<CR>

" Telescope
  nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>

" - - - - - - - - - - CoC- - - - - - - - - -
so ~/.config/nvim/coc.vim

