" Modify section Z (Refer to `:h airline`)
" `create()` syntax translates to `(ln:linenr/maxlinenr col:colnr)`
" https://vi.stackexchange.com/a/22057
au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['ln:%l/%L col:%v'])

" Enable tabline on top of editor
let g:airline#extensions#tabline#enabled = 1

" SECTION: Powerline customizations
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}

" Unicode symbols (serves as fallback)
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'branch:'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' col:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ':' " Or use `ln:`
let g:airline_symbols.maxlinenr = 'MAX '
" ENDSECTION
