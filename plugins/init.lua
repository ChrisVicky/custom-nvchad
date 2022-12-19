return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    ft = { "markdown" },
    config = function()
      require "custom.plugins.markdownPreviewConfig"
    end,
  },
  ["ferrine/md-img-paste.vim"] = {
    as = "mdimgpaste",
  },
  ["dhruvasagar/vim-table-mode"] = {
    -- Write beautiful table with nvim automatically
    as = "tablemode",
  },
  ["jbyuki/venn.nvim"] = {
    -- Draw Plot with nvim
  },

  -- Override plugin config
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "html-lsp", "clangd", "rust-analyzer", "cmake" }
    }
  },
}
