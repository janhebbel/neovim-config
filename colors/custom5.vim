hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom5"

" hi! link Function Normal
hi! link @variable Normal
hi! link Identifier Normal
hi! link Operator Normal
hi! link cOperator Statement

" TODO: Visual, Search, IncSearch

hi Normal       guifg=#e0cda4 guibg=#17141c
hi Visual       guifg=#17141c guibg=#c2c2c2
hi Comment      guifg=#969696
hi Statement    guifg=#e09d67 gui=NONE
hi Function     guifg=#70ba99
hi Constant     guifg=#d9b175
hi String       guifg=#d9b175
hi Special      guifg=#a7cfc1
hi Type         guifg=#e09d67
hi CursorLine   guibg=#212121
hi Cursor       guifg=#000000 guibg=#1f9cf0
hi iCursor      guifg=#000000 guibg=#eb3b3b
hi Search       guifg=NONE guibg=#115580
hi CurSearch    guifg=NONE guibg=#732170
hi PreProc      guifg=NONE
hi MatchParen   guifg=NONE guibg=#5e5a85 gui=NONE
hi Statusline   guifg=#e0e0e0 guibg=#554a68 gui=NONE
hi StatuslineNC guifg=#e0e0e0 guibg=#404040
hi Todo         guifg=#ffd54d gui=bold
hi Delimiter    guifg=#c0c0c0 guibg=NONE
hi VertSplit    guifg=#c0c0c0 guibg=#404040
hi WinSeparator guifg=#c0c0c0

" Quickfix
hi QuickFixLine guifg=NONE guibg=#324b5e
hi qfFileName   guifg=#b5dba9 gui=NONE
hi qfLineNr     guifg=#8cba73 gui=NONE
