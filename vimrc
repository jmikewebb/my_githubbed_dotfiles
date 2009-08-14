"# Syntax highlighting
:syntax on
"# Line numbering
:set number

"# Tabs and indention
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set ai
:set smarttab

"# Highlight search results
:set hlsearch

"# Jump to the last opened line of this file
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"# Colorscheme fitting for PHP, C/C++ and Ruby. Oi!
:colorscheme Dark2
