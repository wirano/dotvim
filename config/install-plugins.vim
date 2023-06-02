call plug#begin()

" plugin manager
Plug 'junegunn/vim-plug'

" input mode switch
Plug 'lilydjwg/fcitx.vim'

" nerd plugin
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'on': 'NERDTreeToggle'}
Plug 'xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

" edit enhencement
Plug 'hotoo/pangu.vim', { 'for': ['markdown', 'vimwiki', 'text'] }
Plug 'tpope/vim-surround'
Plug 'aperezdc/vim-template'
Plug 'SirVer/ultisnips'

" syntax & complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer --ts-completer'}
Plug 'dense-analysis/ale'
Plug 'tbastos/vim-lua', { 'for': 'lua' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }
Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'bison', 'flex', 'cpp'] }
Plug 'vim-python/python-syntax', { 'for': ['python'] }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" run task
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

" markdown
Plug 'godlygeek/tabular', { 'on': 'Tabularize' } " depended by vim-markdown
Plug 'preservim/vim-markdown', { 'for': ['markdown'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown'] }

" mediawiki
Plug 'm-pilia/vim-mediawiki', { 'for': ['mediawiki'] }

" misc
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " on-demand lazy load
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
