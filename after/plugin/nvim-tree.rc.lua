require("nvim-tree").setup()

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<S-e>', '<Cmd>:NvimTreeToggle<CR>', opts)
