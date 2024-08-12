
" Quick change directory
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>


" Replace word under cursor
nnoremap <leader>rw :%s/<c-r><c-w>/<c-r><c-w>/gc<left><left><left>
" Replace word under cursor in Ex mode(but no preview)
nnoremap <leader>rW :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

