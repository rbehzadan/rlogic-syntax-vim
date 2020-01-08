" Vim syntax file
" Language:     rlogic
" Maintainer:   Reza Behzadan <rbehzadan@gmail.com>
" Last Change:  '2019-12-26'
" Version:      1
" URL:          https://github.com/rbehzadan/rlogic-syntax-vim 

" Load Once: {{{
if exists("b:current_syntax")
  finish
endif
" }}}
" Keywords: {{{
syntax keyword rlogicTodo contained TODO FIXME XXX NOTE
syntax region rlogicParenBlock start='(' end=')'
syntax keyword rlogicReserved not true false unknown contained containedin=rlogicParenBlock
syntax keyword rlogicFunction if iff and or not contained containedin=rlogicParenBlock

" }}}
" Comment: {{{
" syntax match rlogicComment "\v;.*$" contains=rlogicTodo
" syntax match rlogicComment ";.*$" contains=rlogicTodo
syntax match rlogicComment "\v;.*$"

" }}}
" Number: {{{
syntax match rlogicNumber "\<-\=\(\.\d\+\|\d\+\(\.\d*\)\=\)\([dDeEfFlL][-+]\=\d\+\)\=\>"
syntax match rlogicNumber "\<-\=\(\d\+/\d\+\)\>"
" }}}
" String: {{{
syntax region rlogicString start=/\v"/ skip=/\v\\./ end=/\v"/
" }}}
" Operators: {{{
syntax match rlogicOperator "\~" contained containedin=rlogicParenBlock
syntax match rlogicOperator "+" contained containedin=rlogicParenBlock
syntax match rlogicOperator "-" contained containedin=rlogicParenBlock
syntax match rlogicOperator "*" contained containedin=rlogicParenBlock
syntax match rlogicOperator "/" contained containedin=rlogicParenBlock
syntax match rlogicOperator "%" contained containedin=rlogicParenBlock
syntax match rlogicOperator "\^" contained containedin=rlogicParenBlock
syntax match rlogicOperator "=" contained containedin=rlogicParenBlock
syntax match rlogicOperator "!=" contained containedin=rlogicParenBlock
syntax match rlogicOperator ":=" contained containedin=rlogicParenBlock
syntax match rlogicOperator "<" contained containedin=rlogicParenBlock
syntax match rlogicOperator ">" contained containedin=rlogicParenBlock
syntax match rlogicOperator "<=" contained containedin=rlogicParenBlock
syntax match rlogicOperator ">=" contained containedin=rlogicParenBlock
" }}}


syntax match rlogicVariable "?\<\(\w\|[-'@#$&!]\|_\|:\)\+\>" contained containedin=rlogicParenBlock
syntax match rlogicAtom "\<\(\w\|[-'@#$&!]\|_\|:\)\+\>" contained containedin=rlogicParenBlock
syntax match rlogicAnonVar "\<_\>" contained containedin=rlogicParenBlock




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

let b:current_syntax = "rlogic"
