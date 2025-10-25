" Minor adjustments to the default colorscheme (mainly to increase contrast)

" $VIMRUNTIME/colors/README.txt
" $VIMRUNTIME/colors/default.vim
" http://www.vim.org/scripts/script.php?script_id=106
" https://github.com/vim/vim/blob/master/src/highlight.c
" https://github.com/neovim/neovim/blob/master/src/nvim/highlight_group.c

" Don't set 'background' here so that colorscheme is reloaded when &bg changes
" :help g:colors_name
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = 'flintstone'

if has('vim')
	"TODO maybe one day
elseif has('nvim')
	" neovim will use gui* highlights even for terminals that support it
	" :help termguicolors

	" use the terminal's background color (also allows transparency)
	hi Normal guibg=NONE

	hi StatusLineNC guifg=White guibg=Grey

	" the cursor is on the current one anyways
	hi! link CurSearch Search

	hi! link TabLineSel StatusLine

	if &background == 'light'
		hi StatusLine guifg=White guibg=Black

		" the default NvimLightGrey4 is too dark to see selected text
		hi Visual guibg=NvimLightGrey2

		hi Added guifg=#008000
		hi Removed guifg=#ff0000
	elseif &background == 'dark'
		hi StatusLine guifg=Black guibg=White

		hi Added guifg=#00ff00
		hi Removed guifg=#ff0000
	endif
endif
