let g:Lf_CacheDirectory = $XDG_CACHE_HOME.'/vim'

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.hg', '.git']

let g:Lf_WorkingDirectoryMode = 'Ac'

" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2"}
let g:Lf_StlColorscheme = 'onedark'
let g:Lf_PopupColorscheme = 'onedark'

let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" Specify the number of most recently used files you want LeaderF to record.
let g:Lf_MruMaxFiles = 2048

" Files and directories want to exclude while indexing.
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \ }

" Files you don't want LeaderF to record.
let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']

