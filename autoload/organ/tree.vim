" vim: set ft=vim fdm=indent iskeyword&:

" Tree
"
" Operations on orgmode or markdown hierarchy

" ---- script constants

if ! exists('s:plain_list_line_pattern')
	let s:plain_list_line_pattern = organ#crystal#fetch('plain_list/line_pattern')
	lockvar s:plain_list_line_pattern
endif

" ---- headers

fun! organ#tree#promote_heading ()
	" Promote header
	let level = organ#bird#level ()
	if level <= 1
		echomsg 'organ tree promote header : already at top level'
		return v:false
	endif
	let line = getline('.')
	let line = line[1:]
	call setline('.', line)
	return v:true
endfun

fun! organ#tree#demote_heading ()
	" Demote header
	if ! organ#bird#heading_line ()
		return v:false
	endif
	let line = getline('.')
	let filetype = &filetype
	if filetype == 'org'
		let line = '*' .. line
	elseif filetype == 'markdown'
		let line = '#' .. line
	endif
	call setline('.', line)
	normal! zv
	return v:true
endfun

" ---- list items

fun! organ#tree#promote_list_item ()
	" Promote list item
	let line = getline('.')
	if line =~ '^\s\+\*'
		let line = substitute(line, '*', '+', '')
	elseif line =~ '^\s*+'
		let line = substitute(line, '+', '-', '')
	elseif line =~ '^\s*-'
		let line = substitute(line, '-', '*', '')
	endif
	if line[:1] == '  '
		let line = line[2:]
	endif
	call setline('.', line)
	return v:true
endfun

fun! organ#tree#demote_list_item ()
	" Demote list item
	let line = getline('.')
	if line =~ '^\s*-'
		let line = substitute(line, '-', '+', '')
	elseif line =~ '^\s*+'
		let line = substitute(line, '+', '*', '')
	elseif line =~ '^\s\+\*'
		let line = substitute(line, '*', '-', '')
	endif
	let line = '  ' .. line
	call setline('.', line)
	return v:true
endfun

" ---- generic

fun! organ#tree#promote ()
	" Promote header or list item
	let line = getline('.')
	if line =~ s:plain_list_line_pattern
		call organ#tree#promote_list_item ()
	else
		call organ#tree#promote_heading ()
	endif
endfun

fun! organ#tree#demote ()
	" Demote header or list item
	let line = getline('.')
	if line =~ s:plain_list_line_pattern
		call organ#tree#demote_list_item ()
	else
		call organ#tree#demote_heading ()
	endif
endfun
