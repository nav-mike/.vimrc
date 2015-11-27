set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'slim-template/vim-slim.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'gilgigilgil/anderson.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

call vundle#end()

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
