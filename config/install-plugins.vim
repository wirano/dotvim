call plug#begin()

" plugin manager
Plug 'junegunn/vim-plug'

" input mode switch
Plug 'lilydjwg/fcitx.vim'

" nerd plugin
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'

" edit enhencement
Plug 'aperezdc/vim-template'
Plug 'SirVer/ultisnips'

" syntax
Plug 'dense-analysis/ale'

" run task
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

" markdown
Plug 'godlygeek/tabular', { 'on': 'Tabularize' } " depended by vim-markdown
Plug 'preservim/vim-markdown', { 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" misc
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " on-demand lazy load

" theme
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()
