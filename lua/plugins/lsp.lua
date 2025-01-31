return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        lua_ls = {
          root_dir = require("lspconfig").util.root_pattern("*.lua"),
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = true,
              },
            },
          },
        },
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          analysis = {
            typeCheckingMode = "off",
          },
        },
        tsserver = {
          root_dir = require("lspconfig").util.root_pattern("package.json"),
          single_file_support = false,
          exclude = { "**/api/*", "**/node_modules/*" },
        },
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
          single_file_support = false,
        },
        hls = {
          filetype = { "haskell", "lhaskell", "cabal" },
        },
        dartls = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
          root_dir = require("lspconfig").util.root_pattern("*.dart"),
        },
        kotlin_language_server = {
          -- single_file_support = true,
          root_dir = require("lspconfig").util.root_pattern("*.kt"),
        },
      },
    },
  },
}
