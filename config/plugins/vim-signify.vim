" git 仓库使用 histogram 算法进行 diff
let g:signify_vcs_cmds = {
        \ 'git': 'git diff --no-color --diff-algorithm=histogram --no-ext-diff -U0 -- %f',
        \}
