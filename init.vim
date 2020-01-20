" ----------------------------------------------------------------------------------
"   _____  _                       _   _        _   _                 _             
"  |  __ \(_)                     (_) ( )      | \ | |               (_)            
"  | |  | |_  _____   ____ _ _ __  _  |/ ___   |  \| | ___  _____   ___ _ __ ___    
"  | |  | | |/ _ \ \ / / _` | '_ \| |   / __|  | . ` |/ _ \/ _ \ \ / / | '_ ` _ \   
"  | |__| | | (_) \ V / (_| | | | | |   \__ \  | |\  |  __/ (_) \ V /| | | | | | |  
"  |_____/|_|\___/ \_/ \__,_|_| |_|_|   |___/  |_| \_|\___|\___/ \_/ |_|_| |_| |_|  
"                                                                                   
" ----------------------------------------------------------------------------------



call plug#begin()
  " Snippets
  Plug 'sirver/UltiSnips'

  " Highlight the copied text
  Plug 'machakann/vim-highlightedyank'

  " Surround
  Plug 'tpope/vim-surround'

  " Paste with indentation
  Plug 'sickill/vim-pasta'

  " Autocomplete (, [, {
  Plug 'jiangmiao/auto-pairs'

  " Best behaviour of %
  Plug 'adelarsq/vim-matchit'

  " Repeat plugin actions
  Plug 'tpope/vim-repeat'

  " JS & JSX syntax

  Plug 'pangloss/vim-javascript'

  " Preview markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

  " Colorscheme
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'morhetz/gruvbox'

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()



" -- GENERAL SETTINGS -- {

  " Searching
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

  " Splits and window size
  set splitright
  set splitbelow
  set winwidth=85
  set winheight=45

  " Best undo
  set undofile
  set undodir=/tmp

  " Text and tabs
  set expandtab
  set autoindent
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set textwidth=0
  set wrapmargin=0

  " Line numbers
  set number
  set relativenumber

  set hidden
  set autowrite
  set autoread

  " Disable mouse in all modes
  set mouse=

  " Remove the initial message
  set shortmess=i

  " Split horizontaly on command mode
  set inccommand=split

  " Lists
  set list
  set listchars=tab:▸\ ,eol:¬

  " Cursor blink
  set guicursor=a:blinkon1

  " Leader key
  let mapleader="\<Space>"

  " Colorscheme
  set termguicolors
  set background=dark
  colorscheme gruvbox
" }



" -- KEYMAPS -- {

  " Global keymaps
  noremap <Up>    <Nop>
  noremap <Down>  <Nop>
  noremap <Left>  <Nop>
  noremap <Right> <Nop>

  " Leader keymaps
  nnoremap <Leader>h        <C-w>h
  nnoremap <Leader>j        <C-w>j
  nnoremap <Leader>k        <C-w>k
  nnoremap <Leader>l        <C-w>l
  nnoremap <Leader>o        o<Esc>o
  nnoremap <Leader>i        O<Esc>jo<Esc>k
  nnoremap <Leader>s        :split<Space>
  nnoremap <Leader>v        :vsplit<Space>
  nnoremap <Leader>t        :tabe<Space>
  nnoremap <Leader>q        :q!<CR>
  nnoremap <Leader>n        :!nodejs<Space>
  nnoremap <Leader>w        :x!<CR>
  nnoremap <Leader>0        :source ~/.config/nvim/init.vim<CR>:noh<CR>
  nnoremap <Leader><CR>     :silent ! 
  nnoremap <Leader><Leader> :noh<CR>

  " Normal mode keymaps
  nnoremap j     gj
  nnoremap k     gk
  nnoremap ;     :
  nnoremap :     ;
  nnoremap ç     ^
  nnoremap gU    viwgU
  nnoremap gu    viwgu
  nnoremap <S-h> :tabprevious<CR>
  nnoremap <S-l> :tabnext<CR>
  nnoremap <C-s> :w!<CR>
  nnoremap <C-p> "+p

  " Insert mode keymaps
  inoremap <C-s>  <Esc>:w!<CR>
  inoremap <C-a>  <Home>
  inoremap <C-e>  <End>
  inoremap <A-->  \|

  " Visual mode keymaps
  vnoremap ;     :
  vnoremap :     ;
  vnoremap <C-y> "+y



" -- PLUGINS SETTINGS --

  " Airline
  let g:airline_powerline_fonts = 1
  let g:airline_section_x = 0
  let g:airline_section_y = 0
  let g:airline_section_error = 0
  let g:airline_section_warning = 0
  let g:airline#extensions#branch#enabled = 1
  let g:airline_section_z = airline#section#create_right(["%{line('.')} ☰ "," %{col('.')} :"])

  " Ultisnips
  let g:UltiSnipsEditSplit   = 'vertical'
  let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

  " Lorem ipsum
  let g:loremipsum_words = 20

  " Vim repeat
  silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

  " Markdown preview
  let g:mkdp_auto_start = 1
  let g:mkdp_echo_preview_url = 1
  let g:mkdp_browser = 'firefox'

  " Javascript
  let g:conceallevel = 1

" }
