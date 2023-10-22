let g:lsp_diagnostics_enabled = 0         " disable diagnostics support
let g:lsp_inlay_hints_enabled = 1
let g:lsp_inlay_hints_mode = {
\  'normal': ['!curline'],
\}
let g:lsp_preview_max_width = 80

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

if executable('hdl_checker')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'hdl_checker',
        \ 'cmd': {server_info->['hdl_checker', '--lsp']},
        \ 'whitelist': ['systemverilog', 'vhdl', 'verilog', 'verilog_systemverilog'],
        \ })
endif

if has_key(g:plugs, 'asyncomplete-ale.vim')
    au User asyncomplete_setup call asyncomplete#ale#register_source({
    \ 'name': 'reason',
    \ 'linter': 'flow',
    \ })
endif

if has_key(g:plugs, 'asyncomplete-buffer.vim')
    call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'blocklist': [],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))
endif

if has_key(g:plugs, 'asyncomplete-file.vim')
    call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))
endif

if has_key(g:plugs, 'asyncomplete-tags.vim')
    call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
    \ 'name': 'tags',
    \ 'allowlist': ['c'],
    \ 'completor': function('asyncomplete#sources#tags#completor'),
    \ 'config': {
    \    'max_file_size': 50000000,
    \  },
    \ }))
endif

if has_key(g:plugs, 'asyncomplete-ultisnips.vim')
    "Note: If you are using tab in asyncomplete.vim
    "make sure to change the g:UltiSnipsExpandTrigger
    "to something else besides tab to avoid conflicts.
    let g:UltiSnipsExpandTrigger="<c-e>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('/tmp/vim-lsp.log')
