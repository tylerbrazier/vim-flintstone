" High contrast colorscheme for light and dark backgrounds

" $VIMRUNTIME/colors/README.txt
" $VIMRUNTIME/colors/default.vim
" http://www.vim.org/scripts/script.php?script_id=106
" https://github.com/vim/vim/blob/master/src/highlight.c
" https://github.com/neovim/neovim/blob/master/src/nvim/highlight_group.c

" Don't set 'background' here so that highlights can be set when it's changed;
" :help g:colors_name
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = 'flintstone'

" Use color names instead of numbers for cterms because vim can choose
" the correct number based on how many colors the terminal supports.
" :help cterm-colors
" :help group-name
" :help highlight-groups
" To test in 8 color terminal on linux open a virtual console (Ctrl+Alt+F1-6);
" to change the background: setterm -foreground black -background white -store
" Note that neovim always assumes 256 colors (:help tui-colors)
if &background == 'light'
	hi Normal	cterm=NONE		gui=NONE
		\	ctermfg=Black		guifg=#000000
		\	ctermbg=NONE		guibg=NONE

	hi Comment 	cterm=NONE		gui=NONE
		\	ctermfg=DarkGray	guifg=#808080
		\	ctermbg=NONE		guibg=NONE

	hi Visual	cterm=NONE		gui=NONE
		\	ctermfg=NONE		guifg=NONE
		\	ctermbg=Cyan		guibg=#00ffff

	hi Search	cterm=NONE		gui=NONE
		\	ctermfg=Black		guifg=NONE
		\	ctermbg=Yellow		guibg=#ffff00

	hi Added	cterm=NONE		gui=NONE
		\	ctermfg=DarkGreen	guifg=#008000
		\	ctermbg=NONE		guibg=NONE

	hi Changed	cterm=NONE		gui=NONE
		\	ctermfg=DarkBlue	guifg=#0000ff
		\	ctermbg=NONE		guibg=NONE

	hi Removed	cterm=NONE		gui=NONE
		\	ctermfg=DarkRed		guifg=#ff0000
		\	ctermbg=NONE		guibg=NONE

	hi StatusLine	cterm=NONE		gui=NONE
		\	ctermfg=White		guifg=#ffffff
		\	ctermbg=Black		guibg=#000000

	hi StatusLineNC	cterm=NONE		gui=NONE
		\	ctermfg=White		guifg=#ffffff
		\	ctermbg=DarkGray	guibg=#808080
else " dark background
	hi Normal	cterm=NONE		gui=NONE
		\	ctermfg=White		guifg=#ffffff
		\	ctermbg=NONE		guibg=NONE

	hi Comment 	cterm=NONE		gui=NONE
		\	ctermfg=LightGray	guifg=#808080
		\	ctermbg=NONE		guibg=NONE

	hi Visual	cterm=NONE		gui=NONE
		\	ctermfg=NONE		guifg=NONE
		\	ctermbg=DarkBlue	guibg=#0000ff

	hi Search	cterm=NONE		gui=NONE
		\	ctermfg=White		guifg=#ffffff
		\	ctermbg=DarkGreen	guibg=#008000

	hi Added	cterm=NONE		gui=NONE
		\	ctermfg=Green		guifg=#00ff00
		\	ctermbg=NONE		guibg=NONE

	hi Changed	cterm=NONE		gui=NONE
		\	ctermfg=Cyan		guifg=#00ffff
		\	ctermbg=NONE		guibg=NONE

	hi Removed	cterm=NONE		gui=NONE
		\	ctermfg=Red		guifg=#ff0000
		\	ctermbg=NONE		guibg=NONE

	hi StatusLine	cterm=NONE		gui=NONE
		\	ctermfg=Black		guifg=#000000
		\	ctermbg=White		guibg=#ffffff

	hi StatusLineNC	cterm=NONE		gui=NONE
		\	ctermfg=Black		guifg=#ffffff
		\	ctermbg=LightGray	guibg=#808080
endif

hi! link VisualNOS Visual
hi! link QuickFixLine Visual
hi! link IncSearch Search
hi! link CurSearch Search
hi! link Substitute Search
hi! link TabLineSel StatusLine
hi! link TabLine StatusLineNC
hi! link TabLineFill TabLine
