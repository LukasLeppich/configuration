set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/prolog-vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Autocomplete: 
Plugin 'Valloric/YouCompleteMe'

" Sorround 
Plugin 'tpope/vim-surround'

" Git:
" Plugin 'tpope/vim-fugitive'

" File finder
Plugin 'wincent/command-t'

" Comment
Plugin 'scrooloose/nerdcommenter'

" Airline navbar
Plugin 'bling/vim-airline'

" Autocomplete quotes, parens, brackets, etc.
" Plugin 'Raimondi/delimitMate'
Plugin 'jiangmiao/auto-pairs'

" Display indent levels
Plugin 'nathanaelkane/vim-indent-guides'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Restore view
" Plugin 'restore_view.vim'

" File explorer
Plugin 'scrooloose/nerdtree'

" Easy motion
Plugin 'Lokaltog/vim-easymotion'

" Autoformat
Plugin 'Chiel92/vim-autoformat'

" Execute command in vim
Plugin 'oplatek/Conque-Shell'

" Javascript
" Plugin 'marijnh/tern_for_vim'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'pangloss/vim-javascript'
" Plugin 'crusoexia/vim-javascript-lib'
" Plugin 'moll/vim-node'
" Plugin 'walm/jshint.vim'
" Plugin 'geekjuice/vim-mocha'
" Plugin 'heavenshell/vim-jsdoc'

" HTML / CSS 
" Plugin 'groenewege/vim-less'
" Plugin 'tpope/vim-haml'
" Plugin 'Quramy/vim-js-pretty-template'

" Plugin 'skammer/vim-css-color'  
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'matchit.zip' " Extends % for html, ...
" Plugin 'mattn/emmet-vim' " generate html

" Angular
" Plugin 'burnettk/vim-angular'
" Plugin 'matthewsimo/angular-vim-snippets'
" Plugin 'claco/jasmine.vim'

" Go
Plugin 'fatih/vim-go'

" Python
Plugin 'klen/python-mode'

" Latex
Plugin 'lervag/vimtex'

" Typescript
" Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/unite.vim'
" Plugin 'Quramy/tsuquyomi'
" Plugin 'leafgarland/typescript-vim'

" Angular 2
" Plugin 'bdauria/angular-cli.vim'
" Plugin 'mhartington/vim-angular2-snippets'

" Typescript highlight
" Plugin 'HerringtonDarkholme/yats.vim'



" Octave plugin
" Plugin 'vim-scripts/octave.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
filetype indent on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set omnifunc=syntaxcomplete#Complete

" Autoread file changes
set autoread

" Add menu for autocomplete
set wildmenu

" Autocomplete with Ctrl-Space
inoremap <C-Space> <C-x><C-o>

" Always show status bar
set laststatus=2

" Ignore bower and node directories
set wildignore+=node_modules,bower_components

" Syntax
syntax on

" Mapp <leader> to ,
let mapleader = ","

" Gui
colorscheme monokai
set background=dark
" Black background:
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

set number
set splitbelow
set splitright

" Folding
" set foldmethod=syntax
" set foldlevelstart=99
" let javaScript_fold=1         " JavaScript
" au FileType javascript call JavaScriptFold()


" Save with ,s
noremap <Leader>s :update<CR>

" Real up and down, don't skip long lines
map j gj
map k gk

" Scroll ahead 5 lines
set so=5

" Change word and go back to normal mode
" nmap pw :inoremap <lt>Space> <lt>Space><lt>Esc>:iunmap<lt>lt>Space><lt>CR><CR> cw

" <C-c> for new line 
" imap <C-c> <CR><Esc>O

" Tabs
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

" Command-t
map <Leader>t :CommandT<CR>
" map <Leader>b :CommandTBuffer<CR>
let g:CommandTFileScanner = 'ruby'
let g:CommandTTraverseSCM = 'pwd'

" Search
" Make search case insensitive, but become sensitive if an upper case
" character is used.
set ignorecase
set smartcase
nmap <silent> <leader>h :noh<CR>
set hlsearch
" Search wile typing
set incsearch

" Easy motion with space
" let g:EasyMotion_do_mapping = 0 " Disable default mappings"
let g:EasyMotion_smartcase = 1
map <space> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Spellcheck
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
set nospell
nmap <silent> <leader>y :set spell!<CR>

" Check syntax on load
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" Tab handling
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" View handling
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move a line of text using ALT+[jk]
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" https://stackoverflow.com/a/10216459
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeout ttimeoutlen=50

" Snippets
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" Javascript
" let g:used_javascript_libs = 'underscore,angularjs,angularui,angularuirouter,jasmine'

" Syntax check
map <c-f> :Autoformat<cr>

" Execute mocha test
" let g:mocha_js_command = "!NODE_ENV=test mocha --recursive --no-colors {spec}"
" map <Leader>m :call RunCurrentSpecFile()<CR>


" .less files use less syntax
" autocmd BufNewFile,BufRead *.less setlocal ft=less

" Syntax for html5
" let g:syntastic_html_tidy_exec = 'tidy5'

" let g:session_autoload = 'no'

" jsDoc config
" let g:jsdoc_allow_input_prompt = 1

" let g:session_autosave = 'no'

" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''
" autocmd QuickFixCmdPost [^l]* nested cwindow
" autocmd QuickFixCmdPost    l* nested lwindow

" Template formatting in ts files
" autocmd FileType typescript JsPreTmpl html

" Sytax checking ts in status line
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:tsuquyomi_disable_quickfix = 0
" let g:tsuquyomi_shortest_import_path = 1
" let g:tsuquyomi_single_quote_import = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint'] 
" let g:syntastic_aggregating_errors = 1

" disable autocomment in next line
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o


let g:tex_flavor = "latex"

" Set filetype to prolog in .pl files
let g:filetype_pl="prolog"

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"


nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

let g:vimtex_echo_ignore_wait = 1
