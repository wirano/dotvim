" copy to system clipboard
vnoremap <Leader>y "+y

" paste from system clipboard
nmap <Leader>p "+p

if has_key(g:plugs, 'vim-which-key')
    if !exists("which_key_map")
        let g:which_key_map = get(g:, 'which_key_map', {})
    endif
endif

" asynctasks {{{1
if has_key(g:plugs, 'asynctasks.vim')
    noremap <silent><F9> :AsyncTask file-run<CR>
    noremap <silent><F10> :AsyncTask run<CR>
    noremap <silent><S-F10> :AsyncTask build<CR>
endif
" }}}

" LeaderF {{{1
if has_key(g:plugs, 'LeaderF')
    let g:Lf_ShortcutF = ''
    let g:Lf_ShortcutB = ''

    nnoremap <leader>ff :<C-u>Leaderf file<CR>
    nnoremap <leader>fe :<C-u>Leaderf filer<CR>
    nnoremap <leader>fb :<C-u>Leaderf buffer<CR>
    nnoremap <leader>fm :<C-u>Leaderf mru<CR>
    nnoremap <leader>fg :<C-u>Leaderf gtags<CR>
    nnoremap <leader>fr :<C-u>Leaderf rg<CR>
    " nnoremap <leader>fw :<C-u>Leaderf window<CR>
    nnoremap <leader>fn :<C-u>Leaderf function<CR>
    nnoremap <leader>ft :<C-u>Leaderf tag<CR>
    nnoremap <leader>fu :<C-u>Leaderf bufTag<CR>
    nnoremap <leader>fs :<C-u>Leaderf self<CR>
    nnoremap <leader>fc :<C-u>Leaderf colorscheme<CR>
    nnoremap <leader>fy :<C-u>Leaderf cmdHistory<CR>
    " nnoremap <leader>fh :<C-u>Leaderf help<CR>
    nnoremap <leader>fj :<C-u>Leaderf jumps<CR>
    nnoremap <leader>fp :<C-u>Leaderf snippet<CR>
    nnoremap <leader>fq :<C-u>Leaderf quickfix<CR>
    nnoremap <leader>fa :<C-u>Leaderf tasks<CR>

    if has_key(g:plugs, 'vim-which-key')
        let g:which_key_map['f'] = {
            \ 'name': '+fuzzy-finder',
            \ ';': [':Leaderf command', 'find-commands'],
            \ 'C': [':Leaderf colorscheme', 'find-colors'],
            \ 'd': [':Leaderf filer', 'show-file-tree'],
            \ 'f': 'find-files',
            \ 'g': [':Leaderf rg', 'grep'],
            \ 'l': [':Leaderf line', 'search-buffer-lines'],
            \ 'm': [':Leaderf marks', 'show-marks'],
            \ 'H': {
            \     'name': '+history',
            \     'c': [':Leaderf cmdHistory', 'show-command-history'],
            \ },
            \ 'h': [':Leaderf help', 'find-help'],
            \ 'o': [':Leaderf bufTag', 'search-buffer-tags'],
            \ 'r': [':Leaderf mru', 'find-recent-files'],
            \ }
    endif
endif
" }}}

" nerdcommenter {{{1
if has_key(g:plugs, 'nerdcommenter')
    if has_key(g:plugs, 'vim-which-key')
        let g:which_key_map.c = {
            \ 'name': '+comments',
            \ 'c': 'comment-lines',
            \ 'n': 'comment-lines-force-nesting',
            \ ' ': 'toggle-comment',
            \ 'm': 'comment-lines-with-block-comment',
            \ 'i': 'toggle-individual-line-comment',
            \ 's': 'comment-lines-documentation-style',
            \ 'y': 'yank-and-comment-lines',
            \ '$': 'comment-to-the-end',
            \ 'A': 'add-comment-to-end-of-line',
            \ 'a': 'switch-comment-delimiters',
            \ 'l': 'comment-left-aligned',
            \ 'b': 'comment-both-side-aligned',
            \ 'u': 'uncomment-lines'
            \ }
    endif
endif
" }}}

" which-key {{{1
if has_key(g:plugs, 'vim-which-key')
    nnoremap <silent> <leader>      :<C-u>WhichKey '\'<CR>
    nnoremap <silent> <localleader> :<C-u>WhichKey '\'<CR>
    vnoremap <silent> <leader>      :<C-u>WhichKeyVisual '\'<CR>
    vnoremap <silent> <localleader> :<C-u>WhichKeyVisual '\'<CR>
endif
" }}}

" YCM {{{1
if has_key(g:plugs, 'YouCompleteMe')
    let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
    let g:ycm_key_list_stop_completion = ['<C-y>']
    let g:ycm_key_invoke_completion = '<C-Space>'
    let g:ycm_confirm_extra_conf = 0
endif
" }}}

if has_key(g:plugs, 'asyncomplete.vim')
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

    imap <c-space> <Plug>(asyncomplete_force_refresh)
    " For Vim 8 (<c-@> corresponds to <c-space>):
    " imap <c-@> <Plug>(asyncomplete_force_refresh)
endif

" vim: fdm=marker
