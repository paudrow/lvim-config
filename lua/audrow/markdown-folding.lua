vim.api.nvim_exec([[
  function! MarkdownFolds()
    let this_line = getline(v:lnum)
    if this_line =~ '^# '
      let b:current_heading_level = 1
      return '>1'
    elseif this_line =~ '^## '
      let b:current_heading_level = 2
      return '>2'
    elseif this_line =~ '^### '
      let b:current_heading_level = 3
      return '>3'
    elseif this_line =~ '^#### '
      let b:current_heading_level = 4
      return '>4'
    elseif this_line =~ '^##### '
      let b:current_heading_level = 5
      return '>5'
    elseif this_line =~ '^###### '
      let b:current_heading_level = 6
      return '>6'
    elseif this_line =~ '^\s*[-*]' " Bullet points
      if exists('b:current_heading_level')
        return '>' . (indent(v:lnum) / &shiftwidth + b:current_heading_level + 1)
      else
        return '>1'
      endif
    elseif this_line =~ '^[-*]' " Top-level bullet points
      return '>1'
    else
      return '='
    endif
  endfunction

  augroup markdown
    autocmd!
    autocmd FileType markdown setlocal foldmethod=expr
    autocmd FileType markdown setlocal foldexpr=MarkdownFolds()
  augroup END
]], false)

