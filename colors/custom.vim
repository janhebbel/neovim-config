hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom"

set background=dark

" hi! link Function Normal
hi! link @variable Normal

hi Normal       guifg=#d0d0d0 guibg=#090909
hi Visual       guifg=#000000 guibg=#d0d0d0
hi Comment      guifg=#707070 gui=NONE
hi Statement    guifg=#ffffff gui=bold
hi Function     guifg=#72ab90 " #ab91d9
hi String       guifg=#99b0c9
hi Special      guifg=#7ebfa9
hi Type         guifg=#ffffff gui=bold
hi Constant     guifg=#9bc0c4 gui=NONE
hi CursorLine   guibg=#1d1c45
hi Cursor       guifg=#000000 guibg=#65ed55
hi iCursor      guifg=#000000 guibg=#eb3b3b
hi Search       guifg=#000000 guibg=#72ab90
hi CurSearch    guifg=#000000 guibg=#fcb63d
hi PreProc      guifg=#9e8abf
hi MatchParen   gui=NONE
hi Statusline   guifg=#090909 guibg=#507765 gui=bold
hi StatuslineNC guifg=#d0d0d0 guibg=#404040
hi VertSplit    guifg=#404040 guibg=#404040
hi WinSeparator guifg=#404040
