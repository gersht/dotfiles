set nocompatible " disable vi compatibility
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
        \     'windows' : 'make -f make_mingw32.mak',
        \     'cygwin' : 'make -f make_cygwin.mak',
        \     'mac' : 'make -f make_mac.mak',
        \     'unix' : 'make -f make_unix.mak'
        \    }
        \ }

" vundles
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'elentok/mailr.vim'
NeoBundle 'elentok/run.vim'
NeoBundle 'elentok/plaintasks.vim'
NeoBundle 'elentok/alternate-spec.vim'
NeoBundle 'elentok/supertagger'
NeoBundle 'elentok/spec-runner.vim'
NeoBundle 'benmills/vimux'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'danro/rename.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'applescript.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "ervandew/supertab"
NeoBundle "tomtom/tlib_vim"
NeoBundle "SirVer/ultisnips"
"Bundle "snipmate-snippets"
"Bundle "garbas/vim-snipmate"
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'elentok/vim-rails-extra'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'yaml.vim'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'groenewege/vim-less'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'jtratner/vim-flavored-markdown.git'
NeoBundle 'elentok/vim-markdown-folding'
NeoBundle 'vim-scripts/camelcasemotion'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'skwp/greplace.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-repeat'
NeoBundle "nelstrom/vim-visual-star-search"
NeoBundle 'freitass/todo.txt-vim'
NeoBundle 'iandoe/vim-osx-colorpicker'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'airblade/vim-gitgutter'



NeoBundle 'nono/vim-handlebars'

"Bundle 'Shougo/vimshell'
"Bundle 'Shougo/vimproc'
"Bundle 'Shougo/unite.vim'
"Bundle 'h1mesuke/unite-outline'

" text objects:
NeoBundle 'michaeljsmith/vim-indent-object'

" Go language
"Bundle 'jnwhiteh/vim-golang'
"Bundle 'go-vim'

if file_readable(expand("~/.dotlocal/bundles.vim"))
  source ~/.dotlocal/bundles.vim
endif

filetype plugin indent on
