nnoremap <leader>l :set operatorfunc=DebugSelection<cr>g@
vnoremap <leader>l :<c-u>call DebugSelection(visualmode())<cr>
nnoremap <leader>ll :<c-u>call DebugWord()<cr>

let g:js_debug_font_color = ""

function! LogOutput(text) 
  if len(g:js_debug_font_color) is 0 
    silent execute "normal! oconsole.log(\"" . a:text . "\", " . a:text . ");"
  else
    silent execute "normal! oconsole.log(\"\%c" . a:text . "\", \"color:" . g:js_debug_font_color . "; \", " . a:text . ");"
  endif
endfunction

function! DebugWord()
    let unnamed_register = @@

    normal! yiw

    call LogOutput(@@)

    let @@ = unnamed_register
endfunction

function! DebugSelection(type)
    let unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
      return
    endif

    call LogOutput(@@)

    let @@ = unnamed_register
endfunction
