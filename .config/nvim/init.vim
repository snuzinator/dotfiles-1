" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged') " neovim
"call plug#begin('~/.vim/plugged') " vim
"zeal
Plug 'KabbAmine/zeavim.vim', {'on': [
			\	'Zeavim', 'Docset',
			\	'<Plug>Zeavim',
			\	'<Plug>ZVVisSelection',
			\	'<Plug>ZVKeyDocset',
			\	'<Plug>ZVMotion'
			\ ]}
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-haml'
Plug 'thoughtbot/vim-rspec'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug '907th/vim-auto-save'
" ruby

" powerline
Plug 'lokaltog/vim-powerline'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Fonts
Plug 'powerline/fonts'
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'
" colorthems
Plug 'tomasr/molokai'
"Plug 'sickill/vim-monokai'
Plug 'crusoexia/vim-monokai'
" snipets
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" Initialize plugin system
call plug#end()

" zeal path
let g:zv_docsets_dir = '/home/snuz/.local/share/Zeal/Zeal/docsets/'
" zeal nmap
nmap gzz <Plug>Zeavim
vmap gzz <Plug>ZVVisSelection
nmap gZ <Plug>ZVKeyDocset<CR>
nmap gz <Plug>ZVMotion
nmap <leader>z <Plug>ZVKeyDocset
" autosave vim-auto-save
let g:auto_save = 1
let g:auto_save_events = ["TextChanged"]

"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
"imap :!setxkbmap us:!setxkbmap us,ru
"nmap :!setxkbmap us:!setxkbmap us,ru
let g:indentLine_color_term = 239

" Plug 'scrooloose/nerdcommenter'
let g:NERDCustomDelimiters = { 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' } }

"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

let mapleader = ","
" keymappings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-j>"
let g:UltiSnipsJumpForwardTrigger="<s-j>"
let g:UltiSnipsJumpBackwardTrigger="<s-k>"

"let g:UltiSnipsExpandTrigger="<space>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

map <C-n> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
"ignore python
let NERDTreeIgnore = ['\.pyc$', '\.retry$']

map <silent> <leader><leader> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> // :nohlsearch<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

function! WinMove(key)
  let t:curwin =winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
      if (match(a:key,'[jk]'))
        wincmd v
      else
        wincmd s
      endif
     exec "wincmd ".a:key
    endif
endfunction

" vertial column 80
set nowrap " (no)wrap - динамический (не)перенос длинных строк
set autoread " перечитывать изменённые файлы автоматически
set smartindent
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set colorcolumn=80
set listchars=tab:\|\
set list

" Use the Solarized Dark theme
set background=dark
colorscheme monokai
"let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set t_Co=256

"plugins config

let g:neomake_ruby_enabled_makers = ['rubocop']

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
" set cursorline
" Make tabs as wide as two spaces
set expandtab
set tabstop=2
set sw=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
" set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"	set relativenumber
"	au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif