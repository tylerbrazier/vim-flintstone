set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "flintstone"

" https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

" :help group-name
" :help highlight-groups
hi Normal ctermbg=16 ctermfg=255
hi Comment ctermfg=243
hi Constant ctermfg=33
hi Identifier ctermfg=118 cterm=NONE
hi Statement ctermfg=196 cterm=bold
hi PreProc ctermfg=118
hi Type ctermfg=81
hi Special ctermfg=119
hi Todo ctermfg=11 ctermbg=NONE cterm=bold
hi Directory ctermfg=33
hi Title ctermfg=118 cterm=bold
hi MatchParen ctermbg=NONE cterm=underline
hi Folded ctermfg=243 ctermbg=NONE
hi ColorColumn ctermbg=236

hi LineNr ctermfg=250 ctermbg=233
hi VertSplit ctermbg=233 ctermfg=250 cterm=NONE
hi TabLine ctermbg=233
hi TabLineFill cterm=NONE ctermbg=233
hi TabLineSel cterm=bold,underline ctermbg=236
hi StatusLine ctermfg=15 ctermbg=233 cterm=bold
hi StatusLineNC ctermfg=250 ctermbg=233 cterm=NONE
hi WildMenu ctermbg=236 ctermfg=15 cterm=bold,underline

hi ErrorMsg ctermfg=196 ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=166 cterm=bold

hi SpellBad ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=166 ctermbg=NONE cterm=underline
hi! link SpellCap SpellRare
hi! link SpellLocal SpellRare

hi Visual ctermbg=236 ctermfg=NONE
hi! link Search Visual
hi! link IncSearch Search

hi Pmenu ctermbg=233 ctermfg=166
hi PmenuSel ctermbg=236 ctermfg=166
hi! link PmenuSbar Pmenu
hi! link PmenuThumb PmenuSel

" for split vimdiff
hi DiffAdd ctermbg=22 cterm=bold
hi DiffDelete ctermfg=NONE ctermbg=1
hi DiffChange ctermbg=19
hi DiffText ctermbg=18 cterm=bold

" for unified diff (git commit -v)
hi diffAdded ctermfg=118
hi diffRemoved ctermfg=196
hi diffChanged ctermfg=81
hi diffIndexLine ctermfg=33
hi! link diffLine Folded
hi! link diffSubname Folded
