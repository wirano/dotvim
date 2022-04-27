scriptencoding utf-8

try
  packadd! matchit
catch /.*/
  runtime macros/matchit.vim
endtry
runtime vimrc_example.vim

set viminfo+=n~/.vim/viminfo

source $HOME/.vim/config/plugins/airline.vim
source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/nerdcommenter.vim
source $HOME/.vim/config/plugins/ale.vim
source $HOME/.vim/config/plugins/airline.vim
source $HOME/.vim/config/plugins/vim-template.vim

