" Defines :Hi command that prints the highlight group of the thing under the
" cursor. It also recursively prints linked groups. Useful when creating a
" colorscheme.

command! Hi :call <sid>Hi(synIDattr(synID(line('.'), col('.'), 1), 'name'))

function! s:Hi(group)
  exec 'hi' a:group
  let output = execute('hi '.a:group)
  if output =~ 'links to'
    call <sid>Hi(split(output)[-1])
  endif
endfunction
