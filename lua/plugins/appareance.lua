return {
  -- Required by choose win feature of Neo tree
  {
    "s1n7ax/nvim-window-picker",
    config = function()
      require("window-picker").setup()
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_components_config = {
        icon = {
          folder_empty = "",
          default = "",
        },
        git_status = {
          symbols = {
            added = "",
            deleted = "",
            modified = "",
            renamed = "➜",
            untracked = "★",
            ignored = "◌",
            unstaged = "✗",
            staged = "✓",
            conflict = "",
          },
        },
      },
      filesystem = {
        filteres_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "__pycache__",
          },
        },
      },
      window = {
        mappings = {
          ["o"] = "open",
          ["S"] = "split_with_window_picker",
          ["s"] = "vsplit_with_window_picker",
        },
      },
    },
  },

  {
    "sidebar-nvim/sidebar.nvim",
    enabled = false,
    config = function()
      require("sidebar-nvim").setup({
        disable_default_keybindings = 0,
        bindings = nil,
        open = false,
        side = "left",
        initial_width = 35,
        hide_statusline = false,
        update_interval = 1000,
        sections = { "datetime", "git", "diagnostics" },
        section_separator = { "", "-----", "" },
        section_title_separator = { "" },
        containers = {
          attach_shell = "/bin/sh",
          show_all = true,
          interval = 5000,
        },
        datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
        todos = { ignored_paths = { "~" } },
      })
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "storm" },
  },
}
