hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom2"

set background=light

" hi! link Function Normal
hi! link @variable Normal

hi Normal       guifg=#000000 guibg=#fff2cf
hi Visual       guifg=NONE guibg=#d0d0d0
hi Comment      guifg=#7e7866 gui=NONE
hi Statement    guifg=#115580 gui=bold
hi Function     guifg=NONE
hi String       guifg=#1b574f
hi Special      guifg=#115580
hi Type         guifg=#000000 gui=bold
hi Constant     guifg=#1b574f gui=NONE
hi CursorLine   guibg=#1d1c45
hi Cursor       guifg=#000000 guibg=#1f9cf0
hi iCursor      guifg=#000000 guibg=#eb3b3b
hi Search       guifg=#000000 guibg=#72ab90
hi CurSearch    guifg=#000000 guibg=#fcb63d
hi PreProc      guifg=#782d7d
hi MatchParen   guibg=#ccc1a5 gui=NONE
hi Statusline   guifg=#d0d0d0 guibg=#115580 gui=bold
hi StatuslineNC guifg=#d0d0d0 guibg=#404040
hi VertSplit    guifg=#404040 guibg=#404040
hi WinSeparator guifg=#404040

" Quickfix
hi QuickFixLine guifg=NONE guibg=#c1d2de
hi qfFileName   guifg=#000000 gui=bold
hi qfLineNr     guifg=#000000 gui=bold
