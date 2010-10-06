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
:set showmatch

"# Highlight search results
:set hlsearch

"# Use CTRL+Space instead of CTRL+P for autocompletion
inoremap <NUL> <C-N>

"# Jump to the last opened line of this file
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"# Colorscheme fitting for PHP, C/C++ and Ruby. Oi!
:set t_Co=256
colorscheme molokai

"# " Status line configuration gotten from: http://rgarciasuarez.free.fr/dotfiles/vimrc and http://github.com/tomasr/dotfiles/blob/master/.vimrc
set ls=2 " Always show status line
if has('statusline')
   function! SetStatusLineStyle()
      if &stl == '' || &stl =~ 'synID'
         let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%{'~'[&pm=='']}%=#%n %l/%L,%c%V "
      else
         let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V "
      endif
   endfunc
   nmap _ds :call SetStatusLineStyle()<CR>
   call SetStatusLineStyle()
   if has('title')
    set titlestring=%t%(\ [%R%M]%)
   endif
endif
