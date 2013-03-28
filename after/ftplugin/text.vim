

" ~~~ EDITING BEHAVIOUR ~~~

" count words quickleh
map <F3> :w !wc -w<CR>


" ~~~ GRAPHICS ~~~

syntax off                 " no syntax highlighting
let g:loaded_matchparen=1  " no parentheses highlighting
set tw=79                  " hard wrap lines longer than 79 characters
set formatoptions=tla      " automatically wrap when editing too
set nonumber               " don't show line numbers!
set nocursorline           " don't highlight the current line
set foldcolumn=6           " have a left gutter
