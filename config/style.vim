" Display {{{1
" 总是显示状态栏
set laststatus=2

" 总是显示行号
set number

" 总是显示侧边栏（用于显示 mark/gitdiff/诊断信息）
set signcolumn=yes

" 总是显示标签栏
set showtabline=2

" Show the line and column number of the cursor position, separated by a comma.
set ruler

" 设置显示制表符等隐藏字符
set list

" 右下角显示命令
set showcmd

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" Disable auto wrap
set nowrap

" True color {{{1
if has("termguicolors")
    " fix bug for vim
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif

" Plugin: airline {{{1
if has_key(g:plugs, 'vim-airline')
    let g:airline_powerline_fonts = 1
    let g:airline_stl_path_style = 'short'

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = '|'
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = '|'

    let g:airline#extensions#ycm#enabled = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_nr_show = 0
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#xkblayout#enabled = 0
endif

let g:indent_guides_guide_size=1

" theme {{{1
colorscheme nord
let g:nord_uniform_diff_background = 1
let g:nord_underline = 1

" vim:fdm=marker

