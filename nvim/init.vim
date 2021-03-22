
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
"
" leader            : space
" Ctrl + n          : no highlight
" leader, leader, q : quite buffer
" Ctrl + j/k/l/h    : split navigation
" leader, ee  : coc explorer
" leader, ff  : files
" leader, fg  : git files
" leader, fb  : buffers
" leader, fh  : help tags
" [g          : next diagnostic
" ]g          : previous diagnostic
" gd          : go to definition
" gy          : go to type definition
" gi          : go to implementation
" gr          : go refrences
" leader, f   : format selected
" leader, ac  : code action selected
" leader, qf  : quick fix line
" Ctrl + s    : range selection
" a / i, f    : around / inner function
" a / i, c    : around / inner class/interface/struct
" space, a    : diagnostics
" space, e    : extensions
" space, c    : commands
" space, o    : outline (file symbols)
" space, s    : workspace symbols
" space, j    : default action next
" space, k    : default action prev
" space, p    : resume coc list

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
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

" Syntax
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
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
  set clipboard+=unnamedplus " Use system clipboard
  set spell spelllang=en_us
  set cindent shiftwidth=4 tabstop=4 softtabstop=4
  set nobackup nowritebackup
  set noswapfile
  set relativenumber
  set ignorecase      " Ignore case when searching...
  set smartcase       " ...except when search query contains a capital letter
  set splitright splitbelow

" Appearance
  colorscheme gruvbox-material
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_palette = 'mix'
  let g:gruvbox_material_enable_italic = 1
  set background=dark termguicolors
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

