local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  --sources = {
  --null_ls.builtins.diagnostics.eslint_d.with({
  --diagnostics_format = '[eslint] #{m}\n(#{c})'
  --}),
  --},

  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.format { async = true }<CR>")

      -- format on save
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format { async = true }")
    end
    if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format { async = true }")
      client.server_capabilities.document_formatting = false
      client.server_capabilities.document_range_formatting = false
    end
  end,
})
