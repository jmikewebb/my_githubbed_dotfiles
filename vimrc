:syntax on
:set number

:set tabstop=2
:set shiftwidth=2
:set expandtab

:set hlsearch

:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

:colorscheme Dark2
