if v:version < 600
	syntax clear
elseif exists('b:current_syntax')
	finish
endif

syntax keyword toitKeyword for
syntax keyword toitKeyword if
syntax keyword toitKeyword show
syntax keyword toitKeyword as
syntax keyword toitKeyword it
syntax keyword toitKeyword import
syntax keyword toitKeyword static

syntax keyword toitType bool
syntax keyword toitType float
syntax keyword toitType int
syntax keyword toitType string

syntax keyword toitOperator + - * / += -= *= /= != => <=> = !

syntax match toitValueInteger "[-+]\=\d\+"
syntax match toitNumber "[-+]\=\d\+\(\.\d*\)\="

syntax region toitComment start=+//+ end=/$/
syntax region toitComment start=+/\*+ end=+\*/+

syntax region toitStringDouble start=+"+ skip=+\\\\\|\\+ end=+"+
syntax region toitStringSingle start=+'+ skip=+\\\\\|\\+ end=+'+

hi def link toitComment Comment
hi def link toitConstant Constant
hi def link toitKeyword Keyword
hi def link toitStringSingle String
hi def link toitStringDouble String
hi def link toitType Type
hi def link toitValueAngle Number
hi def link toitValueInteger Number
hi def link toitOperator Operator

let b:current_syntax = "toit"
