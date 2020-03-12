" ----------------------------------------------------------------------------------
"   _____  _                       _   _        _   _                 _             
"  |  __ \(_)                     (_) ( )      | \ | |               (_)            
"  | |  | |_  _____   ____ _ _ __  _  |/ ___   |  \| | ___  _____   ___ _ __ ___    
"  | |  | | |/ _ \ \ / / _` | '_ \| |   / __|  | . ` |/ _ \/ _ \ \ / / | '_ ` _ \   
"  | |__| | | (_) \ V / (_| | | | | |   \__ \  | |\  |  __/ (_) \ V /| | | | | | |  
"  |_____/|_|\___/ \_/ \__,_|_| |_|_|   |___/  |_| \_|\___|\___/ \_/ |_|_| |_| |_|  
"                                                                                   
" ----------------------------------------------------------------------------------



" Plugins: {{{
call plug#begin('~/.config/nvim/plugged')

  " completion manager
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " colorscheme
  Plug 'dracula/vim', { 'as': 'dracula' }

  " preview markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

  " snippets
  Plug 'sirver/UltiSnips'

  " custom statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " icons
  Plug 'ryanoasis/vim-devicons'

  " git status
  Plug 'tpope/vim-fugitive'

  " JS and JSX syntax support
  Plug 'pangloss/vim-javascript'

  " execute shell scripts
  Plug 'diovanii/vim-shex'

  " change surround things
  Plug 'tpope/vim-surround'
call plug#end()
" }}}

" General: {{{

  " coc.nvim
  set nobackup
  set nowritebackup
  set updatetime=300

  " searching
  set magic
  set smartcase
  set ignorecase

  " don't show the current mode
  set noshowmode

  " minimun width and height for window splits
  set winwidth=85
  set winheight=45

  " undo changes even if the file was reopened
  set undofile

  " text and tabs
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set textwidth=0
  set wrapmargin=0

  " show line numbers
  set number
  set relativenumber

  " buffers
  set hidden
  set autowrite
  set splitbelow
  set splitright
  set scrolloff=5

  " disable mouse in all modes
  set mouse=

  " remove the initial message
  set shortmess=I

  " split horizontaly on command mode
  set inccommand=split

  " lists
  set list
  set listchars=tab:▸\ ,eol:¬

  " enable cursor blinking
  set guicursor=a:blinkon1

  " leader key
  let mapleader="\<Space>"

  " local leader key
  let maplocalleader=","

  " colorscheme
  set termguicolors
  colorscheme dracula

" }}}

" Autocommands: {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_help
  autocmd!
  autocmd FileType help setlocal numberwidth=2
  autocmd FileType help setlocal relativenumber
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown onoremap <buffer> ie :<C-u>execute "normal! ?:\r:nohlsearch\rlvt:"<CR>
augroup END

augroup filetype_shellscript
  autocmd!
  autocmd BufNewFile *.sh echo append(0, "#!/usr/bin/env sh")
augroup END
" }}}

" Keymaps: {{{

  " disable arrow keys
  noremap <Up>    <Nop>
  noremap <Down>  <Nop>
  noremap <Left>  <Nop>
  noremap <Right> <Nop>

  " leader keymaps (normal)
  nnoremap <Leader>h        <C-w>h
  nnoremap <Leader>j        <C-w>j
  nnoremap <Leader>k        <C-w>k
  nnoremap <Leader>l        <C-w>l
  nnoremap <Leader>o        o<CR>
  nnoremap <Leader>i        O<Down><Down><Home><CR><Up><Up><Esc>
  nnoremap <Leader>s        :split<Space>
  nnoremap <Leader>v        :vsplit<Space>
  nnoremap <Leader>t        :tabedit<Space>
  nnoremap <Leader>q        :quit!<CR>
  nnoremap <Leader>w        :xit!<CR>
  nnoremap <Leader>m        :MarkdownPreview<CR>
  nnoremap <Leader>-        :tabedit $MYVIMRC<CR>
  nnoremap <Leader>0        :source $MYVIMRC<CR>
  nnoremap <Leader><CR>     :call OpenTerminal()<CR>
  nnoremap <Leader><Leader> :nohlsearch<CR>

  " normal mode keymaps
  nnoremap ;     :
  nnoremap :     ;
  nnoremap ç     ^
  nnoremap q     /
  nnoremap <S-h> :tabprevious<CR>
  nnoremap <S-l> :tabnext<CR>
  nnoremap <C-s> :write!<CR>
  nnoremap <C-p> "+p

  " insert mode keymaps
  inoremap <C-s>  <Esc>:write!<CR>
  inoremap <C-a>  <Home>
  inoremap <C-e>  <End>
  inoremap <C-l>  <Right>
  inoremap <C-h>  <Left>
  inoremap <A-->  \|

  " coc.nvim
  inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  inoremap <silent><expr> <c-space> coc#refresh()

  " visual mode keymaps
  vnoremap ;     :
  vnoremap :     ;
  vnoremap ç     ^
  vnoremap <C-y> "+y

  " command mode keymaps
  cnoremap <A--> \|

  " terminal keymaps
  tnoremap <Leader>c <C-\><C-N>
  tnoremap <Leader>q <C-\><C-N>:quit<CR>

" }}}

" Plugged: {{{

  " airline
  let g:airline_powerline_fonts = 1
  let g:airline_section_error = 0
  let g:airline_section_warning = 0
  let g:airline_section_z = airline#section#create_right([" %{line('.')} ☰ "," %{col('.')} : "])
  let g:airline_extensions = ['branch', 'tabline']
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_tabs = 0
  let g:airline#extensions#tabline#show_tab_count = 0
  let g:airline#extensions#tabline#exclude_preview = 0
  let airline#extensions#tabline#disable_refresh = 0
  let g:airline#extensions#tabline#buffers_label = ""
  let g:airline#extensions#tabline#show_tab_type = 1
  let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c'],
      \ [ 'z' ]
      \ ]

  " coc.nvim
  let g:coc_global_extensions = [
        \ 'coc-emmet',
        \ 'coc-yank',
        \ 'coc-pairs',
        \ 'coc-snippets'
        \ ]

  " ultisnips
  let g:UltiSnipsExpandTrigger = 'F12'
  let g:UltiSnipsEditSplit = 'vertical'
  let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

  " markdown preview
  let g:mkdp_auto_start = 1
  let g:mkdp_auto_close = 1
  let g:mkdp_browser = 'brave'
  let g:mkdp_echo_preview_url = 1

  " vim-shex"
  let g:shex_trigger = "<Leader>r"

" }}}

" Functions: {{{
" open terminal in a quickfix-window
function! OpenTerminal()
  execute "copen 10 | terminal "
  setlocal nonumber
  setlocal norelativenumber
  startinsert
endfunction

" coc.nvim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" }}}
