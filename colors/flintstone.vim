" Colorscheme for light and dark backgrounds, and 8,16,256 color terminals

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
 	hi Constant ctermfg=Blue guifg=#0000ff
 	hi Identifier ctermfg=DarkGreen cterm=NONE guifg=#008000
 	hi Statement ctermfg=Red guifg=#ff0000 gui=NONE
 	hi PreProc ctermfg=DarkGreen guifg=#008000
 	hi Type ctermfg=Red guifg=#ff0000 gui=NONE
 	hi Special ctermfg=Blue guifg=#0000ff
 	hi Underlined ctermfg=Blue guifg=#0000ff
 	hi Todo ctermfg=NONE ctermbg=Yellow guifg=#000000 guibg=#ffff00
 	hi Search ctermfg=Black ctermbg=Cyan guifg=#000000 guibg=#00ffff
else
 	hi Constant ctermfg=Cyan guifg=#00ffff
 	hi Identifier ctermfg=Green cterm=NONE guifg=#00ff00
 	hi Statement ctermfg=Red cterm=bold guifg=#ff0000
 	hi PreProc ctermfg=Green guifg=#00ff00
 	hi Type ctermfg=Red cterm=bold guifg=#ff0000
 	hi Special ctermfg=Cyan guifg=#00ffff
 	hi Underlined ctermfg=Cyan guifg=#00ffff
 	hi Todo ctermfg=Yellow ctermbg=NONE cterm=bold guifg=#ffff00 guibg=NONE gui=bold
 	hi Search ctermfg=White ctermbg=Blue guifg=#ffffff guibg=#0000ff
endif

hi Comment ctermfg=DarkGray guifg=#808080
hi ErrorMsg ctermfg=White ctermbg=Red guifg=#ffffff guibg=#ff0000
hi WarningMsg ctermfg=Black ctermbg=Yellow guifg=#000000 guibg=#ffff00
hi SpellBad ctermfg=Red ctermbg=NONE cterm=underline guisp=#ff0000
hi SpellRare ctermfg=Blue ctermbg=NONE cterm=underline guisp=#0000ff

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

hi! link Pmenu Comment
hi! link PmenuSel Search
hi! link PmenuSbar Pmenu
hi! link PmenuThumb PmenuSel

hi! link Question Normal
hi! link MoreMsg Question
hi! link Directory Constant

hi! link SpellCap SpellRare
hi! link SpellLocal SpellRare

" for patch files and git commits
" https://github.com/vim/vim/blob/master/runtime/syntax/diff.vim
hi diffFile cterm=bold gui=bold
hi diffIndexLine cterm=bold gui=bold
hi diffAdded ctermfg=Green guifg=#00ff00
hi diffRemoved ctermfg=Red guifg=#ff0000
hi diffChanged ctermfg=Yellow guifg=#ffff00
hi diffLine ctermfg=Cyan guifg=#00ffff
hi! link diffSubname Normal

" vim-gitgutter uses the foreground colors of Diff* to determine sign colors
" but I'd rather have the background colored for vimdiff so use reverse here:
hi DiffAdd ctermfg=Green ctermbg=Black cterm=reverse guifg=#00ff00 guibg=#000000 gui=reverse
hi DiffDelete ctermfg=Red ctermbg=White cterm=reverse guifg=#ff0000 guibg=#ffffff gui=reverse
hi DiffChange ctermfg=Yellow ctermbg=Black cterm=reverse guifg=#ffff00 guibg=#000000 gui=reverse
hi DiffText ctermfg=Cyan ctermbg=Black cterm=reverse guifg=#00ffff guibg=#000000 gui=reverse
