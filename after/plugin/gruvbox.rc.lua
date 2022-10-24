--vim.cmd([[colorscheme gruvbox]])
--[[vim.o.background = "dark"
require("gruvbox").setup({
  contrast = "hard",
  italic = false,
})]]--
--vim.cmd("colorscheme gruvbox")

--[[function colormypencils()
  vim.g.gruvbox_contrast_dark = 'hard'
  vim.g.gruvbox_invert_selection = '0'
  vim.opt.background = "dark"


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

colormypencils()]]--
