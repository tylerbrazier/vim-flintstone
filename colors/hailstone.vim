execute 'source' expand('<script>:h')..'/flintstone.vim'

let g:colors_name = 'hailstone'

" :help group-name
" :help highlight-groups
if has('nvim')
	if &background == 'light'
		hi String guifg=#0000ff
		hi Identifier guifg=#0080ff
		hi Function guifg=#0080ff
		hi Special guifg=#0080ff

		hi Directory guifg=#0000ff
		hi Search guibg=NvimLightBlue
		hi QuickFixLine guifg=#0000ff
	elseif &background == 'dark'
		hi String guifg=#00c0ff

		hi Search guibg=NvimDarkBlue
	endif
endif
