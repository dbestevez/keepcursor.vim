if !exists('g:keep_cursor')
    let g:keep_cursor = 1
endif

if !exists('g:keep_cursor_column')
    let g:keep_cursor_column = 0
endif

function! keepcursor#enable()
    let g:keep_cursor = 1
endfunction

function! keepcursor#disable()
    let g:keep_cursor = 0
endfunction

function! keepcursor#toggle()
    let g:keep_cursor = !g:keep_cursor
endfunction

function! keepcursor#restore()
    if g:keep_cursor == 1 && g:keep_cursor_column != col('.')
        call cursor(0, col('.') + 1)
    endif
endfunction

augroup keepcursor
  autocmd!
  autocmd InsertEnter * let g:keep_cursor_column = col('.')
  autocmd CursorMovedI * let g:keep_cursor_column = col('.')
  autocmd InsertLeave * :call keepcursor#restore()
augroup END

:command! KeepCursorEnable call keepcursor#enable()
:command! KeepCursorDisable call keepcursor#disable()
:command! KeepCursorToggle  call keepcursor#toggle()
