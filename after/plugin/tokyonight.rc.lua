vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true

vim.g.tokyonight_colors = {
  fg = "#839496",
  fg_dark = "#586e75",
  fg_gutter = "#073642",
  bg_highlight = "#002b36",
  comment = "#586e75",
  blue = "#268bd2",

    cyan = "#2aa198",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",

  yellow = "#b58900",
  orange = "#cb4b16",
  magenta = "#d33682",
  purple = "#6c71c4",
}

function colormypencils()
  --vim.g.gruvbox_contrast_dark = 'hard'
  --vim.g.gruvbox_invert_selection = '0'
  --vim.opt.background = "dark"


  local hl = function(thing, opts)
    vim.api.nvim_set_hl(0, thing, opts)
  end

  hl("signcolumn", {
    bg = "none",
  })

  hl("colorcolumn", {
    ctermbg = 0,
    bg = "#555555",
  })

  hl("cursorlinenr", {
    bg = "none"
  })

  hl("normal", {
    bg = "none"
  })

  hl("linenr", {
    fg = "#5eacd3"
  })

  hl("netrwdir", {
    fg = "#5eacd3"
  })

end

vim.cmd[[colorscheme tokyonight-night]]

colormypencils()
