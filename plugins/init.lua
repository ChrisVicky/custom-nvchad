return {
  -- Override lspconfig
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
  -- Img Paste in Markdown
  ["ChrisVicky/img-paste.vim"] = {},
  ["dhruvasagar/vim-table-mode"] = {
    -- Write beautiful table with nvim automatically
    as = "tablemode",
  },
  ["jbyuki/venn.nvim"] = {
    -- Draw Plot with nvim
  },

  -- Override plugin config
  -- ["williamboman/mason.nvim"] = {
  --   override_options = {
  --     ensure_installed = { "html-lsp", "clangd", "rust-analyzer", "cmake" , "python-lsp-server", "cmake-language-server"}
  --   }
  -- },
  -- Dox vim plugin
  ["babaybus/DoxygenToolkit.vim"] = {},
  -- Highlight TODO and NOTE .etc
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  }
}
