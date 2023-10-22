scriptencoding utf-8

try
    packadd! matchit
catch /.*/
    runtime macros/matchit.vim
endtry
runtime vimrc_example.vim

set viminfofile=$XDG_STATE_HOME/vim/viminfo
" Disable netrw may break other feature.
" So just let it respect the XDG base directory specifications.
let g:netrw_home = $XDG_DATA_HOME."/vim"

" Source config {{{1
source $HOME/.vim/config/install-plugins.vim
source $HOME/.vim/config/basic.vim
source $HOME/.vim/config/tabsize.vim
source $HOME/.vim/config/keymap.vim
source $HOME/.vim/config/style.vim

source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/nerdcommenter.vim
source $HOME/.vim/config/plugins/ycm.vim
source $HOME/.vim/config/plugins/ale.vim
source $HOME/.vim/config/plugins/vim-template.vim
source $HOME/.vim/config/plugins/markdown-preview.vim
source $HOME/.vim/config/plugins/leaderf.vim
source $HOME/.vim/config/plugins/which-key.vim
source $HOME/.vim/config/plugins/gutentags.vim
source $HOME/.vim/config/plugins/cpp-enhanced-highlight.vim
source $HOME/.vim/config/plugins/vim-signify.vim
source $HOME/.vim/config/plugins/asyncx.vim
source $HOME/.vim/config/plugins/indentline.vim
source $HOME/.vim/config/plugins/vista.vim
source $HOME/.vim/config/plugins/vim-lsp.vim

" vim: fdm=marker
