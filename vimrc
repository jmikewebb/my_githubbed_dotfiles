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

"# lol colors
:set background=dark
let g:solarized_termcolors=256
colorscheme solarized

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

"# Open Nerdtree function (In dir of opened file)
function OpenNERDTree()
  execute ":NERDTree %"
endfunction

"# Open NERDTree with <ESC>+t
command -nargs=0 OpenNERDTree :call OpenNERDTree()
nmap <ESC>t :OpenNERDTree<CR>

"# Open NERDTree and jump back to edit window.
autocmd VimEnter * OpenNERDTree
autocmd VimEnter * wincmd p

"# NERDTree config.
let NERDTreeShowBookmarks=1
let NERDTreeChristmasTree=1
let NERDTreeWinSize=40

"# Toggle relative line numbering
function ToggleRltvNmbr()
  if(b:rltvnmbrmode == 1)
    execute ":RltvNmbr!"
  else
    execute ":RltvNmbr"
  endif
endfunction

"# Relative line numbering quick keys.
command -nargs=0 ToggleRltvNmbr :call ToggleRltvNmbr()
nmap <ESC>l :ToggleRltvNmbr<CR>
