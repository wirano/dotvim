" Disable ALE's own completion, let YCM do it.
let g:ale_completion_enabled = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Set this. Airline will handle the rest.
if has_key(g:plugs, 'vim-airline')
    let g:airline#extensions#ale#enabled = 1
endif

let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0

let g:ale_linters = {
                    \ 'c': ['clangd', 'cppcheck'],
                    \ 'cpp': ['clangd', 'cppcheck'],
                    \ 'go': ['go build', 'gofmt'],
                    \ 'java': ['javac'],
                    \ 'javascript': ['eslint'],
                    \ 'lua': ['luac'],
                    \ 'python': ['flake8', 'pylint'],
                    \ 'rust': ['analyzer'],
                    \ }

" c {{{1
let g:ale_c_build_dir_names = ['build', 'bin', 'cmake-build-debug', 'cmake-build-release', 'cmake-build-debug-esp-idf']
" }}}
