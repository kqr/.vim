
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="kqrdark"

" Vim colours
hi Normal       ctermfg=NONE ctermbg=NONE
hi Comment      ctermfg=243  ctermbg=NONE
hi Search       ctermfg=0    ctermbg=166
hi IncSearch    ctermfg=0    ctermbg=166
hi StatusLine   ctermfg=243  ctermbg=235
hi StatusLineNC ctermfg=243  ctermbg=NONE
hi String       ctermfg=106  ctermbg=NONE
hi Cursor       ctermfg=NONE ctermbg=NONE
hi CursorColumn ctermfg=NONE ctermbg=NONE
hi CursorLine   ctermfg=NONE ctermbg=235   cterm=NONE
hi Directory    ctermfg=NONE ctermbg=NONE
hi DiffAdd      ctermfg=NONE ctermbg=NONE
hi DiffChange   ctermfg=NONE ctermbg=NONE
hi DiffDelete   ctermfg=NONE ctermbg=NONE
hi DiffText     ctermfg=NONE ctermbg=NONE
hi ErrorMsg     ctermfg=9    ctermbg=NONE
hi MatchParen   ctermfg=215  ctermbg=NONE cterm=underline
hi ModeMsg      ctermfg=243  ctermbg=235
hi MoreMsg      ctermfg=243  ctermbg=235
hi NonText      ctermfg=243  ctermbg=NONE
hi Question     ctermfg=NONE ctermbg=NONE
hi Title        ctermfg=NONE ctermbg=NONE
hi VertSplit    ctermfg=254  ctermbg=243
hi LineNr       ctermfg=243  ctermbg=235
hi FoldColumn   ctermfg=243  ctermbg=none

" EasyMotion colours:
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" Syntax colours:
hi Boolean      ctermfg=NONE ctermbg=NONE
hi Character    ctermfg=NONE ctermbg=NONE
hi Conditional  ctermfg=208  ctermbg=NONE
hi Constant     ctermfg=NONE ctermbg=NONE
hi Debug        ctermfg=NONE ctermbg=NONE
hi Define       ctermfg=NONE ctermbg=NONE
hi Delimiter    ctermfg=NONE ctermbg=NONE
hi Exception    ctermfg=208  ctermbg=NONE
hi Float        ctermfg=NONE ctermbg=NONE
hi Function     ctermfg=NONE ctermbg=NONE
hi Identifier   ctermfg=NONE ctermbg=NONE
hi Keyword      ctermfg=208  ctermbg=NONE
hi Label        ctermfg=NONE ctermbg=NONE
hi Macro        ctermfg=NONE ctermbg=NONE
hi Number       ctermfg=NONE ctermbg=NONE
hi Operator     ctermfg=NONE ctermbg=NONE
hi PreCondit    ctermfg=NONE ctermbg=NONE
hi PreProc      ctermfg=NONE ctermbg=NONE
hi Repeat       ctermfg=208  ctermbg=NONE
hi SpecialChar  ctermfg=NONE ctermbg=NONE
hi SpecialComment  ctermfg=NONE ctermbg=NONE
hi Special      ctermfg=NONE ctermbg=NONE
hi SpecialKey   ctermfg=NONE ctermbg=NONE
hi Statement    ctermfg=208  ctermbg=NONE
hi StorageClass ctermfg=NONE ctermbg=NONE
hi Structure    ctermfg=208  ctermbg=NONE
hi Tag          ctermfg=NONE ctermbg=NONE
hi Todo         ctermfg=206  ctermbg=NONE
hi Typedef      ctermfg=208  ctermbg=NONE
hi Type         ctermfg=31   ctermbg=NONE
hi Underlined   ctermfg=NONE ctermbg=NONE
hi VisualNOS    ctermfg=NONE ctermbg=NONE
hi WildMenu     ctermfg=NONE ctermbg=NONE

" Markdown colours
hi markdownH1                 ctermfg=NONE ctermbg=NONE
hi markdownH2                 ctermfg=NONE ctermbg=NONE
hi markdownH3                 ctermfg=NONE ctermbg=NONE
hi markdownH4                 ctermfg=NONE ctermbg=NONE
hi markdownH5                 ctermfg=NONE ctermbg=NONE
hi markdownH6                 ctermfg=NONE ctermbg=NONE
hi markdownHeadingRule        ctermfg=208  ctermbg=NONE
hi markdownHeadingDelimiter   ctermfg=208  ctermbg=NONE
hi markdownOrderedListMarker  ctermfg=208  ctermbg=NONE
hi markdownListMarker         ctermfg=208  ctermbg=NONE
hi markdownBlockquote         ctermfg=208  ctermbg=NONE
hi markdownRule               ctermfg=208  ctermbg=NONE

hi markdownLinkText           ctermfg=31   ctermbg=NONE term=underline
hi markdownIdDeclaration      ctermfg=NONE ctermbg=NONE
hi markdownId                 ctermfg=NONE ctermbg=NONE
hi markdownAutomaticLink      ctermfg=31   ctermbg=NONE term=underline
hi markdownUrl                ctermfg=NONE ctermbg=NONE
hi markdownUrlTitle           ctermfg=NONE ctermbg=NONE
hi markdownIdDelimiter        ctermfg=NONE ctermbg=NONE
hi markdownUrlDelimiter       ctermfg=NONE ctermbg=NONE
hi markdownUrlTitleDelimiter  ctermfg=NONE ctermbg=NONE

hi markdownItalic             ctermfg=NONE ctermbg=NONE term=NONE
hi markdownBold               ctermfg=NONE ctermbg=NONE term=NONE
hi markdownBoldItalic         ctermfg=NONE ctermbg=NONE term=NONE
hi markdownCodeDelimiter      ctermfg=NONE ctermbg=NONE term=NONE

hi markdownEscape             ctermfg=106  ctermbg=NONE term=NONE
hi markdownError              ctermfg=NONE ctermbg=NONE term=NONE

