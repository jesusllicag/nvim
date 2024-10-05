return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim"
  },
  config = function()
    local on_attach = function(_, bufnr)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr}) -- tooltips con la tecla K (20:00 | LSP)
    end
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        },
      },
    })
  end
}
