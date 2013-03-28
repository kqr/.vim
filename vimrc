
" ~~~ EDITING BEHAVIOUR ~~~

set nocompatible               " start in vim mode
set encoding=utf-8             " because we're international
set autoindent                 " precisely.
set si                         " smart indent. is it good? is it bad? i don't know
set nostartofline              " try to keep the column while jumping
set tabstop=4 shiftwidth=4     " tabs are four spaces wide
set expandtab                  " and made of spaces
set bs=indent,eol,start        " backspace plows through everything
" smart indent fraks python comments up, no more!
inoremap # X#

" close buffers quickleh
map <F10> :bd!<CR>

au BufRead,BufNewFile *.txt   setfiletype text
au BufRead,BufNewFile *.md    setfiletype text
au BufRead,BufNewFile *.latex setfiletype text
au BufRead,BufNewFile *.tex   setfiletype text
filetype plugin indent on      " Vary editing behaviour based on file type

" -----------------------------------------
" From Shai's Colemak.vim:
" (http://colemak.com/pub/vim/colemak.vim)
"
" shave off a few keystrokes of every vim command
nnoremap ; :
"
" remapping tab to escape and shift tab to tab
nnoremap <silent> <Tab> :nohlsearch<CR>|
vnoremap <Tab> <Esc><Nul>| " <Nul> added to fix select mode problem
inoremap <Tab> <Esc>|
nnoremap <S-Tab> i<Tab><Esc><Right>
vnoremap <S-Tab> >gv|
inoremap <S-Tab> <Tab>|
"
" End Shai
" -----------------------------------------


" ~~~ GRAPHICS ~~~

set t_Co=256               " enable 256 colours
color kqrdark              " a nicer syntax scheme
syntax enable              " syntax highlighting
set laststatus=0           " never show the status bar
set noruler                " and no frickin numbers in the way
set number                 " show line numbers!
set cursorline             " highlight the current line
" don't display tilde characters -- dangerous, doesn't display ANY nontext!!
hi NonText ctermbg=none ctermfg=234


" ~~~ SEARCHING ~~~

set hlsearch               " highlight search results
" dehighlights search results at the press of ,/
nmap <silent> ,/ :nohlsearch<CR>
set incsearch              " jump to first search result automagically


" ~~~ WRAPPING ~~~

set nowrap                 " don't soft wrap lines
" characters to show that the line extends beyond the borders of the window
set list listchars=precedes:<,extends:>


" ~~~ SAVING FILES ~~~

set nobackup               " don't create backup files
set noswapfile             " don't create the swap files


" ~~~ VUNDLE STUFF ~~~
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'git://github.com/gmarik/vundle.git'

" File open thingey:
Bundle 'git://github.com/kien/ctrlp.vim.git'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_files = 200
let g:ctrlp_max_depth = 10

" Double tap to cancel comment on new line
Bundle 'git://github.com/Osse/double-tap.git'