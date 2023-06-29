vim.cmd([[
augroup PseudoFiletype
  autocmd!
  autocmd BufRead,BufNewFile *.pseudo set filetype=pseudo
augroup END
]])
