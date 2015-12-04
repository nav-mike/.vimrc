set nocompatible
filetype off

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
"map :cp
"map :cn

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

set cf " Enable error files & error jumping
set clipboard+=unnamed " Yanks go on clipboard instead
set history=256 " Number of things to remember in history
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nowrap " Line wrapping off
set timeoutlen=250 " Time to wait after ESC (default causes an annoying delay)

" Formatting (some these are for coding in C and C++)
set ts=2 " Tabs are 2 spaces
set bs=2 " Backspace over everything in insert mode
set shiftwidth=2 " tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch " Show matching brackets
set mat=5 " Bracket blinking
set list
set noerrorbells " No noise
set laststatus=2 " Always show status line

set t_Co=256

" copy/paste via Ctrl+C/Ctrl+V
vmap <C-C> "+yi
vmap <C-V> "+gPi

set mousehide " Hide mouse while typing
set mouse=a " Turn on mouse support
set novisualbell " No blink
set showtabline=0
set foldcolumn=1 " + for code blocks

" disable .swp
set nobackup
set noswapfile

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'jistr/vim-nerdtree-tabs'
Bundle 'slim-template/vim-slim.git'
Bundle 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'amiorin/vim-project'

" comment code
Plugin 'scrooloose/nerdcommenter'

" show git diff
Plugin 'airblade/vim-gitgutter'

Plugin 'sandeepravi/refactor-rails.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
syntax enable
colorscheme anderson
filetype plugin indent on
autocmd VimEnter * NERDTree

:set number

" tabs
:set tabstop=2
:set shiftwidth=2
:set expandtab
