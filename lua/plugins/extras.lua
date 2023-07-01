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
    "ap/vim-css-color",
  },

  {
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup({
        -- General options
        auto_update = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
        neovim_image_text = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
        main_image = "file", -- Main image display (either "neovim" or "file")
        debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
        enable_line_number = false, -- Displays the current line number instead of the current project
        blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
        buttons = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
        file_assets = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
        show_time = true, -- Show the timer

        -- Rich Presence text options
        editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
        file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
        git_commit_text = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
        plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
        workspace_text = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
        line_number_text = "Line %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
      })
    end,
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
