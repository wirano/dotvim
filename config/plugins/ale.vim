" Disable ALE's own completion, let YCM do it.
let g:ale_completion_enabled = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0

let g:ale_linters = {
			\ 'c': ['gcc', 'cppcheck'],
			\ 'cpp': ['gcc', 'cppcheck'],
			\ 'python': ['flake8', 'pylint'],
			\ 'lua': ['luac'],
			\ 'go': ['go build', 'gofmt'],
			\ 'java': ['javac'],
			\ 'javascript': ['eslint'],
			\ }

