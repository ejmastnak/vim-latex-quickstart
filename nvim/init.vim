set clipboard=unnamedplus
let mapleader = " "

call plug#begin('~/dotfiles/config/nvim/plugged')
Plug 'junegunn/vim-plug'
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
call plug#end()

" A few shortcuts for common commands
noremap <leader>q <Cmd>q<CR>
noremap <leader>w <Cmd>write<CR>
nnoremap <leader>s :%s/
vnoremap <leader>s :s/

" Ultisnips configuration
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "jk"
let g:UltiSnipsJumpBackwardTrigger = "<c-j>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
nnoremap <leader>U <Cmd>call UltiSnips#RefreshSnippets()<CR>

" Disable automatic comment continuation onto next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  

" An example of how to source a separate Vimscript file
source ~/.config/nvim/personal/delete-paired-delims.vim

