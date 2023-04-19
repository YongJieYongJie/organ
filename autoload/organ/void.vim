" vim: set ft=vim fdm=indent iskeyword&:

" Void
"
" Initialization of variables

fun! organ#void#config ()
	" Initialize config
	if ! exists('g:organ_config')
		let g:organ_config = {}
	endif
	if ! has_key(g:organ_config, 'prefix')
		let g:organ_config.prefix = '<M-c>'
	endif
endfun
