return {
  -- Telescope extensions
  {
    "nvim-telescope/telescope-file-browser.nvim",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = 500, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
      },
    },
  },
  -- Multi cursor
  {
    "mg979/vim-visual-multi",
  },

  -- Choose win with <leader>a
  {
    "t9md/vim-choosewin",
    keys = { { "<leader>a", "<cmd>ChooseWin<cr>", desc = "Choose win" } },
  },

  -- JS conde formating
  {
    "heavenshell/vim-jsdoc",
    build = "make install",
    keys = { { "<leader><leader>j", "<cmd>JsDocFormat<cr>", desc = "Js doc format" } },
  },

  -- Emmet for HTML and CSS shortcuts
  {
    "mattn/emmet-vim",
  },

  -- Git commands
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = "Git",
    dependencies = { "tpope/vim-rhubarb" },
  },

  -- Get documentation inside nvim
  {
    "dbeniamine/cheat.sh-vim",
  },
  -- Rest API

  {
    "NTBBloodbath/rest.nvim",
    lazy = true,
    name = "rest",
  },

  -- Lua docs plug

  {
    "nanotee/luv-vimdocs",
    lazy = true,
  },

  {
    "milisims/nvim-luaref",
    lazy = true,
  },

  -- Stylua

  {
    "wesleimp/stylua.nvim",
    lazy = true,
  },

  {
    "p00f/nvim-ts-rainbow",
  },

  {
    {
      "jose-elias-alvarez/null-ls.nvim",
      opts = function()
        local nls = require("null-ls")
        return {
          sources = {
            nls.builtins.formatting.fish_indent,
            nls.builtins.diagnostics.fish,
            nls.builtins.formatting.stylua,
            nls.builtins.formatting.shfmt,
          },
        }
      end,
    },
  },

  {
    "krivahtoo/silicon.nvim",
    build = "./install.sh",
    enabled = false,
    config = function()
      require("silicon").setup({
        theme = "material",
        scale = 2,
        font = "JetBrains Mono",
        line_numbers = true,
        background_color = "#1E1E1E",
        transparent_background = false,
        output = {
          path = "~/Pictures",
        },
        watermark = {
          text = "  @RimuhRimu",
        },
      })
    end,
  },
}
