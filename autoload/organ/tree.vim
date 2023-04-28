" vim: set ft=vim fdm=indent iskeyword&:

" Tree
"
" Operations on orgmode or markdown headings hierarchy

" ---- script constants

if ! exists('s:field_separ')
	let s:field_separ = organ#crystal#fetch('separator/field')
	lockvar s:field_separ
endif

" ---- new heading

fun! organ#tree#new ()
	" New heading
	let properties = organ#bird#properties ()
	let level = properties.level
	if ['org', 'markdown']->index(&filetype) >= 0
		let line = organ#bird#char()->repeat(level)
	else
		let marker = split(&foldmarker, ',')[0]
		let line = ' ' .. marker .. string(level)
	endif
	let line ..= ' '
	let linelist = [line, '']
	call append('.', linelist)
	let linum = line('.') + 1
	call cursor(linum, 1)
	if ['org', 'markdown']->index(&filetype) >= 0
		"call cursor('.', col('$'))
		startinsert!
	else
		"call cursor('.', 1)
		startinsert
	endif
endfun

" ---- select, yank, delete

fun! organ#tree#select_subtree ()
	" Visually select subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	call cursor(head_linum, 1)
	normal! V
	call cursor(tail_linum, 1)
	return subtree
endfun

fun! organ#tree#yank_subtree ()
	" Visually yank subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	let range = head_linum .. ',' .. tail_linum
	execute range .. 'yank "'
	return subtree
endfun

fun! organ#tree#delete_subtree ()
	" Visually delete subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	let range = head_linum .. ',' .. tail_linum
	execute range .. 'delete "'
	return subtree
endfun

" ---- promote & demote

" -- current heading only

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
	if ['org', 'markdown']->index(&filetype) >= 0
		let headline = headline[1:]
	else
		let marker = split(&foldmarker, ',')[0]
		let level = organ#bird#foldlevel ()
		let old = marker .. level
		let new = marker .. string(level - 1)
		let headline = substitute(headline, old, new, '')
	endif
	call setline(linum, headline)
	if mode() ==# 'i'
		startinsert!
	endif
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
	if ['org', 'markdown']->index(&filetype) >= 0
		let char = organ#bird#char ()
		let headline = char .. headline
	else
		let marker = split(&foldmarker, ',')[0]
		let level = organ#bird#foldlevel ()
		let old = marker .. level
		let new = marker .. string(level + 1)
		let headline = substitute(headline, old, new, '')
	endif
	call setline(linum, headline)
	normal! zv
	if mode() ==# 'i'
		startinsert!
	endif
	return linum
endfun

" -- subtree

fun! organ#tree#promote_subtree ()
	" Promote subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	if head_linum == 0
		echomsg 'organ tree promote subtree : headline not found'
		return 0
	endif
	let level = subtree.level
	if level == 1
		echomsg 'organ tree promote subtree : already at top level'
		return 0
	endif
	let tail_linum = subtree.tail_linum
	while v:true
		let linum = organ#tree#promote ()
		let linum = organ#bird#next ('move', 'dont-wrap')
		if linum >= tail_linum || linum == 0
			call cursor(head_linum, 1)
			return linum
		endif
	endwhile
endfun

fun! organ#tree#demote_subtree ()
	" Demote subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	if head_linum == 0
		echomsg 'organ tree demote subtree : headline not found'
		return 0
	endif
	let tail_linum = subtree.tail_linum
	while v:true
		let linum = organ#tree#demote ()
		let linum = organ#bird#next ('move', 'dont-wrap')
		if linum >= tail_linum || linum == 0
			call cursor(head_linum, 1)
			return linum
		endif
	endwhile
endfun

" ---- move

fun! organ#tree#move_subtree_backward ()
	" Move subtree backward
	let subtree = organ#bird#subtree ('move')
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	let level = subtree.level
	let headline_pattern = organ#bird#level_pattern (1, level)
	let flags = organ#utils#search_flags ('backward', 'dont-move', 'dont-wrap')
	let goal = search(headline_pattern, flags)
	let target = goal - 1
	if goal == 0
		let last_linum = line('$')
		if getline(last_linum) != ''
			call append(last_linum, '')
			let last_linum += 1
		endif
		let target = last_linum
		let spread = tail_linum - head_linum
		let goal = target - spread
	endif
	let range = head_linum .. ',' .. tail_linum
	execute range .. 'move' target
	if getline('$') ==# ''
		$delete
	endif
	call cursor(goal, 1)
	return goal
endfun

fun! organ#tree#move_subtree_forward ()
	" Move subtree forward
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	let level = subtree.level
	let same_pattern = organ#bird#level_pattern (level, level)
	let flags = organ#utils#search_flags ('forward', 'dont-move', 'dont-wrap')
	let same_linum = search(same_pattern, flags)
	if level >= 2
		let level -= 1
		let upper_pattern = organ#bird#level_pattern (level, level)
		let upper_linum = search(upper_pattern, flags)
	else
		let upper_linum = 0
	endif
	if same_linum > 0 && (same_linum < upper_linum || upper_linum == 0)
		call cursor(same_linum, 1)
		let same_subtree = organ#bird#subtree ()
		let target = same_subtree.tail_linum
	elseif upper_linum > 0
		call cursor(upper_linum, 1)
		let headline_pattern = organ#bird#generic_pattern ()
		let target = search(headline_pattern, flags) - 1
		if target == -1
			let target = line('$')
		endif
	else
		let last_linum = line('$')
		if getline(last_linum) != ''
			call append(last_linum, '')
			let tail_linum += 1
		endif
		let goal = 1
		let target = 0
	endif
	let range = head_linum .. ',' .. tail_linum
	execute range .. 'move' target
	if getline('$') ==# ''
		$delete
	endif
	let spread = tail_linum - head_linum
	if target > 1
		let goal = target - spread
	endif
	call cursor(goal, 1)
	return goal
endfun

" ---- move to another subtree path, aka org-refile

fun! organ#tree#moveto ()
	" Move current subtree to another one
	" ---- range of current subtree
	let subtree = organ#bird#subtree ()
	let head_linum = subtree.head_linum
	let tail_linum = subtree.tail_linum
	let range = head_linum .. ',' .. tail_linum
	" ---- find target subtree
	let prompt = 'Move current subtree to : '
	let complete = 'customlist,organ#complete#path_moveto'
	let record = input(prompt, '', complete)
	if empty(record)
		return -1
	endif
	let fields = split(record, s:field_separ)
	let linum = str2nr(fields[0])
	call cursor(linum, 1)
	let subtree = organ#bird#subtree ()
	let target = subtree.tail_linum
	" ---- move
	execute range .. 'move' target
	if target < head_linum
		call cursor(target + 1, 1)
	else
		let spread = tail_linum - head_linum
		let new_place = target - spread
		call cursor(new_place, 1)
	endif
	return target
endfun

" ---- convert org <-> markdown

fun! organ#tree#org2markdown ()
	" Convert org headlines to markdown
	silent! %substitute/^\*\{7}\zs\*/#/g
	silent! %substitute/^\*\{6}\zs\*/#/g
	silent! %substitute/^\*\{5}\zs\*/#/g
	silent! %substitute/^\*\{4}\zs\*/#/g
	silent! %substitute/^\*\{3}\zs\*/#/g
	silent! %substitute/^\*\{2}\zs\*/#/g
	silent! %substitute/^\*\{1}\zs\*/#/g
	silent! %substitute/^\*/#/g
endfun

fun! organ#tree#markdown2org ()
	" Convert markdown headlines to org
	silent! %substitute/^#\{7}\zs#/*/g
	silent! %substitute/^#\{6}\zs#/*/g
	silent! %substitute/^#\{5}\zs#/*/g
	silent! %substitute/^#\{4}\zs#/*/g
	silent! %substitute/^#\{3}\zs#/*/g
	silent! %substitute/^#\{2}\zs#/*/g
	silent! %substitute/^#\{1}\zs#/*/g
	silent! %substitute/^#/*/g
endfun
