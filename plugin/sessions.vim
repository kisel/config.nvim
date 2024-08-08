" Sessions Save/Load
command! SS :mks! $TEMP/vim.session
command! SL :so $TEMP/vim.session

nmap <leader>SS :SS<CR>
nmap <leader>SL :SL<CR>

