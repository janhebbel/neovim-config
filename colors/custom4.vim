hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom4"

" hi! link Function Normal
hi! link @variable Normal
hi! link Identifier Normal
hi! link Operator Normal
hi! link cOperator Statement

" TODO: Visual, Search, IncSearch

hi Normal       guifg=#d0d0d0 guibg=#000000
hi Visual       guifg=NONE guibg=#4d4d4d
hi Comment      guifg=#808080
hi Statement    guifg=#bf88cf gui=NONE
hi Function     guifg=#b5dba9
hi Constant     guifg=#a7b5d6
hi String       guifg=#a7b5d6
hi Special      guifg=#8ca3ed
hi Type         guifg=#9983cc
hi CursorLine   guibg=#212121
hi Cursor       guifg=#000000 guibg=#1f9cf0
hi iCursor      guifg=#000000 guibg=#eb3b3b
hi Search       guifg=NONE guibg=#115580
hi CurSearch    guifg=NONE guibg=#732170
hi PreProc      guifg=NONE
hi MatchParen   guifg=NONE guibg=#115580 gui=NONE
hi Statusline   guifg=#d0d0d0 guibg=#115580 gui=NONE
hi StatuslineNC guifg=#d0d0d0 guibg=#404040
hi Todo         guifg=#202020 guibg=#cdb245
hi Delimiter    guifg=#c0c0c0 guibg=NONE
hi VertSplit    guifg=#c0c0c0 guibg=#404040
hi WinSeparator guifg=#c0c0c0

" Quickfix
hi QuickFixLine guifg=NONE guibg=#324b5e
hi qfFileName   guifg=#b5dba9 gui=NONE
hi qfLineNr     guifg=#8cba73 gui=NONE
