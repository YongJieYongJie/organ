" vim: set ft=vim fdm=indent iskeyword&:

" Monkey
"
" Navigation on orgmode or markdown lists hierarchy

" ---- script constants

if ! exists('s:list_pattern')
	let s:list_pattern = organ#crystal#fetch('list/pattern')
	lockvar s:list_pattern
endif

if ! exists('s:list_indent')
	let s:list_indent = organ#crystal#fetch('list/indent')
	lockvar s:list_indent
endif

if ! exists('s:indent_length')
	let s:indent_length = organ#crystal#fetch('list/indent/length')
	lockvar s:indent_length
endif

" ---- helpers

fun! organ#monkey#level ()
	" Level of current list item
	let line = getline('.')
	if line !~ s:list_pattern
		echomsg 'organ monkey level : not on a list item list'
		return -1
	endif
	let spaces = repeat(' ', &tabstop)
	let line = substitute(line, '	', spaces, 'g')
	let indent = line->matchstr('^\s*')
	let indnum = len(indent)
	let level = indnum / s:indent_length + 1
	return level
endfun
