if exists("b:current_syntax") | finish | endif

" Define the pseudocode file type
syn keyword pseudocodeType int float string boolean void
syn keyword pseudocodeConditional if else elseif then endif
syn keyword pseudocodeLoop for while do endfor endwhile
syn keyword pseudocodeFunction def return

" Highlight comments
syn match pseudocodeComment "#.*"

" Highlight numbers
syn match pseudocodeNumber "\<\d\+\>"

" Highlight keywords
syn keyword pseudocodeKeyword
  \ algorithm input output let

" Highlight operators
syn match pseudocodeOperator /[\+\-\*\/=\>\<!&|]\+/

" Highlight strings
syn match pseudocodeString '".*"' contains=escChar,escLine

" Highlight function names
syn match pseudocodeFunctionName "\<[a-zA-Z_]\w*\>" contained

" Highlight function calls
syn match pseudocodeFunctionCall
  \ "\<[a-zA-Z_]\w*\>"
  \ contains=pseudocodeFunctionName,pseudocodeString

" Define the syntax groups
hi def link pseudocodeType Type
hi def link pseudocodeConditional Conditional
hi def link pseudocodeLoop Repeat
hi def link pseudocodeFunction Function
hi def link pseudocodeComment Comment
hi def link pseudocodeNumber Number
hi def link pseudocodeKeyword Keyword
hi def link pseudocodeOperator Operator
hi def link pseudocodeString String
hi def link pseudocodeFunctionName Function
hi def link pseudocodeFunctionCall Function

" Set the default syntax highlighting for pseudocode
let b:current_syntax = "pseudocode"
