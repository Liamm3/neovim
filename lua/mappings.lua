local map = function(key)
  -- get the extra options
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

map {'n', '<S-h>', '<C-w>h<CR>'}
map {'n', '<S-j>', '<C-w>j<CR>'}
map {'n', '<S-k>', '<C-w>k<CR>'}
map {'n', '<S-l>', '<C-w>l<CR>'}
map {'n', '<Tab>', ':bnext<CR>'}
map {'n', '<S-Tab>', ':bprev<CR>'}
