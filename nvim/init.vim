
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
" leader, tt  : toggle floaterm
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
  Plug 'hoob3rt/lualine.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
	let g:indent_blankline_char = '│'
	let g:indent_blankline_use_treesitter = v:true
    let g:indent_blankline_show_current_context = v:true
  Plug 'voldikss/vim-floaterm'
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
  Plug 'folke/tokyonight.nvim'
  let g:tokyonight_style = "night"
  let g:tokyonight_italic_functions = 1
  Plug 'Mofiqul/dracula.nvim'
  Plug 'rebelot/kanagawa.nvim'
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
  set splitbelow
  set splitright

" Appearance
  colorscheme tokyonight
  set background=dark termguicolors
  let g:netrw_banner = 0
  set listchars=tab:→\ ,extends:›,precedes:‹,nbsp:·,trail:␣,eol:¬
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

" Floaterm
  nnoremap <leader>tt :FloatermToggle<CR>

" CoC-git
  nmap [c <Plug>(coc-git-prevchunk)
  nmap ]c <Plug>(coc-git-nextchunk)
" - - - - - - - - - -Tree-Sitter- - - - - - - - - -
lua <<EOF
--vim.g.tokyonight_style = "night"
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
vim.g.indent_blankline_context_patterns = {
        "declaration", "expression", "pattern", "primary_expression",
        "statement", "switch_body"
}
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF
"-- neovide
set guifont=VictorMono\ Nerd\ Font:h16
set shell=/goinfre/ael-hach/.brew/bin/fish
" - - - - - - - - - - CoC- - - - - - - - - -
so ~/.config/nvim/coc.vim

