" Colorscheme for light and dark backgrounds, and 8,16,256 color terminals
" TODO gui colors

" $VIMRUNTIME/colors/README.txt
" $VIMRUNTIME/colors/default.vim
" http://www.vim.org/scripts/script.php?script_id=106
"
" Don't reset background here so it can still be set manually in case vim
" doesn't detect the right background (gnome terminal). :help 'bg'
hi clear
if exists('syntax_on')
  syntax reset
endif

let colors_name = 'flintstone'

" Use color names instead of numbers for cterms because vim can choose the
" correct number based on how many colors the terminal supports.
" :help cterm-colors
" :help group-name
" :help highlight-groups
" Default colors are at https://github.com/vim/vim/blob/master/src/syntax.c
if &background == 'light'
  hi Constant ctermfg=DarkBlue
  hi Identifier ctermfg=DarkGreen cterm=NONE
  hi Statement ctermfg=DarkRed cterm=bold
  hi PreProc ctermfg=DarkGreen
  hi Type ctermfg=DarkCyan
  hi Special ctermfg=DarkCyan
  hi Underlined ctermfg=DarkBlue
  hi Todo ctermfg=NONE ctermbg=Yellow
else
  hi Constant ctermfg=Blue
  hi Identifier ctermfg=Green cterm=NONE
  hi Statement ctermfg=Red cterm=bold
  hi PreProc ctermfg=Green
  hi Type ctermfg=Cyan
  hi Special ctermfg=Cyan
  hi Underlined ctermfg=Blue
  hi Todo ctermfg=Yellow ctermbg=NONE cterm=bold
endif

hi Comment ctermfg=DarkGray
hi Search ctermbg=Blue ctermfg=White
hi ErrorMsg ctermfg=Red ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=Red ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=Red ctermbg=NONE cterm=underline
hi SpellRare ctermfg=Blue ctermbg=NONE cterm=underline

hi! link Title Statement
hi! link Folded Comment
hi! link LineNr Comment
hi! link FoldColumn LineNr
hi! link SignColumn LineNr
hi! link CursorLineNr Normal
hi! link ColorColumn Search
hi! link CursorColumn ColorColumn

hi! link IncSearch Search
hi! link MatchParen Search
hi! link Visual Search
hi! link VisualNOS Visual

hi! link TabLine TabLineFill
hi! link WildMenu TabLineSel

hi! link Pmenu TabLine
hi! link PmenuSel TabLineSel
hi! link PmenuSbar Pmenu
hi! link PmenuThumb PmenuSel

hi! link Question Normal
hi! link MoreMsg Question
hi! link Directory Constant

hi! link SpellCap SpellRare
hi! link SpellLocal SpellRare

" for vimdiff
hi DiffAdd ctermfg=Black ctermbg=DarkGreen cterm=NONE
hi DiffChange ctermfg=White ctermbg=DarkBlue cterm=NONE
hi DiffDelete ctermfg=White ctermbg=DarkRed cterm=NONE
hi DiffText ctermfg=Black ctermbg=DarkCyan cterm=NONE

" for patch files and git commits
" https://github.com/vim/vim/blob/master/runtime/syntax/diff.vim
hi! link diffFile Constant
hi! link diffAdded Identifier
hi! link diffRemoved Statement
hi! link diffLine Type
hi! link diffIndexLine Special
hi! link diffChanged Todo
hi! link diffSubname Normal
