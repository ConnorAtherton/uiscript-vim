"
" See the grammar here https://github.com/ConnorAtherton/uiscript/blob/master/doc/grammar.txt
"

if exists("b:current_syntax")
  finish
endif

" Match TODO comments
syntax keyword uiTodos TODO FIXME NOTE

" Match language specific keywords
syntax keyword uiKeywords
      \ when
      \ toggle
      \ add
      \ remove
      \ I
      \ on

syntax keyword uiBlockStatements then end
syntax match uiSingleStatementEnd "\."

syntax match uiComment "\/\/.*"
syntax match uiVariable "@\%(\h\|[^\x00-\x7F]\)\%(\w\|[^\x00-\x7F]\)*"
syntax region uiString start=/"/ end=/"/

" Set highlights
highlight default link uiTodos Todo
highlight default link uiComment Comment
highlight default link uiString String
highlight default link uiBlockStatements Delimiter
highlight default link uiSingleStatementEnd Delimiter
highlight default link uiKeywords Keyword
highlight default link uiVariable Identifier

let b:current_syntax = "uiscript"
