" Vim syntax file
" Language:     rlogic
" Maintainer:   Reza Behzadan <rbehzadan@gmail.com>
" Last Change:  '2019-12-26'
" Version:      1
" URL:          https://github.com/rbehzadan/rlogic-vim 

" Load Once: {{{1
if exists("b:current_syntax")
  finish
endif

" Keywords: {{{1
syntax keyword rlogicReserved not true false unknown
syntax keyword rlogicFunction if iff and or not assert infer
syntax keyword rlogicFunction expand postulation

" Comment: {{{1
syntax keyword rlogicTodo contained TODO FIXME XXX NOTE
syntax match rlogicComment "\v;.*$" contains=rlogicTodo
setlocal commentstring=;\ %s " for vim-commentary

" Operators: {{{1
syntax match rlogicOperator "\~"
syntax match rlogicOperator "+"
syntax match rlogicOperator "-"
syntax match rlogicOperator "*"
syntax match rlogicOperator "/"
syntax match rlogicOperator "%"
syntax match rlogicOperator "\^"
syntax match rlogicOperator "="
syntax match rlogicOperator "=="
syntax match rlogicOperator "!="
syntax match rlogicOperator ":="
syntax match rlogicOperator "<"
syntax match rlogicOperator ">"
syntax match rlogicOperator "<="
syntax match rlogicOperator ">="

" Number: {{{1
syntax match rlogicNumber "\<-\=\(\.\d\+\|\d\+\(\.\d*\)\=\)\([dDeEfFlL][-+]\=\d\+\)\=\>"
syntax match rlogicNumber "\<-\=\(\d\+/\d\+\)\>"

" String: {{{1
syntax region rlogicString start=/\v"/ skip=/\v\\./ end=/\v"/

" Variable: {{{1
syntax match rlogicVariable "?\<\(\w\|[-'@#$&!]\|_\|:\)\+\>"
syntax match rlogicAnonVar "\<_\>"

" Atom: {{{1
syntax match rlogicAtom "\<\(\w\|[-'@#$&!]\|_\|:\)\+\>"

" Highlighting Links: {{{1
highlight link rlogicTodo Todo
highlight link rlogicFunction Function
highlight link rlogicOperator Operator
highlight link rlogicComment Comment
highlight link rlogicNumber Number
highlight link rlogicString String
highlight link rlogicVariable Identifier
highlight link rlogicAnonVar Constant
highlight link rlogicAtom Normal
highlight link rlogicReserved Type

" Definitions {{{1
setlocal tabstop=2
setlocal shiftwidth=2
let b:current_syntax = "rlogic"
