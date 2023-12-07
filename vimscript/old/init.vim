" SECTION: Bread n' butter
" TOP PRIORITY!
source $nvimconfdir\plugins.vim 

" Must be sourced before `keymaps.vim`.
" `keymaps.vim` uses custom commands defined here.
source $nvimconfdir\commands.vim 
source $nvimconfdir\keymaps.vim
source $nvimconfdir\theme.vim
" ENDSECTION

" SECTION: Config files
source $nvimconfdir\coc.config.vim
source $nvimconfdir\user.config.vim
source $nvimconfdir\telescope.config.vim
source $nvimconfdir\vim-airline.config.vim
source $nvimconfdir\ale.config.vim
" ENDSECTION
