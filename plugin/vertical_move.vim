" ============================================================================
" File: vertical_move.vim
" Author: bruno-
" Version: 1.0.0
" WebPage: https://github.com/bruno-/vim-vertical-move
" ============================================================================

if exists('g:loaded_vertical_move') && g:loaded_vertical_move
  finish
endif
let g:loaded_vertical_move = 1

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <Plug>(vertical_move_down) :<C-U>call vertical_move#Down('', v:count1)<CR>
nnoremap <silent> <Plug>(vertical_move_up) :<C-U>call vertical_move#Up('', v:count1)<CR>
xnoremap <silent> <Plug>(vertical_move_down) :<C-U>call vertical_move#Down('v', v:count1)<CR>
xnoremap <silent> <Plug>(vertical_move_up) :<C-U>call vertical_move#Up('v', v:count1)<CR>

" Operator pending mappings
onoremap <silent> <Plug>(vertical_move_down) :<C-U>call vertical_move#PendingDown(v:count1)<CR>
onoremap <silent> <Plug>(vertical_move_up) :<C-U>call vertical_move#PendingUp(v:count1)<CR>

if get(g:, 'vertical_move_default_mapping', 1)
  nmap <silent> <leader>] <Plug>(vertical_move_down)
  nmap <silent> <leader>[ <Plug>(vertical_move_up)
  xmap <silent> <leader>] <Plug>(vertical_move_down)
  xmap <silent> <leader>[ <Plug>(vertical_move_up)
  omap <silent> <leader>] <Plug>(vertical_move_down)
  omap <silent> <leader>[ <Plug>(vertical_move_up)
endif

let &cpo = s:save_cpo
unlet s:save_cpo
