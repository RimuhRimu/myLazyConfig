return {
  -- Telescope extensions
  {
    "nvim-telescope/telescope-file-browser.nvim",
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
    lazy = true,
    "heavenshell/vim-jsdoc",
    build = "make install",
    keys = { { "<leader><leader>j", "<cmd>JsDocFormat<cr>", desc = "Js doc format" } },
  },

  -- Emmet for HTML and CSS shortcuts
  {
    "mattn/emmet-vim",
    lazy = true,
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
    lazy = true,
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
}
