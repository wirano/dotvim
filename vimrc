scriptencoding utf-8

try
  packadd! matchit
catch /.*/
  runtime macros/matchit.vim
endtry
runtime vimrc_example.vim

set viminfo+=n~/.vim/viminfo

set encoding=utf-8
set et ts=4 sts=4 sw=4
set nu ru ls=2

syntax on
filetype on
filetype plugin on
filetype indent on

colorscheme nord

source $HOME/.vim/config/plugins/airline.vim
source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/nerdcommenter.vim
source $HOME/.vim/config/plugins/ale.vim
source $HOME/.vim/config/plugins/airline.vim
source $HOME/.vim/config/plugins/vim-template.vim

