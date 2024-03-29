local null_ls = require "null-ls"

local b = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "yaml",
      "json",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
  }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  b.diagnostics.buf,
  b.formatting.buf,

  -- b.diagnostics.tsc,
  b.diagnostics.editorconfig_checker,

  b.formatting.gofmt,
  b.formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
          --[[ vim.lsp.buf.formatting_sync() ]]
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
