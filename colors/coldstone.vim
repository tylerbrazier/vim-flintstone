execute 'source' expand('<script>:h')..'/flintstone.vim'

let g:colors_name = 'coldstone'

if has('nvim')
	if &background == 'light'
		hi String guifg=#0000ff
		hi Search guibg=NvimLightBlue

		hi Directory guifg=#0000ff
		hi QuickFixLine guifg=#0000ff

		hi Function guifg=#0080ff
		hi Special guifg=#0080ff
		hi Identifier guifg=#0080ff
	elseif &background == 'dark'
		hi String guifg=#00c0ff
		hi Search guibg=NvimDarkBlue
	endif
endif
