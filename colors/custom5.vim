hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom5"

hi! link @variable Normal
hi! link Identifier Normal
hi! link Operator Normal
" hi! link Function Normal
hi! link cOperator Statement
hi! link Special Statement
hi! link Type Statement
hi! link String Constant

" TODO: Visual, Search, IncSearch

hi Normal       guifg=#d1d1d1 guibg=#16141c
hi Visual       guifg=NONE guibg=#333e4f
hi Comment      guifg=#cc9e5e
hi Statement    guifg=#87c7b2 gui=NONE
hi Function     guifg=#ad92d1
hi Constant     guifg=#8ab1db
hi CursorLine   guibg=#32384c
hi Cursor       guifg=#000000 guibg=#1f9cf0
hi iCursor      guifg=#000000 guibg=#eb3b3b
hi PreProc      guifg=NONE
hi MatchParen   guifg=NONE guibg=#5e5a85 gui=NONE
hi Todo         guifg=#c2ac65 gui=bold
hi Delimiter    guifg=#b8c1e3 guibg=NONE
hi VertSplit    guifg=#b8c1e3 guibg=#404040
hi WinSeparator guifg=#b8c1e3

" Search
hi Search       guifg=NONE guibg=#6b99d1
hi CurSearch    guifg=NONE guibg=#d6728e

" Status Line
hi Statusline   guifg=#d1d1d1 guibg=#3b3847 gui=NONE
hi StatuslineNC guifg=#adadad guibg=#23202b

" Line Number
hi LineNr       guifg=#655f75 guibg=#1e1c26
hi CursorLineNr guifg=#8a9db5

" Quickfix
hi QuickFixLine guifg=NONE guibg=#32384c
hi qfFileName   guifg=#87c7b2 gui=NONE
hi qfLineNr     guifg=#ad92d1 gui=NONE
