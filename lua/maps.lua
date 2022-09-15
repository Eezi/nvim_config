local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Quickly save the current buffer or all buffers.
map('n', '<leader>w', ':update<CR>')
map('n', '<leader>W', ':wall<CR>')

-- Move to the next/previous buffer
map('n', '<leader>[', ':bp<CR>')
map('n', '<leader>]', ':bn<CR>')
