" disable ycm's diagnostic using ale instead
let g:ycm_show_diagnostics_ui = 0

" disable auto popup
let g:ycm_auto_hover = ''

let g:ycm_min_num_identifier_candidate_chars = 2

" show completion menu when typing inside commments
let g:ycm_complete_in_comments = 1

" collect identifiers from strings and comments
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" collect identifiers from tags files
" only support Exuberant Ctags format. Use Ctags with `--fields=+l`
let g:ycm_collect_identifiers_from_tags_files = 1

" Use keywords from Vim syntax file for the filetype.
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/config/plugins/ycm_extra_conf.py'

" do not use bundled rust toolchain
" https://github.com/ycm-core/YouCompleteMe/issues/4012
let g:ycm_rust_toolchain_root = '/usr/lib/rustup'

" let g:ycm_clangd_binary_path = 'clangd'

" see as:https://zhuanlan.zhihu.com/p/33046090
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }

let g:ycm_goto_buffer_command = 'new-or-existing-tab'

let g:ycm_disable_for_files_larger_than_kb = 2000

" {{{1 ycm white list
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "objc":1,
            \ "objcpp":1,
            \ "python":1,
            \ "java":1,
            \ "javascript":1,
            \ "coffee":1,
            \ "vim":1,
            \ "go":1,
            \ "cs":1,
            \ "lua":1,
            \ "perl":1,
            \ "perl6":1,
            \ "php":1,
            \ "ruby":1,
            \ "rust":1,
            \ "erlang":1,
            \ "asm":1,
            \ "nasm":1,
            \ "masm":1,
            \ "tasm":1,
            \ "asm68k":1,
            \ "asmh8300":1,
            \ "asciidoc":1,
            \ "basic":1,
            \ "vb":1,
            \ "make":1,
            \ "cmake":1,
            \ "html":1,
            \ "css":1,
            \ "less":1,
            \ "json":1,
            \ "cson":1,
            \ "typedscript":1,
            \ "haskell":1,
            \ "lhaskell":1,
            \ "lisp":1,
            \ "scheme":1,
            \ "sdl":1,
            \ "sh":1,
            \ "zsh":1,
            \ "bash":1,
            \ "man":1,
            \ "markdown":1,
            \ "matlab":1,
            \ "maxima":1,
            \ "dosini":1,
            \ "conf":1,
            \ "config":1,
            \ "zimbu":1,
            \ "ps1":1,
            \ }

" vim:fdm=marker

