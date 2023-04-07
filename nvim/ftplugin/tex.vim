" Simple VimTeX configuration
let g:vimtex_view_method = 'zathura'

" Don't automatically open PDF viewer after first compilation
let g:vimtex_view_automatic = 0

" Shortcuts to compile document and open PDF viewer
noremap <leader>c <Cmd>update<CR><Cmd>VimtexCompileSS<CR>
nmap <leader>v <Cmd>VimtexView<CR>
