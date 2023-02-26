-- Configuration on LSP Service

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local present, lspconfig = pcall(require, "lspconfig")
if not present then
  return
end

-- Available servers (Alias): https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
--
local servers = {
  "clangd",                 -- C++
  "html",                   -- html
  "cmake",                  -- cmake_language_server
  "texlab",                 -- LaTeX
  "ltex",                   -- ltex-ls 好像是个 grammar
  "jedi_language_server",   -- Python LSP
  "rust_analyzer",          -- Rust
  "verible",                -- System Verilog
  "dockerls",               -- Docker language server
  "asm_lsp",                -- Assembly (GAS/NASM/GO)
  "jdtls",                  -- Java
  "bashls",                 -- Bash
  "grammarly",              -- grammarly: 字典、语法等
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
