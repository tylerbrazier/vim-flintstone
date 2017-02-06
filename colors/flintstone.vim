set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "flintstone"

" https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

" :help group-name
" :help highlight-groups
hi Normal ctermbg=16 ctermfg=255 guibg=#000000 guifg=#ffffff
hi Comment ctermfg=243 guifg=#767676
hi Constant ctermfg=33 guifg=#0087ff
hi Identifier ctermfg=118 cterm=NONE guifg=#87ff00
hi Statement ctermfg=196 cterm=bold guifg=#ff0000
hi PreProc ctermfg=118 guifg=#87ff00
hi Type ctermfg=81 guifg=#5fd7ff gui=NONE
hi Special ctermfg=119 guifg=#87ff5f
hi Todo ctermfg=11 ctermbg=NONE cterm=bold gui=bold guibg=NONE guifg=#ffff00
hi Directory ctermfg=33 guifg=#0087ff
hi Title ctermfg=118 cterm=bold guifg=#87ff00
hi MatchParen ctermbg=NONE cterm=underline guibg=NONE gui=underline
hi Folded ctermfg=243 ctermbg=NONE guibg=NONE guifg=#767676
hi ColorColumn ctermbg=233 guibg=#121212

hi LineNr ctermfg=250 ctermbg=234 guifg=#bcbcbc guibg=#1c1c1c
hi VertSplit ctermbg=234 ctermfg=234 cterm=NONE gui=NONE guifg=#1c1c1c guibg=#1c1c1c
hi TabLine ctermbg=234 ctermfg=250 cterm=NONE guibg=#1c1c1c gui=NONE guifg=#bcbcbc
hi TabLineFill cterm=NONE ctermbg=234 gui=NONE guibg=#1c1c1c
hi TabLineSel cterm=bold ctermbg=236 gui=bold guibg=#303030
hi StatusLine ctermfg=15 ctermbg=234 cterm=bold gui=bold guifg=#ffffff guibg=#1c1c1c
hi StatusLineNC ctermfg=250 ctermbg=234 cterm=NONE gui=none guibg=#1c1c1c guifg=#bcbcbc
hi WildMenu ctermbg=236 ctermfg=15 cterm=bold,underline gui=bold,underline guibg=#303030 guifg=#ffffff

hi ErrorMsg ctermfg=196 ctermbg=NONE cterm=bold gui=bold guibg=NONE guifg=#ff0000
hi WarningMsg ctermfg=166 cterm=bold gui=bold guifg=#d75f00

hi SpellBad ctermfg=160 ctermbg=NONE cterm=underline guisp=#d70000
hi SpellRare ctermfg=166 ctermbg=NONE cterm=underline guisp=#d75f00
hi! link SpellCap SpellRare
hi! link SpellLocal SpellRare

hi Visual ctermbg=236 ctermfg=NONE guibg=#303030
hi! link Search Visual
hi! link IncSearch Search

hi Pmenu ctermbg=234 ctermfg=166 guibg=#1c1c1c guifg=#d75f00
hi PmenuSel ctermbg=236 ctermfg=166 guibg=#303030 guifg=#d75f00
hi! link PmenuSbar Pmenu
hi! link PmenuThumb PmenuSel

" for split vimdiff
hi DiffAdd ctermbg=22 cterm=bold gui=bold guifg=#005f00
hi DiffDelete ctermfg=NONE ctermbg=1 gui=NONE guifg=NONE guibg=#800000
hi DiffChange ctermbg=19 guibg=#0000af
hi DiffText ctermbg=18 cterm=bold guibg=#000087

" for unified diff (git commit -v)
hi diffAdded ctermfg=118 guifg=#87ff00
hi diffRemoved ctermfg=196 guifg=#ff0000
hi diffChanged ctermfg=81 guifg=#5fd7ff
hi diffIndexLine ctermfg=33 guifg=#0087ff
hi! link diffLine Folded
hi! link diffSubname Folded
