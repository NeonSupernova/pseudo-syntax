vim.cmd("syntax keyword pseudocodeType int float string boolean void")
vim.cmd("syntax keyword pseudocodeConditional if else elseif then endif")
vim.cmd("syntax keyword pseudocodeLoop for while do endfor endwhile")
vim.cmd("syntax keyword pseudocodeFunction def return")

-- Highlight comments
vim.cmd("syntax match pseudocodeComment '#.*'")

-- Highlight numbers
vim.cmd("syntax match pseudocodeNumber '\\<\\d\\+\\>'")

-- Highlight keywords
vim.cmd("syntax keyword pseudocodeKeyword algorithm input output let")

-- Highlight operators
vim.cmd("syntax match pseudocodeOperator /[+\\-*/=<>!&|]+/")

-- Highlight strings
vim.cmd("syntax match pseudocodeString '\".*\"' contains=escChar,escLine")

-- Highlight function names
vim.cmd("syntax match pseudocodeFunctionName '\\<[a-zA-Z_]\\w*\\>' contained")

-- Highlight function calls
vim.cmd("syntax match pseudocodeFunctionCall '\\<[a-zA-Z_]\\w*\\>' contains=pseudocodeFunctionName,pseudocodeString")

-- Define the syntax groups
vim.cmd("hi link pseudocodeType Type")
vim.cmd("hi link pseudocodeConditional Conditional")
vim.cmd("hi link pseudocodeLoop Repeat")
vim.cmd("hi link pseudocodeFunction Function")
vim.cmd("hi link pseudocodeComment Comment")
vim.cmd("hi link pseudocodeNumber Number")
vim.cmd("hi link pseudocodeKeyword Keyword")
vim.cmd("hi link pseudocodeOperator Operator")
vim.cmd("hi link pseudocodeString String")
vim.cmd("hi link pseudocodeFunctionName Function")
vim.cmd("hi link pseudocodeFunctionCall Function")

-- Set the default syntax highlighting for pseudocode
vim.cmd("let b:current_syntax = 'pseudocode'")
