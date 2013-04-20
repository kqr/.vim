

" ~~~ EDITING BEHAVIOUR ~~~

" toggle between auto wrapping and no auto wrapping
nnoremap <F2> :call ToggleAutoWrapping()<CR>{j
function ToggleAutoWrapping()
    if &fo =~ 't' && &fo =~ 'a'
        setlocal fo-=t fo-=a
        setlocal syntax=on
        syntax enable
    else
        setlocal fo+=t fo+=a
        setlocal syntax=off
        normal gqap
    endif
endfunction


" count words quickleh
map <F3> :w !wc -w<CR>


" ~~~ GRAPHICS ~~~

let g:loaded_matchparen=1  " no parentheses highlighting
set tw=79                  " hard wrap lines longer than 79 characters
set nonumber               " don't show line numbers!
set nocursorline           " don't highlight the current line
set foldcolumn=6           " have a left gutter
