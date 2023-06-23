call plug#begin()

" plugin manager
Plug 'junegunn/vim-plug'

" input mode switch
Plug 'lilydjwg/fcitx.vim'

" nerd plugin
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'

" edit enhencement
Plug 'hotoo/pangu.vim'
Plug 'tpope/vim-surround'
Plug 'aperezdc/vim-template'
Plug 'SirVer/ultisnips'
Plug 'kshenoy/vim-signature'
Plug 'liuchengxu/vista.vim'
Plug 'mhinz/vim-signify'

" vim-lsp
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-buffer.vim'
" Plug 'prabirshrestha/asyncomplete-tags.vim'
" Plug 'jsit/asyncomplete-user.vim'
" Plug 'mattn/vim-lsp-settings'

" syntax & complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --ts-completer' }
Plug 'dense-analysis/ale'
if has_key(g:plugs, 'vim-lsp')
    Plug 'rhysd/vim-lsp-ale'
endif
Plug 'tbastos/vim-lua'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-python/python-syntax'
Plug 'rust-lang/rust.vim'

" run task
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" mediawiki
Plug 'm-pilia/vim-mediawiki'

" misc
Plug 'liuchengxu/vim-which-key'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'

" style
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'arcticicestudio/nord-vim'

call plug#end()
