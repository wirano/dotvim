let g:which_key_use_floating_win = 1
let g:which_key_disable_default_offset = 1

hi! default link WhichKeyFloating QuickDefaultPreview

silent! call which_key#register('\', "g:which_key_map")

" Key map dictionary {{{1
if has_key(g:plugs, 'vim-which-key')
    if !exists("which_key_map")
        let g:which_key_map = get(g:, 'which_key_map', {})
    endif
endif

" Buffer {{{2
let g:which_key_map.b = {
			\ 'name': '+buffer' ,
			\ '1': ['b1'        , 'buffer 1']        ,
			\ '2': ['b2'        , 'buffer 2']        ,
			\ 'd': ['bd'        , 'delete-buffer']   ,
			\ 'f': ['bfirst'    , 'first-buffer']    ,
			\ 'h': ['Startify'  , 'home-buffer']     ,
			\ 'l': ['blast'     , 'last-buffer']     ,
			\ 'n': ['bnext'     , 'next-buffer']     ,
			\ 'p': ['bprevious' , 'previous-buffer'] ,
			\ '?': ['Buffers'   , 'fzf-buffer']      ,
			\ }

" Window {{{2
let g:which_key_map.w = {
			\ 'name': '+window',
			\ 'p': ['<C-w>p', 'jump-previous-window'],
			\ 'h': ['<C-w>h', 'jump-left-window'],
			\ 'j': ['<C-w>j', 'jump-belowing-window'],
			\ 'k': ['<C-w>k', 'jump-aboving-window'],
			\ 'l': ['<C-w>l', 'jump-right-window'],
			\ 'H': ['<C-w>H', 'move-window-to-left'],
			\ 'J': ['<C-w>J', 'move-window-to-bottom'],
			\ 'K': ['<C-w>K', 'move-window-to-top'],
			\ 'L': ['<C-w>L', 'move-window-to-right'],
			\ 'n': ['<C-w>n', 'new-window'],
			\ 'q': ['<C-w>q', 'close-window'],
			\ 'w': ['<C-w>w', 'jump-next-window'],
			\ 'o': ['<C-w>o', 'close-all-other-windows'],
			\ 'v': ['<C-w>v', 'vertically-split-window'],
			\ 's': ['<C-w>s', 'split-window'],
			\ '/': [':Leaderf window', 'search-for-a-window'],
			\ }

" vim: fdm=marker
