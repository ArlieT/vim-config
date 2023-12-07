" Hide mode on bottommost part of screen
set noshowmode

" Show line numbers and relative number
set number
set relativenumber

" Use system clipboard for cut and pasting
" `:h clipboard` for more details
set clipboard+=unnamedplus

" Set Powershell as default shell
" https://juliankay.com/development/setting-up-vim-to-work-with-powershell/
set shell=pwsh
set shellcmdflag=-command

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
