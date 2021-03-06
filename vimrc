" ~~~ EDITING BEHAVIOUR ~~~

set nocompatible            " start in vim mode
set encoding=utf-8          " because we're international
set autoindent              " precisely.
set si                      " smart indent. is it good? is it bad? i don't know
set nostartofline           " try to keep the column while jumping
set tabstop=4 shiftwidth=4  " tabs are two spaces wide
set expandtab               " and made of spaces
set bs=indent,eol,start     " backspace plows through everything
" smart indent fraks python comments up, no more!
inoremap # X#


set scrolloff=999

set foldmethod=indent
" All folds OPEN by default
autocmd BufWinEnter * silent! :%foldopen!

" ~~~ PLUGINS ~~~

filetype off                   " required for vundle?
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'

    " File open thingey:
    " depends on ag for indexing files (fast as all heck!)
    Plugin 'git://github.com/kien/ctrlp.vim.git'
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .DS_Store --ignore **/*.pyc -g ""'
    let g:ctrlp_cmd = 'CtrlPRoot'
    let g:ctrlp_by_filename = 0
    let g:ctrlp_match_window_bottom = 0
    let g:ctrlp_match_window_reversed = 0
    let g:ctrlp_max_files = 0
    let g:ctrlp_max_depth = 15

    " EasyMotion
    Plugin 'git://github.com/Lokaltog/vim-easymotion.git'
    let g:EasyMotion_leader_key = '<Leader>'

    " Double tap to cancel comment on new line
    Plugin 'git://github.com/Osse/double-tap.git'

    " surround.vim
    Plugin 'https://github.com/tpope/vim-surround.git'
    let g:surround_116 = "{% trans \"\r\" %}"

    " gutentags keeps the ctags of a gitted project updated
    " requires ctags installed to work!
    Plugin 'https://github.com/ludovicchabant/vim-gutentags'
    let g:gutentags_tagfile = ".tags"

    " Lets you define your own text objects; dependency of
    " django-template-textobjects
    Plugin 'https://github.com/kana/vim-textobj-user'

    " Adds text objects for django templates!
    Plugin 'https://github.com/mjbrownie/django-template-textobjects'

    Plugin 'https://github.com/bkad/CamelCaseMotion'
    noremap W w
    noremap iW iw
    map w <Plug>CamelCaseMotion_w
    map e <Plug>CamelCaseMotion_w
    map b <Plug>CamelCaseMotion_w
    map iw <Plug>CamelCaseMotion_iw

call vundle#end()

filetype plugin indent on      " Vary editing behaviour based on file type
au BufRead,BufNewFile *.clj set filetype=clojure

" shave off a few keystrokes of every vim command
nnoremap ; :
"
" convenient escape in insert mode
inoremap jj <Esc>
"
" remapping tab to escape and shift tab to tab
nnoremap <silent> <Tab> :nohlsearch<CR>|
vnoremap <Tab> <Esc><Nul>| " <Nul> added to fix select mode problem
inoremap <Tab> <Esc>|
nnoremap <S-Tab> i<Tab><Esc><Right>
vnoremap <S-Tab> >gv|
inoremap <S-Tab> <Tab>|
"
" Remap return to insert a new line after the current one
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k
"
" Set leader key to space which is far easier to reach
let mapleader=" "
nnoremap <SPACE> <Nop>


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

let &colorcolumn=join(range(81,999), ",")


" ~~~ SEARCHING ~~~

set hlsearch               " highlight search results
" dehighlights search results at the press of ,/
nmap <silent> ,/ :nohlsearch<CR>
set incsearch              " jump to first search result automagically


" ~~~ WRAPPING ~~~

set nowrap                 " don't soft wrap lines
" characters to show that the line extends beyond the borders of the window
set list listchars=precedes:<,extends:>,tab:›\ 

" ~~~ SAVING FILES ~~~

set nobackup               " don't create backup files
set noswapfile             " don't create the swap files

if isdirectory("xcalibur")
  autocmd BufWritePost *.less :silent !touch `find xcalibur -name "bootstrap.less" | head -1`
endif

