
    syntax on

    set wildmenu

    set hidden                       " you can change buffers without saving

    set history=50                   " keep 50 lines of command line history

    set nowrap

    set ignorecase
    set smartcase
    set autoindent                   " always set autoindenting on
    set smartindent

    set laststatus=2
    set expandtab
    set smarttab
    set softtabstop=4
    set shiftwidth=4

    set langmenu=en
    set helplang=en

    set backupdir=$HOME/.vim/backup

    set incsearch                    " do incremental searching
    set gdefault                     " global substitution per default

    set t_Co=256
"    set background=dark
    colorscheme grb256

    set hlsearch
    set ruler                        " show the cursor position all the time
    set showcmd                      " display incomplete commands
    set cursorline
    set number
    set novisualbell
    set scrolloff=10
    set sidescrolloff=10
    set showmatch
    set colorcolumn=120,160

    " Colors
    hi User1 term=inverse,bold cterm=bold ctermbg=darkgreen      ctermfg=white
    hi User2 term=inverse,bold cterm=bold ctermbg=darkmagenta     ctermfg=white
    hi User3 term=inverse,bold cterm=bold ctermbg=cyan     ctermfg=white
    hi User4 term=inverse,bold cterm=bold ctermbg=grey    ctermfg=white
    hi User5 term=inverse,bold cterm=bold ctermbg=red   ctermfg=white
    hi User6 term=inverse,bold cterm=bold ctermbg=darkyellow  ctermfg=white
    hi User7 term=inverse,bold cterm=bold ctermbg=blue ctermfg=white

    set statusline=
    set statusline +=%9*\ %{&ff}\ %*        "file format
    set statusline +=%9*\ %y\ %*            "file type
    set statusline +=%9*\ %<%F\ %*          "full path
    set statusline +=\ %m\                  "modified flag
    set statusline +=%9*%r%*                "read only flag
    set statusline +=%9*\ %=                     "space
    " set statusline +=%7*%=\ pos:%12o\ %*    "current byte position
    set statusline +=%9*\lines:%9l%*       "current line
    set statusline +=%9*/%L\ %*             "total lines
    set statusline +=%9*\ col:%4c\ %*      "column number
    set statusline +=%9*%7P\ %*             "percentage through file
    " set statusline+=\ %{SyntasticStatuslineFlag()}\     " error counts
    set statusline+=%*

    set list
    set listchars=tab:▸\ ,eol:¬,trail:.,nbsp:%

    execute pathogen#infect()
    filetype plugin indent on
    map <C-n> :NERDTreeFocus<CR>
    let NERDTreeShowHidden=1
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'
