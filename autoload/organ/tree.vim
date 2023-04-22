" vim: set ft=vim fdm=indent iskeyword&:

" Tree
"
" Operations on orgmode or markdown headings hierarchy

" ---- promote & demote

"  -- current heading only

fun! organ#tree#promote ()
	" Promote heading
	let properties = organ#bird#properties ()
	let linum = properties.linum
	if linum == 0
		echomsg 'organ tree promote heading : headline not found'
		return 0
	endif
	if properties.level == 1
		echomsg 'organ tree promote heading : already at top level'
		return 0
	endif
	let headline = properties.headline
	let headline = headline[1:]
	call setline(linum, headline)
	return linum
endfun

fun! organ#tree#demote ()
	" Demote heading
	let properties = organ#bird#properties ()
	let linum = properties.linum
	if linum == 0
		echomsg 'organ tree demote heading : headline not found'
		return 0
	endif
	let headline = properties.headline
	let filetype = &filetype
	if filetype == 'org'
		let headline = '*' .. headline
	elseif filetype == 'markdown'
		let headline = '#' .. headline
	endif
	call setline(linum, headline)
	normal! zv
	return linum
endfun

" -- subtree

fun! organ#tree#promote_subtree ()
	" Promote subtree
	let section = organ#bird#section ()
	let head_linum = section.head_linum
	if head_linum == 0
		echomsg 'organ tree promote subtree : headline not found'
		return 0
	endif
	let level = section.level
	if level == 1
		echomsg 'organ tree promote subtree : already at top level'
		return 0
	endif
	let tail_linum = section.tail_linum
	while v:true
		let linum = organ#tree#promote ()
		let linum = organ#bird#next ('move')
		if linum >= tail_linum || linum == 0
			call cursor(head_linum, 1)
			return linum
		endif
	endwhile
endfun

fun! organ#tree#demote_subtree ()
	" Demote subtree
	let section = organ#bird#section ()
	let head_linum = section.head_linum
	if head_linum == 0
		echomsg 'organ tree demote subtree : headline not found'
		return 0
	endif
	let tail_linum = section.tail_linum
	while v:true
		let linum = organ#tree#demote ()
		let linum = organ#bird#next ('move')
		if linum >= tail_linum || linum == 0
			call cursor(head_linum, 1)
			return linum
		endif
	endwhile
endfun

" ---- move

" ---- select, yank, delete

fun! organ#tree#select_subtree ()
	" Visually select subtree
	let position = getcurpos ()
	let section = organ#bird#section ()
	let head_linum = section.head_linum
	let tail_linum = section.tail_linum
	execute head_linum .. 'mark <'
	execute tail_linum .. 'mark >'
	normal! gv
	return section
endfun

