"""""""""""""""""""""""""
" Scott Fairclough - Vim
"""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8

""" Plugins 

call plug#begin()

" Utility stuff
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'

" Generic programming stuff
Plug 'Townk/vim-autoclose'

" Html
Plug 'mattn/emmet-vim'

" .Net
Plug 'Omnisharp/omnisharp-vim'

" Js
Plug 'maksimr/vim-jsbeautify'

" Themes and interface
Plug 'daylerees/colour-schemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

""" End plugins

""""""""""""""""""
" General Config
""""""""""""""""""
" line numbers and window stuff
set number
set ruler
set lines=45 columns=150

" tab stuff
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" current line highlight
set cursorline

" styling
colorscheme halflife
if has('gui_running')
	set guioptions-=T "no toolbar
	set guifont=Hack:h10
endif

" airline stuff
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" neocomplete stuff
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Netrw stuff
let g:netrw_liststyle = 3
let g:netrw_banner = 0

""""""""""""""""""""
" Mappings Config
""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <c-f> :call JsBeautify()<cr>

" shortcuts
nnoremap <Leader>o :CtrlP<CR>
