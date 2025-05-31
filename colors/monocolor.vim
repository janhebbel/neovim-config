" Vim color file
" Name: monocolor
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "monocolor"

" Define colors based on background setting
if &background == "dark"
  " Dark background colors
  let s:fg = "#bdbdbd"
  let s:bg = "#000000"
  let s:ctermfg = "white"
  let s:ctermbg = "black"
else
  " Light background colors (swapped)
  let s:fg = "#000000"
  let s:bg = "#bdbdbd"
  let s:ctermfg = "black"
  let s:ctermbg = "white"
endif

" Base definitions
execute "hi Normal   guifg=" . s:fg . " guibg=" . s:bg . " ctermfg=" . s:ctermfg . " ctermbg=" . s:ctermbg
execute "hi Error    guifg=#ff0000 guibg=" . s:bg . " ctermfg=red   ctermbg=" . s:ctermbg
execute "hi Ignore   guifg=" . s:bg . " guibg=" . s:bg . " ctermfg=" . s:ctermbg . " ctermbg=" . s:ctermbg
execute "hi Cursor   guifg=#000000 guibg=#00ff00 ctermfg=black ctermbg=green"
execute "hi Visual   guifg=" . s:bg . " guibg=" . s:fg . " ctermfg=" . s:ctermbg . " ctermbg=" . s:ctermfg

" Status line colors
execute "hi StatusLine   guifg=#202020 guibg=#a0a0a0 ctermfg=black    ctermbg=white"
execute "hi StatusLineNC guifg=#a0a0a0 guibg=#202020 ctermfg=darkgray ctermbg=darkgray"

" Comment color (keep blue for both backgrounds, but adjust for readability)
if &background == "dark"
  hi Comment  guifg=#5270cc ctermfg=blue
else
  hi Comment  guifg=#3050aa ctermfg=blue
endif

" Treesitter
hi! link @variable     Normal

" Link everything else to Normal (or Error/Ignore/Visual if appropriate)
hi! link Delimiter     Normal
hi! link Constant      Normal
hi! link Identifier    Normal
hi! link Statement     Normal
hi! link PreProc       Normal
hi! link Type          Normal
hi! link Special       Normal
hi! link Underlined    Normal
hi! link Todo          Normal
hi! link Function      Normal
hi! link String        Normal
hi! link Number        Normal
hi! link Boolean       Normal
hi! link Float         Normal
hi! link Keyword       Normal
hi! link Label         Normal
hi! link Repeat        Normal
hi! link Operator      Normal
hi! link Exception     Normal
hi! link Include       Normal
hi! link Define        Normal
hi! link Macro         Normal
hi! link Title         Normal
hi! link LineNr        Normal
hi! link CursorLineNr  Normal
hi! link SignColumn    Normal
hi! link Directory     Normal
hi! link Folded        Normal
hi! link FoldColumn    Normal
hi! link VertSplit     Normal
hi! link TabLine       Normal
hi! link TabLineSel    Normal
hi! link TabLineFill   Normal
hi! link Search        Visual
hi! link IncSearch     Visual
hi! link DiffAdd       Normal
hi! link DiffChange    Normal
hi! link DiffDelete    Normal
hi! link DiffText      Normal
hi! link Pmenu         Normal
hi! link PmenuSel      Visual
hi! link PmenuSbar     Normal
hi! link PmenuThumb    Normal
hi! link WarningMsg    Error
hi! link ErrorMsg      Error
hi! link ModeMsg       Normal
hi! link MoreMsg       Normal
hi! link Question      Normal
hi! link MatchParen    Visual
hi! link CursorLine    Normal
hi! link CursorColumn  Normal
