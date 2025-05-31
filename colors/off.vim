" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "off"

hi! link Added Normal
hi! link Changed Normal
hi! link Removed Normal
hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link debugBreakpoint ModeMsg
hi! link debugPC CursorLine

hi! Normal guifg=#ffffff guibg=#202020 gui=none
hi! Visual guifg=#202020 guibg=#ffffff
hi! VisualNC guibg=#3b778f gui=none
hi! Search guibg=#606060 gui=none
hi! IncSearch guifg=#202020 guibg=#ffffff gui=none
hi! VertSplit guifg=#ffffff gui=none
hi! Constant guifg=#ffffff gui=none
hi! Statement guifg=#ffffff gui=none
hi! Type guifg=#ffffff gui=none
hi! PreProc guifg=#ffffff gui=none
hi! Special guifg=#ffffff gui=none
hi! Identifier guifg=#ffffff gui=none
hi! Comment guifg=#00aa43
hi! Todo guifg=goldenrod1 guibg=NONE gui=none
hi! NonText guifg=#70b0ff guibg=#2b2b2b gui=none
hi! StatusLine guifg=#000000 guibg=#ffffff gui=bold
hi! StatusLineNC guifg=#000000 guibg=#b0b0b0 gui=none
