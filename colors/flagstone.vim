execute 'source' expand('<script>:h')..'/flintstone.vim'

let g:colors_name = 'flagstone'

" :help group-name
" :help highlight-groups
if has('nvim')
	if &background == 'light'
		hi String guifg=#0000ff
		hi Identifier guifg=#008000
		hi Function guifg=#ff0000
		hi Special guifg=#0080ff

		hi Directory guifg=#0080ff
		hi QuickFixLine guifg=#0080ff
	elseif &background == 'dark'
		hi String guifg=#00c0ff
		hi Identifier guifg=#80ffc0
		hi Function guifg=#ff4040

		hi Directory guifg=#0080ff
		hi QuickFixLine guifg=#0080ff
	endif
endif
