" basic {{{1
" Disable Vi compatible
set nocompatible
" Set Backspace mode
set bs=eol,start,indent
" Auto ident
set autoindent
" Enable C/C++ ident optimize
set cindent
" Disable <ALT> key on Windows, use it in Vim
set winaltkeys=no
" Enable Fn key timeout
set ttimeout
set ttimeoutlen=50
" Display cursor position
set ruler

" Search {{{1
" Ignore case sensitive
set ignorecase
" Ignore case by default, except having upper case
set smartcase
" Highlight matched search
set hlsearch
" Display resluts increasingly
set incsearch

" Encoding {{{1
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1

" Respect ftplugin {{{1
filetype plugin on
filetype indent on

" Syntax {{{1
syntax enable
syntax on

" Folding
set foldenable
" set fdm=indent
set fdm=syntax
set foldlevel=99

" etc {{{1
" Show matched bracket
set showmatch
" Show timeout
set matchtime=2

" Display the last line
set display=lastline

" Enable display directory below
set wildmenu

" Delayed drawing
set lazyredraw

" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
" 或者 Vim 当前目录包含 .tags 文件
set tags=./.tags;,.tags

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac

" Ignore suffixes below when searching and completing {{{1
set suffixes=.bak,~,.o,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

