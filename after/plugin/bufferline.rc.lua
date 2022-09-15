local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "buffers",
    --separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#458588',
      bg = '#458588',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#fdf6e3',
      bg = '#282828'
    },
    buffer_selected = {
      fg = '#458588',
      bold = true,
    },
    fill = {
      bg = '#282828'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>:BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>:BufferLineCyclePrev<CR>', {})
