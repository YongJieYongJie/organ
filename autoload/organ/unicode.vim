" vim: set ft=vim fdm=indent iskeyword&:

" Unicode
"
" Internal Constants for unicode characters

" ---- philosophy

if exists('s:philosophy')
unlockvar! s:philosophy
endif
let s:philosophy = [
	\ [ 'taijitu yin yang'     , '☯' ],
	\ [ 'yang'                 , '⚊' ],
	\ [ 'yin'                  , '⚋' ],
	\ [ 'digram greater yang'  , '⚌' ],
	\ [ 'digram lesser yang'   , '⚎' ],
	\ [ 'digram lesser yin'    , '⚍' ],
	\ [ 'digram greater yin'   , '⚏' ],
	\ [ 'trigram heaven'       , '☰' ],
	\ [ 'trigram lake'         , '☱' ],
	\ [ 'trigram fire'         , '☲' ],
	\ [ 'trigram thunder'      , '☳' ],
	\ [ 'trigram wind'         , '☴' ],
	\ [ 'trigram water'        , '☵' ],
	\ [ 'trigram mountain'     , '☶' ],
	\ [ 'trigram earth'        , '☷' ],
	\ [ 'dharma wheel'         , '☸' ],
	\ [ 'ankh'                 , '☥' ],
	\ [ 'staff of Aesculapius' , '⚕' ],
	\ [ 'staff of Hermes'      , '⚚' ],
\ ]
lockvar! s:philosophy

" ---- cosmos

if exists('s:cosmos')
unlockvar! s:cosmos
endif
let s:cosmos = [
	\ [ 'sun'                 , '☉' ],
	\ [ 'white sun with rays' , '☼' ],
	\ [ 'first quarter moon'  , '☽' ],
	\ [ 'last quarter moon'   , '☾' ],
	\ [ 'mercury'             , '☿' ],
	\ [ 'venus female'        , '♀' ],
	\ [ 'earth'               , '♁' ],
	\ [ 'mars male'           , '♂' ],
	\ [ 'jupiter'             , '♃' ],
	\ [ 'saturn'              , '♄' ],
	\ [ 'uranus'              , '♅' ],
	\ [ 'neptune'             , '♆' ],
	\ [ 'pluto'               , '♇' ],
	\ [ 'black star'          , '★' ],
	\ [ 'white star'          , '☆' ],
	\ [ 'sextile'             , '⚹' ],
	\ [ 'hexa star'           , '🞵' ],
	\ [ 'hexa star var'       , '🞶' ],
	\ [ 'hexa star bold'      , '✻' ],
	\ [ 'hexa star bold var'  , '✼' ],
	\ [ 'penta star'          , '🞰' ],
	\ [ 'penta star var'      , '🞱' ],
	\ [ 'comet'               , '☄' ],
	\ [ 'aries'               , '♈' ],
	\ [ 'taurus'              , '♉' ],
	\ [ 'gemini'              , '♊' ],
	\ [ 'cancer'              , '♋' ],
	\ [ 'leo'                 , '♌' ],
	\ [ 'virgo'               , '♍' ],
	\ [ 'libra'               , '♎' ],
	\ [ 'scorpius'            , '♏' ],
	\ [ 'sagittarius'         , '♐' ],
	\ [ 'capricorn'           , '♑' ],
	\ [ 'aquarius'            , '♒' ],
	\ [ 'pisces'              , '♓' ],
	\ [ 'ophiuchus'           , '⛎' ],
	\ ]
lockvar! s:cosmos

" ---- weather

if exists('s:weather')
unlockvar! s:weather
endif
let s:weather = [
	\ [ 'cloud'              , '☁' ],
	\ [ 'sun behind cloud'   , '⛅' ],
	\ [ 'rain'               , '⛆' ],
	\ [ 'snowman & snow'     , '☃' ],
	\ [ 'snowman'            , '⛄' ],
	\ [ 'lightning'          , '☇' ],
	\ [ 'thunderstorm'       , '☈' ],
	\ [ 'thunder cloud rain' , '⛈' ],
\ ]
lockvar! s:weather

" ---- punctuation

if exists('s:punctuation')
unlockvar! s:punctuation
endif
let s:punctuation = [
	\ [ 'em space'                 , ' '  ],
	\ [ 'en space'                 , ' '  ],
	\ [ 'thin space'               , ' '  ],
	\ [ 'non breakable space'      , ' '  ],
	\ [ 'en dash'                  , '–'  ],
	\ [ 'em dash'                  , '—'  ],
	\ [ 'horizontal bar'           , '―'  ],
	\ [ 'double low line'          , '‗'  ],
	\ [ 'overline'                 , '‾'  ],
	\ [ 'broken vertical bar'      , '¦'  ],
	\ [ 'double vertical bar'      , '‖'  ],
	\ [ 'left angle quote'         , '‹'  ],
	\ [ 'right angle quote'        , '›'  ],
	\ [ 'left double angle quote'  , '«'  ],
	\ [ 'right double angle quote' , '»'  ],
	\ [ 'horizontal ellipsis'      , '…'  ],
	\ [ 'sect'                     , '§'  ],
	\ [ 'para pilcrow'             , '¶'  ],
	\ [ 'micro'                    , 'µ'  ],
	\ [ 'dagger'                   , '†'  ],
	\ [ 'double dagger'            , '‡'  ],
	\ [ 'bullet'                   , '•'  ],
	\ [ 'triangular bullet'        , '‣'  ],
	\ [ 'low asterisk'             , '⁎'  ],
	\ [ 'two vertical asterisk'    , '⁑'  ],
	\ [ 'asterism triple asterisk' , '⁂ ' ],
	\ [ 'flower'                   , '⁕'  ],
	\ [ 'reference mark'           , '※ ' ],
	\ [ 'reference mark var'       , '⨳ ' ],
	\ [ 'dotted cross'             , '⁜'  ],
\ ]
lockvar! s:punctuation

" ---- arrows

if exists('s:arrows')
unlockvar! s:arrows
endif
let s:arrows = [
	\ [ 'left arrow'              , '←' ],
	\ [ 'right arrow'             , '→' ],
	\ [ 'up arrow'                , '↑' ],
	\ [ 'down arrow'              , '↓' ],
	\ [ 'north west arrow'        , '↖' ],
	\ [ 'north east arrow'        , '↗' ],
	\ [ 'south west arrow'        , '↙' ],
	\ [ 'south east arrow'        , '↘' ],
	\ [ 'left right arrow'        , '↔' ],
	\ [ 'up down arrow'           , '↕' ],
	\ [ 'barred left arrow'       , '⟻' ],
	\ [ 'barred right arrow'      , '⟼' ],
	\ [ 'barred up arrow'         , '↥' ],
	\ [ 'barred down arrow'       , '↧' ],
	\ [ 'triangular left arrow'   , '◁' ],
	\ [ 'triangular right arrow'  , '▷' ],
	\ [ 'triangular up arrow'     , '△' ],
	\ [ 'triangular down arrow'   , '▽' ],
	\ [ 'double left arrow'       , '⇐' ],
	\ [ 'double right arrow'      , '⇒' ],
	\ [ 'double up arrow'         , '⇑' ],
	\ [ 'double down arrow'       , '⇓' ],
	\ [ 'double left right arrow' , '⇔' ],
	\ [ 'double up down arrow'    , '⇕' ],
\ ]
lockvar! s:arrows

" ---- greek

if exists('s:greek_lowercase')
unlockvar! s:greek_lowercase
endif
let s:greek_lowercase = [
	\ [ 'alpha'            , 'α' ],
	\ [ 'beta'             , 'β' ],
	\ [ 'gamma'            , 'γ' ],
	\ [ 'digamma'          , 'ϝ' ],
	\ [ 'delta'            , 'δ' ],
	\ [ 'epsilon'          , 'ε' ],
	\ [ 'epsilon-straight' , 'ϵ' ],
	\ [ 'zeta'             , 'ζ' ],
	\ [ 'eta'              , 'η' ],
	\ [ 'theta'            , 'θ' ],
	\ [ 'theta-sym'        , 'ϑ' ],
	\ [ 'iota'             , 'ι' ],
	\ [ 'kappa'            , 'κ' ],
	\ [ 'kappa-var'        , 'ϰ' ],
	\ [ 'lambda'           , 'λ' ],
	\ [ 'mu'               , 'μ' ],
	\ [ 'nu'               , 'ν' ],
	\ [ 'xi'               , 'ξ' ],
	\ [ 'omicron'          , 'ο' ],
	\ [ 'pi'               , 'π' ],
	\ [ 'pi-var'           , 'ϖ' ],
	\ [ 'rho'              , 'ρ' ],
	\ [ 'rho-var'          , 'ϱ' ],
	\ [ 'sigma'            , 'σ' ],
	\ [ 'sigma-final'      , 'ς' ],
	\ [ 'tau'              , 'τ' ],
	\ [ 'upsilon'          , 'υ' ],
	\ [ 'upsilon-hook'     , 'ϒ' ],
	\ [ 'phi'              , 'φ' ],
	\ [ 'phi-straight'     , 'ϕ' ],
	\ [ 'chi'              , 'χ' ],
	\ [ 'psi'              , 'ψ' ],
	\ [ 'omega'            , 'ω' ],
\ ]
lockvar! s:greek_lowercase

if exists('s:greek_uppercase')
unlockvar! s:greek_uppercase
endif
let s:greek_uppercase = [
	\ [ 'Alpha'        , 'Α' ],
	\ [ 'Beta'         , 'Β' ],
	\ [ 'Gamma'        , 'Γ' ],
	\ [ 'Digamma'      , 'Ϝ' ],
	\ [ 'Delta'        , 'Δ' ],
	\ [ 'Epsilon'      , 'Ε' ],
	\ [ 'Zeta'         , 'Ζ' ],
	\ [ 'Eta'          , 'Η' ],
	\ [ 'Theta'        , 'Θ' ],
	\ [ 'Iota'         , 'Ι' ],
	\ [ 'Kappa'        , 'Κ' ],
	\ [ 'Lambda'       , 'Λ' ],
	\ [ 'Mu'           , 'Μ' ],
	\ [ 'Nu'           , 'Ν' ],
	\ [ 'Xi'           , 'Ξ' ],
	\ [ 'Omicron'      , 'Ο' ],
	\ [ 'Pi'           , 'Π' ],
	\ [ 'Rho'          , 'Ρ' ],
	\ [ 'Sigma'        , 'Σ' ],
	\ [ 'Tau'          , 'Τ' ],
	\ [ 'Upsilon'      , 'Υ' ],
	\ [ 'Phi'          , 'Φ' ],
	\ [ 'Chi'          , 'Χ' ],
	\ [ 'Psi'          , 'Ψ' ],
	\ [ 'Omega'        , 'Ω' ],
\ ]
lockvar! s:greek_uppercase

" ---- mathematics

if exists('s:math_basic')
unlockvar! s:math_basic
endif
let s:math_basic = [
	\ [ 'equivalent'       , '≡' ],
	\ [ 'less or equal'    , '≤' ],
	\ [ 'greater or equal' , '≥' ],
	\ [ 'for all'          , '∀' ],
	\ [ 'exists'           , '∃' ],
	\ [ 'does not exists'  , '∄' ],
	\ [ 'per mille'        , '‰' ],
	\ [ 'per ten thousand' , '‱' ],
	\ [ 'prime'            , '′' ],
	\ [ 'double prime'     , '″' ],
	\ [ 'triple prime'     , '‴' ],
\ ]
lockvar! s:math_basic

if exists('s:math_set')
unlockvar! s:math_set
endif
let s:math_set = [
	\ [ 'empty set'             , '∅ ' ],
	\ [ 'element of'            , '∈'  ],
	\ [ 'not element of'        , '∉'  ],
	\ [ 'subset of'             , '⊂'  ],
	\ [ 'subset of'             , '⊂'  ],
	\ [ 'subset of or equal to' , '⊆'  ],
	\ [ 'subset of or equal to' , '⊇'  ],
	\ [ 'not superset of'       , '⊄'  ],
	\ [ 'not superset of'       , '⊅'  ],
	\ [ 'union'                 , '∪'  ],
	\ [ 'intersection'          , '∩'  ],
\ ]
lockvar! s:math_set

if exists('s:math_operators')
unlockvar! s:math_operators
endif
let s:math_operators= [
	\ [ 'times'            , '×'  ],
	\ [ 'divide'           , '÷'  ],
	\ [ 'plus minus'       , '±'  ],
	\ [ 'circled plus'     , '⊕ ' ],
	\ [ 'circled times'    , '⊗ ' ],
	\ [ 'circled dot'      , '⊙  '],
	\ [ 'circled division' , '⊘ ' ],
	\ [ 'square root'      , '√'  ],
	\ [ 'partial diff'     , '∂'  ],
	\ [ 'delta increment'  , '∆'  ],
	\ [ 'nabla'            , '∇'  ],
	\ [ 'n sum'            , '∑'  ],
	\ [ 'n product'        , '∏'  ],
	\ [ 'integral'         , '∫'  ],
	\ [ 'contour integral' , '∮'  ],
	\ [ 'left angle'       , '⧼'  ],
	\ [ 'right angle'      , '⧽'  ],
\ ]
lockvar! s:math_operators

if exists('s:math_geometry')
unlockvar! s:math_geometry
endif
let s:math_geometry= [
	\ [ 'perpendicular'                     , '⊥' ],
	\ [ 'parallel'                          , '∥' ],
	\ [ 'not parallel'                      , '∦' ],
	\ [ 'angle'                             , '∠' ],
	\ [ 'right angle'                       , '∟' ],
	\ [ 'medium white circle'               , '⚪' ],
	\ [ 'medium black circle'               , '⚫' ],
	\ [ 'large circle'                      , '◯' ],
	\ [ 'black triangle up'                 , '▲' ],
	\ [ 'white triangle up'                 , '△' ],
	\ [ 'black square'                      , '■' ],
	\ [ 'white square'                      , '□' ],
	\ [ 'square corners'                    , '⛶' ],
	\ [ 'square with orthogonal crosshatch' , '▦' ],
	\ [ 'black rectangle'                   , '▬' ],
	\ [ 'white rectangle'                   , '▭' ],
	\ [ 'black diamond'                     , '◆' ],
	\ [ 'white diamond'                     , '◇' ],
	\ [ 'lozenge'                           , '◊' ],
	\ [ 'black parallelogram'               , '▰' ],
	\ [ 'white parallelogram'               , '▱' ],
\ ]
lockvar! s:math_geometry

if exists('s:math_misc')
unlockvar! s:math_misc
endif
let s:math_misc= [
	\ [ 'infinity'      , '∞' ],
\ ]
lockvar! s:math_misc

" ---- music

if exists('s:music')
unlockvar! s:music
endif
let s:music = [
	\ [ 'quarter note'                 , '♩' ],
	\ [ 'eighth note'                  , '♪' ],
	\ [ 'beamed eighth (8th) note'     , '♫' ],
	\ [ 'beamed sixteenth (16th) note' , '♬' ],
	\ [ 'sharp'                        , '♯' ],
	\ [ 'natural'                      , '♮' ],
	\ [ 'flat'                         , '♭' ],
	\ [ 'tie'                          , '‿' ],
\ ]
lockvar! s:music

" ---- games

if exists('s:games')
unlockvar! s:games
endif
let s:games = [
	\ [ 'black heart suit'   , '♥' ],
	\ [ 'black diamond suit' , '♦' ],
	\ [ 'black club suit'    , '♣' ],
	\ [ 'black spade suit'   , '♠' ],
	\ [ 'white heart suit'   , '♡' ],
	\ [ 'white diamond suit' , '♢' ],
	\ [ 'white club suit'    , '♧' ],
	\ [ 'white spade suit'   , '♤' ],
	\ [ 'white chess king'   , '♔' ],
	\ [ 'white chess queen'  , '♕' ],
	\ [ 'white chess rook'   , '♖' ],
	\ [ 'white chess bishop' , '♗' ],
	\ [ 'white chess knight' , '♘' ],
	\ [ 'white chess pawn'   , '♙' ],
	\ [ 'black chess king'   , '♚' ],
	\ [ 'black chess queen'  , '♛' ],
	\ [ 'black chess rook'   , '♜' ],
	\ [ 'black chess bishop' , '♝' ],
	\ [ 'black chess knight' , '♞' ],
	\ [ 'black chess pawn'   , '♟' ],
	\ [ 'die face 1'         , '⚀' ],
	\ [ 'die face 2'         , '⚁' ],
	\ [ 'die face 3'         , '⚂' ],
	\ [ 'die face 4'         , '⚃' ],
	\ [ 'die face 5'         , '⚄' ],
	\ [ 'die face 6'         , '⚅' ],
\ ]
lockvar! s:games

" ---- currencies

if exists('s:currencies')
unlockvar! s:currencies
endif
let s:currencies = [
	\ [ 'pound' , '£' ],
	\ [ 'euro'  , '€' ],
	\ [ 'yen'   , '¥' ],
\ ]
lockvar! s:currencies

" ---- miscellaneous

if exists('s:miscellaneous')
unlockvar! s:miscellaneous
endif
let s:miscellaneous = [
	\ [ 'sailboat'            , '⛵' ],
	\ [ 'anchor'              , '⚓' ],
	\ [ 'balance scales'      , '⚖' ],
\ ]
lockvar! s:miscellaneous

" ---- all together

if exists('s:lists')
	unlockvar! s:lists
endif
let s:lists = [
	\ 'philosophy',
	\ 'cosmos',
	\ 'weather',
	\ 'punctuation',
	\ 'arrows',
	\ 'greek uppercase',
	\ 'greek lowercase',
	\ 'math basic',
	\ 'math set',
	\ 'math operators',
	\ 'math geometry',
	\ 'math misc',
	\ 'music',
	\ 'games',
	\ 'currencies',
	\ 'miscellaneous',
	\ ]
lockvar! s:lists

if exists('s:all')
	unlockvar! s:all
endif
let s:all = []
for s:name in s:lists
	let s:formated = substitute(s:name, ' ', '_', 'g')
	eval s:all->extend(s:{s:formated})
endfor
lockvar! s:all

" ---- public interface

fun! organ#unicode#fetch (varname, conversion = 'no-conversion')
	" Return script variable called varname
	" The leading s: can be omitted
	" Optional argument :
	"   - no-conversion : simply returns the asked variable, dont convert anything
	"   - dict : if varname points to an items list, convert it to a dictionary
	let varname = a:varname
	let conversion = a:conversion
	" ---- variable name
	let varname = substitute(varname, '/', '_', 'g')
	let varname = substitute(varname, '-', '_', 'g')
	let varname = substitute(varname, ' ', '_', 'g')
	if varname !~ '\m^s:'
		let varname = 's:' .. varname
	endif
	" ---- raw or conversion
	if conversion ==# 'dict'
		return organ#utils#items2dict ({varname})
	else
		return {varname}
	endif
endfun
