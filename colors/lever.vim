" Vim colorscheme template file
" Author: Gerardo Galindez <gerardo.galindez@gmail.com>
" Maintainer: Gerardo Galindez <gerardo.galindez@gmail.com>
" Notes: To check the meaning of the highlight groups, :help 'highlight'

" --------------------------------
set background=dark
" - or ---------------------------
" set background=light
" --------------------------------

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="lever"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
" jon blow bg #062626, my prev bg: #061c26, #182226, 222222; FG: #ebdcae, old bg: #12181c
" previous cursor color (IncSearch orange): #6bff97, #ffae42
hi Normal          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#cfc09f    guibg=#12181c    gui=NONE
hi Cursor          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#6bff97    gui=NONE
hi CursorLine      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi LineNr          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi CursorLineNR    ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" -----------------
" - Number column -
" -----------------
" hi CursorColumn    ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
" hi FoldColumn      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
" hi SignColumn      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
" hi Folded          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#555555    guibg=NONE    gui=NONE
hi ColorColumn     ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#555555    guibg=NONE    gui=NONE
hi TabLine         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi TabLineFill     ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi TabLineSel      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#82ffa3    guibg=NONE    gui=NONE
hi Search          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=#435968    gui=NONE
hi IncSearch       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#ee799f    gui=NONE
hi CurSearch       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#ee799f    gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#cfc09f    gui=bold
hi StatusLineNC    ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#d8d8d8    guibg=#555555    gui=bold
hi WildMenu        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Question        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Title           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi ModeMsg         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi MoreMsg         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#6bff97    guibg=NONE    gui=NONE
hi Visual          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=#0000ff    gui=NONE
hi VisualNOS       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=#0000ff    gui=NONE
hi NonText         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

hi Todo            ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#ffdb47    guibg=NONE    gui=bold
hi Underlined      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Error           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#e33b51    gui=NONE
hi ErrorMsg        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#e33b51    gui=NONE
hi WarningMsg      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#12181c    guibg=#ffdb47    gui=NONE
hi Ignore          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi SpecialKey      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi String          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE
hi StringDelimiter ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Character       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE
hi Number          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE
hi Boolean         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE
hi Float           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE

hi Identifier      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Function        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Conditional     ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Repeat          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Label           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Operator        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Keyword         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Exception       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Comment         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#4aba4a    guibg=NONE    gui=NONE

" nice yellow: #ffdb47

hi Special         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi SpecialChar     ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#56d6ba    guibg=NONE    gui=NONE
hi Tag             ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi Delimiter       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi SpecialComment  ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#e8ca4f    guibg=NONE    gui=NONE
hi Debug           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Include         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Define          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi Macro           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE
hi PreCondit       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#f0f0f0    guibg=NONE    gui=NONE

hi Type            ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#6bff97    guibg=NONE    gui=NONE
hi StorageClass    ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#6bff97    guibg=NONE    gui=NONE
hi Structure       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#6bff97    guibg=NONE    gui=NONE
hi Typedef         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=#6bff97    guibg=NONE    gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi DiffChange      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi DiffDelete      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi DiffText        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi PmenuSel        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi PmenuSbar       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi PmenuThumb      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi SpellCap        ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi SpellLocal      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi SpellRare       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
