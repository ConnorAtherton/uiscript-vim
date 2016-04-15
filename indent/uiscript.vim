setlocal indentexpr=UiscriptIndent()

function! UiscriptIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "then"
    return indent(previousNum) + &tabstop
  endif
endfunction
