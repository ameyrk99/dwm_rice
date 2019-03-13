" Name:         cosmic_latte
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
    \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[cosmic_latte] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'cosmic_latte'

if &background ==# 'dark'
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=145 ctermbg=NONE guifg=#abb0c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=145 ctermbg=235 guifg=#abb0c0 guibg=#202a31 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=145 ctermbg=NONE guifg=#abb0c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=246 ctermbg=NONE guifg=#898f9e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=246 ctermbg=NONE guifg=#898f9e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=246 ctermbg=NONE guifg=#898f9e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VisualNOS ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=145 ctermbg=237 guifg=#abb0c0 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=145 ctermbg=235 guifg=#abb0c0 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLine ctermfg=145 ctermbg=235 guifg=#abb0c0 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=145 ctermbg=235 guifg=#abb0c0 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=145 ctermbg=235 guifg=#abb0c0 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=252 ctermbg=235 guifg=#c5cbdb guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=252 ctermbg=240 guifg=#c5cbdb guibg=#4c5764 guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=252 ctermbg=240 guifg=#c5cbdb guibg=#4c5764 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=240 ctermbg=240 guifg=#4c5764 guibg=#4c5764 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=145 ctermbg=145 guifg=#abb0c0 guibg=#abb0c0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#2b3740 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#2b3740 guibg=#2b3740 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=240 ctermbg=240 guifg=#4c5764 guibg=#4c5764 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#c17b8d cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5496bd cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#459d90 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9b85bb cterm=NONE,underline gui=NONE,undercurl
  hi StorageClass ctermfg=139 ctermbg=NONE guifg=#9b85bb guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=139 ctermbg=NONE guifg=#9b85bb guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=139 ctermbg=NONE guifg=#9b85bb guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=139 ctermbg=NONE guifg=#9b85bb guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=139 ctermbg=235 guifg=#9b85bb guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=139 ctermbg=235 guifg=#9b85bb guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Function ctermfg=168 ctermbg=NONE guifg=#c17b8d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=168 ctermbg=NONE guifg=#c17b8d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=168 ctermbg=235 guifg=#c17b8d guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=168 ctermbg=235 guifg=#c17b8d guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=168 ctermbg=235 guifg=#c17b8d guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=168 ctermbg=235 guifg=#c17b8d guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=137 ctermbg=NONE guifg=#b28761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=235 guifg=#b28761 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=137 ctermbg=235 guifg=#b28761 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=137 ctermbg=235 guifg=#b28761 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=107 ctermbg=NONE guifg=#7d9761 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=107 ctermbg=235 guifg=#7d9761 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=107 ctermbg=235 guifg=#7d9761 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=37 ctermbg=NONE guifg=#459d90 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=37 ctermbg=NONE guifg=#459d90 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=37 ctermbg=NONE guifg=#459d90 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=37 ctermbg=NONE guifg=#459d90 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#459d90 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=37 ctermbg=235 guifg=#459d90 guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#5496bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi IncSearch ctermfg=67 ctermbg=235 guifg=#5496bd guibg=#202a31 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has("nvim")
    let g:terminal_color_0 = "#202a31"
    let g:terminal_color_1 = "#c17b8d"
    let g:terminal_color_2 = "#7d9761"
    let g:terminal_color_3 = "#b28761"
    let g:terminal_color_4 = "#5496bd"
    let g:terminal_color_5 = "#9b85bb"
    let g:terminal_color_6 = "#459d90"
    let g:terminal_color_7 = "#abb0c0"
    let g:terminal_color_8 = "#2b3740"
    let g:terminal_color_9 = "#c17b8d"
    let g:terminal_color_10 = "#7d9761"
    let g:terminal_color_11 = "#b28761"
    let g:terminal_color_12 = "#5496bd"
    let g:terminal_color_13 = "#9b85bb"
    let g:terminal_color_14 = "#459d90"
    let g:terminal_color_15 = "#c5cbdb"
  elseif has("terminal")
    let g:terminal_ansi_colors = [
        \ "#202a31",
        \ "#c17b8d",
        \ "#7d9761",
        \ "#b28761",
        \ "#5496bd",
        \ "#9b85bb",
        \ "#459d90",
        \ "#abb0c0",
        \ "#2b3740",
        \ "#c17b8d",
        \ "#7d9761",
        \ "#b28761",
        \ "#5496bd",
        \ "#9b85bb",
        \ "#459d90",
        \ "#c5cbdb"
        \ ]
  endif
  finish
endif

hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=240 ctermbg=NONE guifg=#485a62 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=240 ctermbg=231 guifg=#485a62 guibg=#fff8e7 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=240 ctermbg=NONE guifg=#485a62 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=243 ctermbg=NONE guifg=#63757e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=243 ctermbg=NONE guifg=#63757e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=243 ctermbg=NONE guifg=#63757e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VisualNOS ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=240 ctermbg=254 guifg=#485a62 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=240 ctermbg=231 guifg=#485a62 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=240 ctermbg=231 guifg=#485a62 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=240 ctermbg=231 guifg=#485a62 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=240 ctermbg=231 guifg=#485a62 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=238 ctermbg=231 guifg=#364850 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=238 ctermbg=144 guifg=#364850 guibg=#b1b4a2 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=238 ctermbg=144 guifg=#364850 guibg=#b1b4a2 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=144 ctermbg=144 guifg=#b1b4a2 guibg=#b1b4a2 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=240 ctermbg=240 guifg=#485a62 guibg=#485a62 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=254 guifg=#efe4d2 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#efe4d2 guibg=#efe4d2 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=144 ctermbg=144 guifg=#b1b4a2 guibg=#b1b4a2 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff0056 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0096ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00a6c0 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#de3ffc cterm=NONE,underline gui=NONE,undercurl
hi StorageClass ctermfg=133 ctermbg=NONE guifg=#a154ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=133 ctermbg=NONE guifg=#a154ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=133 ctermbg=NONE guifg=#a154ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=133 ctermbg=NONE guifg=#a154ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=231 guifg=#a154ae guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=231 guifg=#a154ae guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Function ctermfg=131 ctermbg=NONE guifg=#c44756 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=131 ctermbg=NONE guifg=#c44756 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=131 ctermbg=231 guifg=#c44756 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=131 ctermbg=231 guifg=#c44756 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=131 ctermbg=231 guifg=#c44756 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=131 ctermbg=231 guifg=#c44756 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#916d03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=231 guifg=#916d03 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=231 guifg=#916d03 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=222 ctermbg=238 guifg=#f6c967 guibg=#364850 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#1f8332 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=231 guifg=#1f8332 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=231 guifg=#1f8332 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#007f8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#007f8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#007f8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#007f8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#007f8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=30 ctermbg=231 guifg=#007f8a guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#0075c9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=32 ctermbg=231 guifg=#0075c9 guibg=#fff8e7 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has("nvim")
  let g:terminal_color_0 = "#fff8e7"
  let g:terminal_color_1 = "#c44756"
  let g:terminal_color_2 = "#1f8332"
  let g:terminal_color_3 = "#916d03"
  let g:terminal_color_4 = "#0075c9"
  let g:terminal_color_5 = "#a154ae"
  let g:terminal_color_6 = "#007f8a"
  let g:terminal_color_7 = "#485a62"
  let g:terminal_color_8 = "#efe4d2"
  let g:terminal_color_9 = "#c44756"
  let g:terminal_color_10 = "#1f8332"
  let g:terminal_color_11 = "#916d03"
  let g:terminal_color_12 = "#0075c9"
  let g:terminal_color_13 = "#a154ae"
  let g:terminal_color_14 = "#007f8a"
  let g:terminal_color_15 = "#364850"
elseif has("terminal")
  let g:terminal_ansi_colors = [
      \ "#fff8e7",
      \ "#c44756",
      \ "#1f8332",
      \ "#916d03",
      \ "#0075c9",
      \ "#a154ae",
      \ "#007f8a",
      \ "#485a62",
      \ "#efe4d2",
      \ "#c44756",
      \ "#1f8332",
      \ "#916d03",
      \ "#0075c9",
      \ "#a154ae",
      \ "#007f8a",
      \ "#364850"
      \ ]
endif
finish

" Background: light
" Color:      gry0 #fff8e7 ~
" Color:      gry1 #efe4d2 ~
" Color:      gry2 #63757e ~
" Color:      gry3 #485a62 ~
" Color:      gryc #364850 ~
" Color:      srch #f6c967 ~
" Color:      grys #364850 ~
" Color:      gryp #b1b4a2 ~
" Color:      sprd #ff0056 ~
" Color:      spbl #0096ff ~
" Color:      spcy #00a6c0 ~
" Color:      spmg #de3ffc ~
" Color:      red_ #c44756 ~
" Color:      gold #916d03 ~
" Color:      gren #1f8332 ~
" Color:      cyan #007f8a ~
" Color:      blue #0075c9 ~
" Color:      mgnt #a154ae ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         gry3   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" SignColumn         gry3   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          gry3   gry1
" WildMenu           gry3   gry1
" PmenuSel           gry3   gry0   reverse
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" Cursor             gryc   gry0   reverse
" MatchParen         gryc   gryp
" Visual             gryc   gryp
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" IncSearch          blue   gry0   reverse
" Background: dark
" Color:      gry0 #202a31 ~
" Color:      gry1 #2b3740 ~
" Color:      gry2 #898f9e ~
" Color:      gry3 #abb0c0 ~
" Color:      gryc #c5cbdb ~
" Color:      srch #b28761 ~
" Color:      grys #202a31 ~
" Color:      gryp #4c5764 ~
" Color:      sprd #c17b8d ~
" Color:      spbl #5496bd ~
" Color:      spcy #459d90 ~
" Color:      spmg #9b85bb ~
" Color:      red_ #c17b8d ~
" Color:      gold #b28761 ~
" Color:      gren #7d9761 ~
" Color:      cyan #459d90 ~
" Color:      blue #5496bd ~
" Color:      mgnt #9b85bb ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         gry3   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" SignColumn         gry3   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          gry3   gry1
" WildMenu           gry3   gry1
" PmenuSel           gry3   gry0   reverse
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" Cursor             gryc   gry0   reverse
" MatchParen         gryc   gryp
" Visual             gryc   gryp
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" IncSearch          blue   gry0   reverse
