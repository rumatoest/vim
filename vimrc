".vimrc Vundle config part

"VUNDLE START
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"PLUGINS
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
"поиск в файле FIXME, TODO и т.п.
Plugin 'fisadev/FixedTaskList.vim'
"автозакрытие тегов HML/XML/и т.п.
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'

"Python mode
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'fs111/pydoc.vim'

"Golang http://blog.gopheracademy.com/vimgo-development-environment/
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"VUNDLE END

"VUNDLE Modules config
let g:airline#extensions#tabline#enabled = 1

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"Go
"Enable goimports to automatically insert import paths instead of gofmt:
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"By default binaries are installed to $GOBIN or $GOPATH/bin. To change it:
"let g:go_bin_path = expand("~/.gotools")
"let g:go_bin_path = "/home/fatih/.mypath"  "or give absolute path


"STANDARD VIM SETTINGS

"Activate auto filetype detection
syntax on
filetype plugin indent on
filetype on
filetype plugin on
syntax enable

" http://stackoverflow.com/questions/58774/how-do-you-paste-multiple-tabbed-lines-into-vi
" set pastetoggle=<F6>    " F6 toggles paste mode
set ignorecase          " Don't care about case...
set smartcase     " ... unless the query contains upper case characters
set autoindent        " Enable automatic indenting for files with ft set
set nowrap        " No fake carriage returns
set showcmd       " Show command in statusline as it's being typed
set showmatch     " Jump to matching bracket
set ruler     " Show row,col %progress through file
set laststatus=2  " Always show filename (2 is always)
set hidden            " Let us move between buffers without writing them.
" Don't :q! or :qa! frivolously!
set softtabstop=4 " Vim sees 4 spaces as a tab
set shiftwidth=4  " < and > uses spaces
set expandtab     " Tabs mutate into spaces
set foldmethod=indent " Default folding
set backspace=indent,eol,start  " Make backspace work like other editors.
" set tabstop=4       " 4-space indents
" set smarttab        " <TAB> width determined by shiftwidth instead of tabstop.  
set fileencoding=utf8
set fileencodings=utf8,cp1251
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type

" http://nvie.com/posts/how-i-boosted-my-vim/
set nobackup            " do not write backup and swap files
set noswapfile




