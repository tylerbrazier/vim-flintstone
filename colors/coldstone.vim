execute 'source' expand('<script>:h')..'/flintstone.vim'

let g:colors_name = 'coldstone'

if has('nvim')
	if &background == 'light'
		hi String guifg=#0040ff
		hi Search guibg=NvimLightBlue
	elseif &background == 'dark'
		hi String guifg=#00c0ff
		hi Search guibg=NvimDarkBlue
	endif
endif
