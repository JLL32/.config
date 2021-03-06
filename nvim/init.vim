
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
" leader, fg  : live grep
" leader, fb  : buffers
" leader, fh  : help tags
" leader, fo  : old files
" leader, fgc : git commits
" leader, fgs : git status
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
        \ 'colorscheme': 'sonokai',
        \ }
  Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
	let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
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
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'chriskempson/base16-vim'
  Plug 'sainnhe/sonokai'
    let g:sonokai_style = 'shusia'
    let g:sonokai_enable_italic = 1
    let g:sonokai_disable_italic_comment = 1
  Plug 'sainnhe/gruvbox-material'
    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_palette = 'mix'
    let g:gruvbox_material_enable_italic = 1
  Plug 'pineapplegiant/spaceduck'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'folke/tokyonight.nvim'
  Plug 'sainnhe/edge'
call plug#end()

" - - - - - - - - - - General - - - - - - - - - -
" Essentials
  set clipboard+=unnamedplus " Use system clipboard
  " set spell spelllang=en_us
  set cindent shiftwidth=4 tabstop=4 softtabstop=4
  set nobackup nowritebackup
  set noswapfile
  set number relativenumber
  set ignorecase      " Ignore case when searching...
  set smartcase       " ...except when search query contains a capital letter
  set splitright splitbelow

" Appearance
  colorscheme sonokai
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
  nnoremap <leader>flg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fo <cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
  nnoremap <leader>fgc <cmd>lua require('telescope.builtin').git_commits()<cr>
  nnoremap <leader>fgs <cmd>lua require('telescope.builtin').git_status()<cr>

" - - - - - - - - - -Tree-Sitter- - - - - - - - - -
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
}
require'nvim-web-devicons'.setup {
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF
" - - - - - - - - - - CoC- - - - - - - - - -
so ~/.config/nvim/coc.vim

