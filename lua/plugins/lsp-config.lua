return {
  -- {
  --   config = function()
  --   end
  -- },
  -- {
  --   config = function()
  --     
  --   end
  -- },
  {
    'williamboman/mason.nvim',
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "biome",
          "tailwindcss",
          "clangd",
        }
      })
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.biome.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.clangd.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
