" Remap leader key
let mapleader = " "

" SECTION: Custom keymaps for native functionalities

" Open this `keymaps.vim` file
nnoremap <F2>key <cmd>e $nvimconfdir/keymaps.vim<cr>
" Open global `.gitconfig` file
nnoremap <F2>git <cmd>e ~/.gitconfig<cr>

" Open terminal in vertical split
" See `commands.vim` for details
nnoremap <leader>` <cmd>OTerm<cr>

" Cycle through buffer accordingly
nnoremap <leader>bl <cmd>bnext<cr>
nnoremap <leader>bh <cmd>bprevious<cr>

" Open a new tab
nnoremap <leader>t <cmd>tabnew<cr>

" remap escaping in terminal mode
tnoremap <Esc> <C-\><C-n>

" Open netrw
nnoremap <leader>fex <cmd>Ex<cr>
" ENDSECTION

" SECTION: Plugin keymaps

" Telescope keymaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Gitgutter keymaps
nnoremap <leader>hhl <cmd>GitGutterLineHighlightsToggle<cr>

" ENDSECTION
