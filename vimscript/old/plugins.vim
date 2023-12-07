call plug#begin()

Plug 'git@github.com:navarasu/onedark.nvim.git'
Plug 'git@github.com:neoclide/coc.nvim.git', {'branch':'release'}

" Telescope dependencies
" TODO: improve sorting performance
Plug 'git@github.com:nvim-telescope/telescope.nvim.git'
Plug 'git@github.com:nvim-lua/plenary.nvim.git'

" Airline dependencies
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:airblade/vim-gitgutter.git'
Plug 'git@github.com:tpope/vim-fugitive.git'
Plug 'git@github.com:vim-airline/vim-airline-themes.git'

" Linter/Formatter dependencies
Plug 'git@github.com:dense-analysis/ale.git'

call plug#end()
