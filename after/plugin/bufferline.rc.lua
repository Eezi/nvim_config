local status, bufferline = pcall(require, "bufferline")
if (not status) then return end
bufferline.setup{}
--[[bufferline.setup({
  options = {
    mode = "buffers",
    --separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = false
  },
  highlights = {
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
})]]--

vim.keymap.set('n', '<Tab>', '<Cmd>:BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>:BufferLineCyclePrev<CR>', {})
